/* ----------------------------------------------------------------------
 * Steirische Wort Uhr
 * ----------------------------------------------------------------------
 * Version: 3 / 01.11.2020
 * Target: Arduino Nano, ATmega328 
 * Copyright (C) 2020 by bunnyology
 * Author: Thomas Hasiba
 * 
 */

// a high/low cycle:
volatile unsigned long t0HI, t0LO;
volatile int tHI, tLO;

const int tolerance = 50;     // time tolerance of DCF signal in ms

volatile int rcvBIT;          // next index of bit to read in current packet (or -1 if stream is not synchronized)
volatile unsigned int tc;     // bits 20-35 of current packet

// The following variables are used to hand over a recevied time from the interrupt service
// routine to the main loop.
volatile unsigned int timecode;           // "tc" is copied into here, when 35th bit is read
volatile unsigned long timecode_millis;   // millis when "timecode" became valid (second 36 of minute)

// the actual time is stored here (once the time is set)
int tt_hour, tt_min, tt_sec, tt_ms;       // "readable" time of clock
unsigned long tt_millis;                  // time of last clock update

bool modeSync;                // when the time is set, this becomes "true"
bool modeSetup;               // "true", when the clock is in setup mode

const unsigned long LOOP_DELAY = 5;

int keyDown;                  // counts the time, the key is pressed

const int KEYDOWN_ENTER = 3000 / LOOP_DELAY;
const int KEYDOWN_RESET = 6000 / LOOP_DELAY;
const int KEYDOWN_CLICK = 1000 / LOOP_DELAY;

// this pwm pattern is controlling the light brightness by swithcing on/off the lights according to the pattern
unsigned int pwmMode = 0;
unsigned int pwmIdx = 0;
bool pwmPattern[6];

const bool PWM_PATTERN_0[] = { true, true, true, true, true, true };
const bool PWM_PATTERN_1[] = { true, true, false, true, true, false };
const bool PWM_PATTERN_2[] = { true, false, true, false, true, false };
const bool PWM_PATTERN_3[] = { true, false, false, true, false, false };


const int PIN_DCF77 = 2;      // pin 2 is connected to DCF77 output

// The array "pattern" contains the pattern for PORTD and PORTB output for cobinded
// minute and hour output.
// |                     PORTB                     |                    PORTD                      |
// +-----+-----+-----+-----+-----+-----+-----+-----|-----+-----+-----+-----+-----+-----+-----+-----+
// | 15  | 14  | 13  | 12  | 11  | 10  |  9  |  8  |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
// |  ~  |  ~  |  -  |  -  |  -  |  +  |  +  |  +  |  +  | OVR | SOON| QUTR| HALF|  ~  |  ~  |  ~  |
// |     |     |5,9, |2,4, |1,3, |1,2, |3,4, |6,8, |7,10,|     |     |     |     |     |     |     |
// |     |     |11,12|7,8  |6,10 |  11 |  5, |  9, |  12 |     |     |     |     |     |     |     |
// +-----+-----+-----+-----+-----+-----+-----+-----|-----+-----+-----+-----+-----+-----+-----+-----+
// D0..7 in PORTD, D8..13 in PORTB

const unsigned int pattern[] =
  {
    (B00011000*256)+B10000000,      // 0h/12h ~ ES IS ...
    (B00110100*256)+B01000000,      // 1h/13h ~ ES IS "SCHO ... VUABEI"
    (B00101100*256)+B00111001,      // 2h/14h ~ ES IS "GLEI VIERTL ...(+1)"
    (B00110010*256)+B00011001,      // 3h/15h ~ ES IS "VIERTL ...(+1)"
    (B00101010*256)+B01011001,      // 4h/16h ~ ES IS "SCHO VIERTL ...(+1) VUABEI"
    (B00011010*256)+B00110001,      // 5h/17h ~ ES IS "GLEI HOLBA ...(+1)"
    (B00110001*256)+B00010001,      // 6h/18h ~ ES IS "HOLBA ...(+1)"
    (B00101000*256)+B11010001,      // 7h/19h ~ ES IS "SCHO HOLBA ...(+1) VUABEI"
    (B00101001*256)+B00101001,      // 8h/20h ~ ES IS "GLEI DREIVIERTL ...(+1)"
    (B00011001*256)+B00001001,      // 9h/21h ~ ES IS "DREIVIERTL ...(+1)"
    (B00110000*256)+B11001001,      // 10h/22h ~ ES IS "SCHO DREIVIERTL ...(+1) VUABEI"
    (B00011100*256)+B00100001       // 11h/23h ~ ES IS "GLEI ...(+1)"
  };

const unsigned int MASK_MINUTE =  (B00000000*256)+B01111000;
const unsigned int MASK_HOUR =    (B00111111*256)+B10000000;
const unsigned int MASK_INCDAY =  (B00000000*256)+B00000001;

// some special display commands...
const unsigned int CMD_OFF =      (B00111000*256)+B00000000;
const unsigned int CMD_WAIT =     (B00111000*256)+B00100000;    // "WAIT" display (blinks, when not sync'd)


void setup() {

  // setup all LED outputs
  pinMode( 3, OUTPUT );
  pinMode( 4, OUTPUT );
  pinMode( 5, OUTPUT );
  pinMode( 6, OUTPUT );
  pinMode( 7, OUTPUT );
  pinMode( 8, OUTPUT );
  pinMode( 9, OUTPUT );
  pinMode( 10, OUTPUT );
  pinMode( 11, OUTPUT );
  pinMode( 12, OUTPUT );
  pinMode( 13, OUTPUT );

  pinMode( A0, OUTPUT );
 
  // reset ALL OFF
  digitalWrite( A0, HIGH );
  setLightbox( CMD_OFF );

  // set input pin
  pinMode( A1, INPUT_PULLUP );

  // make visual check of Lightbox
  if( digitalRead( A1 ) == LOW ) {
    // key pressed during start-up -> run self check
    selfcheck();
  }

  // setup the DCF77 input
  t0HI = t0LO = 0;
  tHI = tLO = 0;
  rcvBIT = -1;
  timecode = 0;
  
  pinMode( PIN_DCF77, INPUT );    // the Pollin DCF77 does not work with INPUT_PULLUP
  attachInterrupt( digitalPinToInterrupt( PIN_DCF77 ), dcf77_isr, CHANGE );

  setPWMMode( 0 );
  modeSync = false;
  modeSetup = false;
}

void loop() {

  if( keyDown < 0 ) keyDown = 0;
  if( digitalRead( A1 ) == LOW ) {
    keyDown++;
  } else if( keyDown > 0 ) {
    keyDown = -keyDown;
  }

  if( modeSetup ) {

    if( keyDown == KEYDOWN_ENTER ) {
      // end set-up mode
      modeSetup = false;
      keyDown = KEYDOWN_CLICK; // set to KEYDOWN_CLICK to avoid triggering another click event
      modeSync = true;
      digitalWrite( A0, HIGH );
      tt_millis = millis();
      delay( LOOP_DELAY );
      return;
      
    } else if( keyDown > KEYDOWN_RESET ) {
      // long press -> reset
      keyDown = 0;
      modeSetup = false;
      modeSync = false;
      delay( LOOP_DELAY );
      return;
    }

    if(( keyDown < 0 ) && ( keyDown > -KEYDOWN_CLICK )) {
      incFiveMinutes();
    }

    // let "ES IS" blink
    if(( millis() % 500 ) < 250 ) digitalWrite( A0, HIGH ); else digitalWrite( A0, LOW );
    updateLightbox();

    delay( LOOP_DELAY );
    return;

  } else {
    // not in set-up mode yet
    if( keyDown > KEYDOWN_ENTER ) {
      // engage set-up mode
      tt_sec = 0;
      tt_min = ( tt_min / 5 ) * 5;
      modeSetup = true;
      delay( LOOP_DELAY );
      return;
    } else if(( keyDown < 0 ) && ( keyDown > -KEYDOWN_CLICK )) {
      // key clicked -> change brightness
      setPWMMode( ++pwmMode );
    }
  }

  
  
  if( timecode != 0 ) {
    // synchronization event

    // check validity of time packet
    if(( bitRead(timecode,0) == 0 )
      || (( bitRead(timecode,1)
           +bitRead(timecode,2)
           +bitRead(timecode,3)
           +bitRead(timecode,4)
           +bitRead(timecode,5)
           +bitRead(timecode,6)
           +bitRead(timecode,7)
           +bitRead(timecode,8)) % 2 == 1 )
      || (( bitRead(timecode,9)
           +bitRead(timecode,10)
           +bitRead(timecode,11)
           +bitRead(timecode,12)
           +bitRead(timecode,13)
           +bitRead(timecode,14)
           +bitRead(timecode,15)) % 2 == 1 )) {
      // time packet is invalid -> ignore
      timecode = 0;
      return;        
    }

    // set time
    int _min = bitRead(timecode,1)
        + 2*bitRead(timecode,2)
        + 4*bitRead(timecode,3)
        + 8*bitRead(timecode,4)
        + 10*bitRead(timecode,5)
        + 20*bitRead(timecode,6)
        + 40*bitRead(timecode,7);
    int _hour = bitRead(timecode,9)
        + 2*bitRead(timecode,10)
        + 4*bitRead(timecode,11)
        + 8*bitRead(timecode,12)
        + 10*bitRead(timecode,13)
        + 20*bitRead(timecode,14);

    // sanity check the time
    if(( _min > 59 ) || ( _hour > 23 )) {
      // time os nonsense -> ignore and reset package
      timecode = 0;
      return;
    }

    // the time seems to be valid -> set time of clock, now
    tt_hour = _hour;
    tt_min = _min;
    tt_sec = 36;      // we have still not read the full packet, we are in second 36 of previous minute
    tt_ms = 0;
    tt_millis = timecode_millis;

    // the minute decoded has not yet started; hence, set time to the minute before...
    decMinute();

    timecode = 0;
    modeSync = true;
    
    // show time of clock now
    updateLightboxPWM();

  } else if( modeSync ) {
    // time is sync'd
    
    // update time
    unsigned long ts = millis();
    // check for overflow
    int delta_ms = 0;
    if( ts < tt_millis ) {
      // handle timer overflow...
      delta_ms = 4294967295ul - tt_millis + ts + 1;
    } else {
      delta_ms = ts - tt_millis;      
    }

    if( tt_ms + delta_ms < 1000 ) {
      // does not increase seconds...
      tt_ms += delta_ms;
      tt_millis = ts;
      
    } else {
      delta_ms -= 1000 - tt_ms;
      tt_ms = 0;
      incSecond();
      while( delta_ms >= 1000 ) {
        delta_ms -= 1000;
        incSecond();
      }
      tt_ms += delta_ms;
      tt_millis = ts;
    }
    
    // time has probably changed -> update display
    updateLightboxPWM();

  } else {
    // not sync'd yet
    digitalWrite( A0, LOW );
    
    if( rcvBIT < 0 ) {
      if(( millis() % 2000 ) < 1000 ) setLightbox( CMD_OFF ); else setLightbox( CMD_WAIT );
    } else if( rcvBIT >= 20 ) {
      if(( millis() % 500 ) < 250 ) setLightbox( CMD_OFF ); else setLightbox( CMD_WAIT );
    } else {
      if(( millis() % 1000 ) < 500 ) setLightbox( CMD_OFF ); else setLightbox( CMD_WAIT );
    }
  }
  
  delay( LOOP_DELAY );
}


/** 
 * DCF77 Interrupt Handler
 */
void dcf77_isr() {
  long ts = millis();
  int state = digitalRead( PIN_DCF77 );
  if( state == LOW ) {
    // HIGH->LOW change - capture AMP-modulation spike
    tHI = ts - t0HI;
    t0LO = ts;
    return;
  }
  // LOW->HIGH change - capture carrier
  tLO = ts - t0LO;
  t0HI = ts;

  if( rcvBIT < 0 ) {
    // not sync'd - check for sync'ing pause (1800 or 1900ms)
    if(( tLO > 1800-tolerance ) && ( tLO < 1900+tolerance )) {
      // stream synchronization
      rcvBIT = 0;
      tc = 0;
    }
    return;
  }

  // try to match timings and identify bit value
  if(( tLO > 800-tolerance ) && ( tLO < 800+tolerance )) {
    // received "1"
    if(( rcvBIT >= 20 ) && ( rcvBIT < 36 )) {
      // time information
      bitSet( tc, rcvBIT-20 );
    }
    rcvBIT++;
    
  } else if(( tLO > 900-tolerance ) && ( tLO < 900+tolerance )) {
    // received "0"
    rcvBIT++;
    
  } else {
    // error - reset stream sync
    rcvBIT = -1;
    return;
  }
  if( rcvBIT == 36 ) {
    // time information is ready -> notify
    timecode_millis = ts;
    timecode = tc;
    
  } else if( rcvBIT == 59 ) {
    // packet finished 
    rcvBIT = -1;
  }
}

/**
 * incSecond
 * Increases the time of clock by one second, handling all overruns
 */
void incSecond() {
  tt_sec++;
  
  // check for second overflow
  if( tt_sec == 60 ) {
    tt_sec = 0;
    tt_min++;

    // check for minute overflow
    if( tt_min == 60 ) {
      tt_hour++;
      tt_min = 0;

      // check for hour overflow
      if( tt_hour == 24 ) tt_hour = 0;
    }
  }
}

/**
 * decMinute
 * Decreases the time of clock by one minute, handling all overruns.
 */
void decMinute() {
  if( tt_min > 0 ) {
    // no underrun
    tt_min--;
    return;
  }
  // handle minute underrun
  tt_min = 59;
  if( tt_hour > 0 ) {
    // no hour underron
    tt_hour--;
    return;
  }
  tt_hour = 23;
  return;
}

void incMinute() {
  tt_min++;

  // check for minute overflow
  if( tt_min == 60 ) {
    tt_hour++;
    tt_min = 0;

    // check for hour overflow
    if( tt_hour == 24 ) tt_hour = 0;
  }
}

void incFiveMinutes() {
  incMinute();
  incMinute();
  incMinute();
  incMinute();
  incMinute();
}

void setLightbox( unsigned int cmd ) {
  PORTB = highByte(cmd);
  PORTD = lowByte(cmd);
}

void updateLightbox() {
  int hour = tt_hour;
  int minute = tt_min;

  // once again, check time to avoid showing some ridiculous time
  if(( minute < 0 ) || ( minute > 59 ) || ( hour < 0 ) || ( hour > 23 )) {
    // invalid time
    setLightbox( CMD_OFF );
    return;
  }

  unsigned int cmd = pattern[ minute / 5 ];
  if(( cmd & MASK_INCDAY ) == 1 ) {
    hour++;
    if( hour == 24 ) hour = 0;
  }
  if( hour > 11 ) hour -= 12;
  cmd &= MASK_MINUTE;
  cmd |= pattern[hour] & MASK_HOUR;

  setLightbox( cmd );
}

void updateLightboxPWM() {
    pwmIdx++;
    if ( pwmIdx >=sizeof(pwmPattern) ) pwmIdx = 0;
    if( pwmPattern[pwmIdx] ) {
      digitalWrite( A0, HIGH );
      updateLightbox();
    } else {
      digitalWrite( A0, LOW );
      setLightbox( CMD_OFF );
    }
}

void setPWMMode( unsigned int mode ) {
  if( mode > 3 ) mode = 0;
  pwmMode = mode;
  switch( pwmMode ) {
    case 0 : for( int i = 0; i < sizeof(pwmPattern); i++ ) pwmPattern[i] = PWM_PATTERN_0[i]; break;
    case 1 : for( int i = 0; i < sizeof(pwmPattern); i++ ) pwmPattern[i] = PWM_PATTERN_1[i]; break;
    case 2 : for( int i = 0; i < sizeof(pwmPattern); i++ ) pwmPattern[i] = PWM_PATTERN_2[i]; break;
    case 3 : for( int i = 0; i < sizeof(pwmPattern); i++ ) pwmPattern[i] = PWM_PATTERN_3[i]; break;
  }
  pwmIdx = 0;
}

/**
 * selfcheck
 * Shows all possible times of a (half) day (144 combination) for
 * 250ms each. Total time for selfcheck = 12*12*250ms = 36 sec.
 */
void selfcheck() {

  int blnk = 0;
  digitalWrite( A0, HIGH );

  for( tt_hour = 0; tt_hour < 12; tt_hour++ ) {
    for( tt_min = 0; tt_min < 60; tt_min += 5 ) {
      updateLightbox();

      blnk++;
      if( blnk == 4 ) digitalWrite( A0, LOW );
      else if( blnk == 8 ) {
        digitalWrite( A0, HIGH );
        blnk = 0;
      }
      
      delay(100);
    }
  }

  tt_hour = 0;
  tt_min = 0;
  
  digitalWrite( A0, LOW );

}
