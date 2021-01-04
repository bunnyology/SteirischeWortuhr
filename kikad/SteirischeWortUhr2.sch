EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x ArduinoNanoV3
U 1 1 5F82C6ED
P 9600 4850
F 0 "ArduinoNanoV3" H 9600 3761 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 9600 3670 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 9600 4850 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 9600 4850 50  0001 C CNN
	1    9600 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F831475
P 9600 6100
F 0 "#PWR0101" H 9600 5850 50  0001 C CNN
F 1 "GND" H 9605 5927 50  0000 C CNN
F 2 "" H 9600 6100 50  0001 C CNN
F 3 "" H 9600 6100 50  0001 C CNN
	1    9600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5850 9600 5950
Wire Wire Line
	9700 5850 9700 5950
Wire Wire Line
	9700 5950 9600 5950
Connection ~ 9600 5950
Wire Wire Line
	9600 5950 9600 6100
$Comp
L power:+3V3 #PWR0102
U 1 1 5F831C0A
P 9700 3750
F 0 "#PWR0102" H 9700 3600 50  0001 C CNN
F 1 "+3V3" H 9650 3900 50  0000 C CNN
F 2 "" H 9700 3750 50  0001 C CNN
F 3 "" H 9700 3750 50  0001 C CNN
	1    9700 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F8322F7
P 9800 3700
F 0 "#PWR0103" H 9800 3550 50  0001 C CNN
F 1 "+5V" H 9815 3873 50  0000 C CNN
F 2 "" H 9800 3700 50  0001 C CNN
F 3 "" H 9800 3700 50  0001 C CNN
	1    9800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3750 9700 3850
$Comp
L LED:CQY99 LED_ESIS_1
U 1 1 5F836051
P 750 1550
F 0 "LED_ESIS_1" V 746 1470 50  0000 R CNN
F 1 "00430340/1" V 655 1470 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 750 1725 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 700 1550 50  0001 C CNN
	1    750  1550
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ESIS_2
U 1 1 5F838C04
P 1500 1550
F 0 "LED_ESIS_2" V 1496 1470 50  0000 R CNN
F 1 "00430340/1" V 1405 1470 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 1500 1725 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 1450 1550 50  0001 C CNN
	1    1500 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F839686
P 1500 1150
F 0 "R1" V 1293 1150 50  0000 C CNN
F 1 "220" V 1384 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1430 1150 50  0001 C CNN
F 3 "~" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1300 1500 1350
Wire Wire Line
	1500 1350 1500 1450
Wire Wire Line
	750  1450 750  1350
Wire Wire Line
	750  1350 1500 1350
Connection ~ 1500 1350
$Comp
L power:GND #PWR0104
U 1 1 5F83AADB
P 1500 1850
F 0 "#PWR0104" H 1500 1600 50  0001 C CNN
F 1 "GND" H 1505 1677 50  0000 C CNN
F 2 "" H 1500 1850 50  0001 C CNN
F 3 "" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1750 1500 1800
Wire Wire Line
	750  1750 750  1800
Wire Wire Line
	750  1800 1500 1800
Connection ~ 1500 1800
Wire Wire Line
	1500 1800 1500 1850
$Comp
L LED:CQY99 LED_VIERTL_1
U 1 1 5F83FDAC
P 2350 1550
F 0 "LED_VIERTL_1" V 2346 1471 50  0000 R CNN
F 1 "00430340/1" V 2255 1471 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 2350 1725 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 2300 1550 50  0001 C CNN
	1    2350 1550
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_VIERTL_2
U 1 1 5F8409C2
P 3100 1550
F 0 "LED_VIERTL_2" V 3096 1471 50  0000 R CNN
F 1 "00430340/1" V 3005 1471 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3100 1725 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3050 1550 50  0001 C CNN
	1    3100 1550
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_DREI4TL_1
U 1 1 5F842E79
P 6100 1650
F 0 "LED_DREI4TL_1" V 6096 1570 50  0000 R CNN
F 1 "00430340/1" V 6005 1570 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 6100 1825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 6050 1650 50  0001 C CNN
	1    6100 1650
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_DREI4TL_2
U 1 1 5F843476
P 6850 1650
F 0 "LED_DREI4TL_2" V 6846 1570 50  0000 R CNN
F 1 "00430340/1" V 6755 1570 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 6850 1825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 6800 1650 50  0001 C CNN
	1    6850 1650
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_HOLBA_2
U 1 1 5F8425F1
P 5250 1750
F 0 "LED_HOLBA_2" V 5154 1902 50  0000 L CNN
F 1 "00430340/1" V 5245 1902 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 5250 1925 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 5200 1750 50  0001 C CNN
	1    5250 1750
	0    1    1    0   
$EndComp
$Comp
L LED:CQY99 LED_HOLBA_1
U 1 1 5F841DEA
P 4550 1750
F 0 "LED_HOLBA_1" V 4450 2400 50  0000 R CNN
F 1 "00430340/1" V 4550 2400 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 4550 1925 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 4500 1750 50  0001 C CNN
	1    4550 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F84B7C7
P 7200 1400
F 0 "R3" V 6993 1400 50  0000 C CNN
F 1 "220" V 7084 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7130 1400 50  0001 C CNN
F 3 "~" H 7200 1400 50  0001 C CNN
	1    7200 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1400 6850 1400
Wire Wire Line
	6850 1400 6850 1550
Wire Wire Line
	6850 1400 6100 1400
Wire Wire Line
	6100 1400 6100 1550
Connection ~ 6850 1400
Wire Wire Line
	6100 1400 5250 1400
Wire Wire Line
	5250 1400 5250 1550
Connection ~ 6100 1400
Connection ~ 5250 1400
Wire Wire Line
	2350 1750 2350 1800
Wire Wire Line
	2350 1800 1500 1800
Wire Wire Line
	2350 1800 3100 1800
Wire Wire Line
	3100 1800 3100 1750
Connection ~ 2350 1800
Wire Wire Line
	3100 1800 3850 1800
Wire Wire Line
	3850 1800 3850 1750
Connection ~ 3100 1800
Wire Wire Line
	7350 1400 7750 1400
Wire Wire Line
	6850 1850 6850 2000
Wire Wire Line
	6850 2000 7650 2000
Wire Wire Line
	6100 1850 6100 2000
Wire Wire Line
	6100 2000 6850 2000
Connection ~ 6850 2000
Wire Wire Line
	5250 1850 5250 2000
Wire Wire Line
	5250 2000 6100 2000
Connection ~ 6100 2000
Connection ~ 5250 2000
$Comp
L LED:CQY99 LED_VIERTL_3
U 1 1 5F841400
P 3850 1550
F 0 "LED_VIERTL_3" V 3846 1471 50  0000 R CNN
F 1 "00430340/1" V 3755 1471 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3850 1725 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3800 1550 50  0001 C CNN
	1    3850 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 1550 4550 1400
Wire Wire Line
	4550 1400 5250 1400
Wire Wire Line
	4550 1850 4550 2000
Wire Wire Line
	4550 2000 5250 2000
$Comp
L LED:CQY99 LED_GLEI_1
U 1 1 5F8438EB
P 750 2650
F 0 "LED_GLEI_1" V 746 2571 50  0000 R CNN
F 1 "00430340/1" V 655 2571 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 750 2825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 700 2650 50  0001 C CNN
	1    750  2650
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_GLEI_2
U 1 1 5F844961
P 1500 2650
F 0 "LED_GLEI_2" V 1496 2571 50  0000 R CNN
F 1 "00430340/1" V 1405 2571 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 1500 2825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 1450 2650 50  0001 C CNN
	1    1500 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F845ACC
P 1900 2250
F 0 "R4" V 1693 2250 50  0000 C CNN
F 1 "220" V 1784 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1830 2250 50  0001 C CNN
F 3 "~" H 1900 2250 50  0001 C CNN
	1    1900 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F847243
P 1500 3050
F 0 "#PWR0105" H 1500 2800 50  0001 C CNN
F 1 "GND" H 1505 2877 50  0000 C CNN
F 2 "" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2850 1500 2950
Wire Wire Line
	750  2850 750  2950
Wire Wire Line
	750  2950 1500 2950
Connection ~ 1500 2950
Wire Wire Line
	1500 2950 1500 3050
Wire Wire Line
	1750 2250 1500 2250
Wire Wire Line
	1500 2250 1500 2550
Wire Wire Line
	750  2550 750  2250
Wire Wire Line
	750  2250 1500 2250
Connection ~ 1500 2250
Wire Wire Line
	2050 2250 7550 2250
$Comp
L LED:CQY99 LED_SCHO_1
U 1 1 5F84F4CE
P 2350 2650
F 0 "LED_SCHO_1" V 2346 2571 50  0000 R CNN
F 1 "00430340/1" V 2255 2571 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 2350 2825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 2300 2650 50  0001 C CNN
	1    2350 2650
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_SCHO_2
U 1 1 5F84FF7A
P 3150 2650
F 0 "LED_SCHO_2" V 3146 2571 50  0000 R CNN
F 1 "00430340/1" V 3055 2571 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3150 2825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3100 2650 50  0001 C CNN
	1    3150 2650
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_VUABEI_1
U 1 1 5F850C1B
P 3900 2650
F 0 "LED_VUABEI_1" V 3896 2571 50  0000 R CNN
F 1 "00430340/1" V 3805 2571 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3900 2825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3850 2650 50  0001 C CNN
	1    3900 2650
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_VUABEI_2
U 1 1 5F8515B3
P 4650 2650
F 0 "LED_VUABEI_2" V 4646 2571 50  0000 R CNN
F 1 "00430340/1" V 4555 2571 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 4650 2825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 4600 2650 50  0001 C CNN
	1    4650 2650
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_VUABEI_3
U 1 1 5F851FF1
P 5350 2650
F 0 "LED_VUABEI_3" V 5346 2571 50  0000 R CNN
F 1 "00430340/1" V 5255 2571 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 5350 2825 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 5300 2650 50  0001 C CNN
	1    5350 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 2850 2350 2950
Wire Wire Line
	2350 2950 1500 2950
Wire Wire Line
	3150 2850 3150 2950
Wire Wire Line
	3150 2950 2350 2950
Connection ~ 2350 2950
Wire Wire Line
	3900 2850 3900 2950
Wire Wire Line
	3900 2950 3150 2950
Connection ~ 3150 2950
Wire Wire Line
	4650 2850 4650 2950
Wire Wire Line
	4650 2950 3900 2950
Connection ~ 3900 2950
Wire Wire Line
	5350 2850 5350 2950
Wire Wire Line
	5350 2950 4650 2950
Connection ~ 4650 2950
$Comp
L Device:R R5
U 1 1 5F85BDE5
P 5650 2400
F 0 "R5" V 5443 2400 50  0000 C CNN
F 1 "100" V 5534 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5580 2400 50  0001 C CNN
F 3 "~" H 5650 2400 50  0001 C CNN
	1    5650 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 2400 5350 2400
Wire Wire Line
	2350 2400 2350 2550
Wire Wire Line
	3150 2550 3150 2400
Connection ~ 3150 2400
Wire Wire Line
	3150 2400 2350 2400
Wire Wire Line
	3900 2550 3900 2400
Connection ~ 3900 2400
Wire Wire Line
	3900 2400 3150 2400
Wire Wire Line
	4650 2550 4650 2400
Connection ~ 4650 2400
Wire Wire Line
	4650 2400 3900 2400
Wire Wire Line
	5350 2550 5350 2400
Connection ~ 5350 2400
Wire Wire Line
	5350 2400 4650 2400
Wire Wire Line
	5800 2400 7450 2400
$Comp
L Device:R R2
U 1 1 5F849D95
P 7200 1050
F 0 "R2" V 6993 1050 50  0000 C CNN
F 1 "150" V 7084 1050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7130 1050 50  0001 C CNN
F 3 "~" H 7200 1050 50  0001 C CNN
	1    7200 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1050 3850 1050
Connection ~ 3850 1050
Wire Wire Line
	3850 1050 3850 1450
Wire Wire Line
	3850 1050 3100 1050
Connection ~ 3100 1050
Wire Wire Line
	3100 1050 3100 1450
Wire Wire Line
	3100 1050 2350 1050
Wire Wire Line
	2350 1050 2350 1450
$Comp
L LED:CQY99 LED_ANS_1
U 1 1 5F8C82D1
P 900 5800
F 0 "LED_ANS_1" V 896 5721 50  0000 R CNN
F 1 "00430340/1" V 805 5721 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 900 5975 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 850 5800 50  0001 C CNN
	1    900  5800
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ZWA_1
U 1 1 5F8D0001
P 2450 5800
F 0 "LED_ZWA_1" V 2446 5721 50  0000 R CNN
F 1 "00430340/1" V 2355 5721 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 2450 5975 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 2400 5800 50  0001 C CNN
	1    2450 5800
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ÖFE_1
U 1 1 5F8D14C6
P 3950 5800
F 0 "LED_ÖFE_1" V 3946 5721 50  0000 R CNN
F 1 "00430340/1" V 3855 5721 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3950 5975 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3900 5800 50  0001 C CNN
	1    3950 5800
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_DREI_1
U 1 1 5F8D83DB
P 900 5100
F 0 "LED_DREI_1" V 896 5021 50  0000 R CNN
F 1 "00430340/1" V 805 5021 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 900 5275 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 850 5100 50  0001 C CNN
	1    900  5100
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_DREI_2
U 1 1 5F8D8FAF
P 1600 5100
F 0 "LED_DREI_2" V 1596 5021 50  0000 R CNN
F 1 "00430340/1" V 1505 5021 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 1600 5275 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 1550 5100 50  0001 C CNN
	1    1600 5100
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_VIERE_1
U 1 1 5F8D9AC0
P 2450 5100
F 0 "LED_VIERE_1" V 2446 5021 50  0000 R CNN
F 1 "00430340/1" V 2355 5021 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 2450 5275 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 2400 5100 50  0001 C CNN
	1    2450 5100
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_VIERE_2
U 1 1 5F8DB529
P 3150 5100
F 0 "LED_VIERE_2" V 3146 5021 50  0000 R CNN
F 1 "00430340/1" V 3055 5021 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3150 5275 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3100 5100 50  0001 C CNN
	1    3150 5100
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_FÜNFE_1
U 1 1 5F8DBF2E
P 3950 5100
F 0 "LED_FÜNFE_1" V 3946 5021 50  0000 R CNN
F 1 "00430340/1" V 3855 5021 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3950 5275 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3900 5100 50  0001 C CNN
	1    3950 5100
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_FÜNFE_2
U 1 1 5F8DD870
P 4650 5100
F 0 "LED_FÜNFE_2" V 4646 5021 50  0000 R CNN
F 1 "00430340/1" V 4555 5021 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 4650 5275 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 4600 5100 50  0001 C CNN
	1    4650 5100
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_SEXE_1
U 1 1 5F8DEB67
P 900 4400
F 0 "LED_SEXE_1" V 896 4321 50  0000 R CNN
F 1 "00430340/1" V 805 4321 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 900 4575 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 850 4400 50  0001 C CNN
	1    900  4400
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_SEXE_2
U 1 1 5F8E28D3
P 1600 4400
F 0 "LED_SEXE_2" V 1596 4321 50  0000 R CNN
F 1 "00430340/1" V 1505 4321 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 1600 4575 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 1550 4400 50  0001 C CNN
	1    1600 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_OCHTE_1
U 1 1 5F8E358B
P 2450 4400
F 0 "LED_OCHTE_1" V 2446 4321 50  0000 R CNN
F 1 "00430340/1" V 2355 4321 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 2450 4575 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 2400 4400 50  0001 C CNN
	1    2450 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_OCHTE_2
U 1 1 5F8E3FB9
P 3150 4400
F 0 "LED_OCHTE_2" V 3146 4321 50  0000 R CNN
F 1 "00430340/1" V 3055 4321 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3150 4575 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3100 4400 50  0001 C CNN
	1    3150 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_NAINE_1
U 1 1 5F8E4B78
P 3950 4400
F 0 "LED_NAINE_1" V 3946 4321 50  0000 R CNN
F 1 "00430340/1" V 3855 4321 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3950 4575 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3900 4400 50  0001 C CNN
	1    3950 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_NAINE_2
U 1 1 5F8E6872
P 4650 4400
F 0 "LED_NAINE_2" V 4646 4321 50  0000 R CNN
F 1 "00430340/1" V 4555 4321 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 4650 4575 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 4600 4400 50  0001 C CNN
	1    4650 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_SIEBN_1
U 1 1 5F8E7ED9
P 2450 3700
F 0 "LED_SIEBN_1" V 2446 3621 50  0000 R CNN
F 1 "00430340/1" V 2355 3621 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 2450 3875 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 2400 3700 50  0001 C CNN
	1    2450 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_SIEBN_2
U 1 1 5F8EA63C
P 3150 3700
F 0 "LED_SIEBN_2" V 3146 3621 50  0000 R CNN
F 1 "00430340/1" V 3055 3621 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3150 3875 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3100 3700 50  0001 C CNN
	1    3150 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ZEHNE_1
U 1 1 5F8EB538
P 900 3700
F 0 "LED_ZEHNE_1" V 896 3621 50  0000 R CNN
F 1 "00430340/1" V 805 3621 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 900 3875 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 850 3700 50  0001 C CNN
	1    900  3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ZEHNE_2
U 1 1 5F8EFC81
P 1600 3700
F 0 "LED_ZEHNE_2" V 1596 3621 50  0000 R CNN
F 1 "00430340/1" V 1505 3621 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 1600 3875 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 1550 3700 50  0001 C CNN
	1    1600 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ZWÖLFE_1
U 1 1 5F8F1494
P 3950 3700
F 0 "LED_ZWÖLFE_1" V 3946 3621 50  0000 R CNN
F 1 "00430340/1" V 3855 3621 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3950 3875 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 3900 3700 50  0001 C CNN
	1    3950 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ZWÖLFE_2
U 1 1 5F8F2D2E
P 4650 3700
F 0 "LED_ZWÖLFE_2" V 4646 3621 50  0000 R CNN
F 1 "00430340/1" V 4555 3621 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 4650 3875 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 4600 3700 50  0001 C CNN
	1    4650 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:CQY99 LED_ZWÖLFE_3
U 1 1 5F8F3D73
P 5350 3700
F 0 "LED_ZWÖLFE_3" V 5346 3621 50  0000 R CNN
F 1 "00430340/1" V 5255 3621 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 5350 3875 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 5300 3700 50  0001 C CNN
	1    5350 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5F8F5267
P 5450 5600
F 0 "R10" V 5243 5600 50  0000 C CNN
F 1 "330" V 5334 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5380 5600 50  0001 C CNN
F 3 "~" H 5450 5600 50  0001 C CNN
	1    5450 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F8F63B1
P 5450 4900
F 0 "R9" V 5243 4900 50  0000 C CNN
F 1 "220" V 5334 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5380 4900 50  0001 C CNN
F 3 "~" H 5450 4900 50  0001 C CNN
	1    5450 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F8F6E62
P 5450 4200
F 0 "R8" V 5243 4200 50  0000 C CNN
F 1 "220" V 5334 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5380 4200 50  0001 C CNN
F 3 "~" H 5450 4200 50  0001 C CNN
	1    5450 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F8F7B5C
P 5650 3500
F 0 "R7" V 5443 3500 50  0000 C CNN
F 1 "150" V 5534 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5580 3500 50  0001 C CNN
F 3 "~" H 5650 3500 50  0001 C CNN
	1    5650 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F8F86DC
P 5650 3200
F 0 "R6" V 5443 3200 50  0000 C CNN
F 1 "220" V 5534 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5580 3200 50  0001 C CNN
F 3 "~" H 5650 3200 50  0001 C CNN
	1    5650 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 5350 1600 5300
Wire Wire Line
	900  5300 900  5350
Connection ~ 900  5350
Wire Wire Line
	900  5350 1600 5350
Wire Wire Line
	900  4600 900  4650
Wire Wire Line
	900  4650 750  4650
Wire Wire Line
	1600 4600 1600 4650
Wire Wire Line
	1600 4650 900  4650
Connection ~ 900  4650
Wire Wire Line
	900  3900 900  3950
Wire Wire Line
	900  3950 1600 3950
Wire Wire Line
	1600 3950 1600 3900
Wire Wire Line
	750  3950 900  3950
Connection ~ 900  3950
Wire Wire Line
	750  5350 900  5350
Wire Wire Line
	2450 6000 2450 6150
Wire Wire Line
	2300 5350 2450 5350
Wire Wire Line
	2450 5350 2450 5300
Wire Wire Line
	2300 4650 2450 4650
Wire Wire Line
	2450 4650 2450 4600
Wire Wire Line
	2300 3950 2450 3950
Wire Wire Line
	2450 3950 2450 3900
Wire Wire Line
	2450 3950 3150 3950
Wire Wire Line
	3150 3950 3150 3900
Connection ~ 2450 3950
Wire Wire Line
	2450 4650 3150 4650
Wire Wire Line
	3150 4650 3150 4600
Connection ~ 2450 4650
Wire Wire Line
	2450 5350 3150 5350
Wire Wire Line
	3150 5350 3150 5300
Connection ~ 2450 5350
Wire Wire Line
	3950 6000 3950 6250
Wire Wire Line
	3800 5350 3950 5350
Wire Wire Line
	3950 5350 3950 5300
Wire Wire Line
	3800 4650 3950 4650
Wire Wire Line
	3950 4650 3950 4600
Wire Wire Line
	3800 3950 3950 3950
Wire Wire Line
	3950 3950 3950 3900
Wire Wire Line
	3950 4650 4650 4650
Wire Wire Line
	4650 4650 4650 4600
Connection ~ 3950 4650
Wire Wire Line
	3950 5350 4650 5350
Wire Wire Line
	4650 5350 4650 5300
Connection ~ 3950 5350
Connection ~ 3950 6250
Wire Wire Line
	3950 3950 4650 3950
Wire Wire Line
	4650 3950 4650 3900
Connection ~ 3950 3950
Wire Wire Line
	4650 3950 5350 3950
Wire Wire Line
	5350 3950 5350 3900
Connection ~ 4650 3950
Wire Wire Line
	5500 3500 5350 3500
Wire Wire Line
	5350 3500 5350 3600
Wire Wire Line
	5350 3500 4650 3500
Wire Wire Line
	4650 3500 4650 3600
Connection ~ 5350 3500
Wire Wire Line
	4650 3500 3950 3500
Wire Wire Line
	3950 3500 3950 3600
Connection ~ 4650 3500
Wire Wire Line
	5500 3200 3150 3200
Wire Wire Line
	3150 3200 3150 3500
Wire Wire Line
	3150 3500 2450 3500
Wire Wire Line
	2450 3500 2450 3600
Connection ~ 3150 3500
Wire Wire Line
	3150 3500 3150 3600
Wire Wire Line
	2450 3500 1600 3500
Wire Wire Line
	1600 3500 1600 3600
Connection ~ 2450 3500
Wire Wire Line
	1600 3500 900  3500
Wire Wire Line
	900  3500 900  3600
Connection ~ 1600 3500
Wire Wire Line
	5300 4200 4650 4200
Wire Wire Line
	4650 4200 4650 4300
Wire Wire Line
	4650 4200 3950 4200
Wire Wire Line
	3950 4200 3950 4300
Connection ~ 4650 4200
Wire Wire Line
	3950 4200 3150 4200
Wire Wire Line
	3150 4200 3150 4300
Connection ~ 3950 4200
Wire Wire Line
	3150 4200 2450 4200
Wire Wire Line
	2450 4200 2450 4300
Connection ~ 3150 4200
Wire Wire Line
	2450 4200 1600 4200
Wire Wire Line
	1600 4200 1600 4300
Connection ~ 2450 4200
Wire Wire Line
	1600 4200 900  4200
Wire Wire Line
	900  4200 900  4300
Connection ~ 1600 4200
Wire Wire Line
	5300 4900 4650 4900
Wire Wire Line
	4650 4900 4650 5000
Wire Wire Line
	4650 4900 3950 4900
Wire Wire Line
	3950 4900 3950 5000
Connection ~ 4650 4900
Wire Wire Line
	3950 4900 3150 4900
Wire Wire Line
	3150 4900 3150 5000
Connection ~ 3950 4900
Wire Wire Line
	3150 4900 2450 4900
Wire Wire Line
	2450 4900 2450 5000
Connection ~ 3150 4900
Wire Wire Line
	2450 4900 1600 4900
Wire Wire Line
	1600 4900 1600 5000
Connection ~ 2450 4900
Wire Wire Line
	1600 4900 900  4900
Wire Wire Line
	900  4900 900  5000
Connection ~ 1600 4900
Wire Wire Line
	900  5600 900  5700
Wire Wire Line
	2450 5700 2450 5600
Connection ~ 2450 5600
Wire Wire Line
	3950 5700 3950 5600
Connection ~ 3950 5600
Wire Wire Line
	750  3950 750  4650
Connection ~ 750  4650
Wire Wire Line
	750  4650 750  5350
Connection ~ 750  5350
Wire Wire Line
	2300 3950 2300 4650
Connection ~ 2300 4650
Wire Wire Line
	2300 4650 2300 5350
Connection ~ 2300 5350
Wire Wire Line
	3800 3950 3800 4650
Connection ~ 3800 4650
Wire Wire Line
	3800 4650 3800 5350
Connection ~ 3800 5350
Wire Wire Line
	5800 3500 6150 3500
Wire Wire Line
	5600 4900 5950 4900
Wire Wire Line
	5600 5600 5750 5600
Wire Wire Line
	750  5350 750  6050
Wire Wire Line
	900  6050 750  6050
Wire Wire Line
	900  6000 900  6050
Connection ~ 900  6050
Wire Wire Line
	2300 6150 2450 6150
Wire Wire Line
	2300 5350 2300 6150
Connection ~ 2450 6150
Wire Wire Line
	3800 6250 3950 6250
Wire Wire Line
	3800 5350 3800 6250
Wire Wire Line
	6050 5550 9100 5550
Wire Wire Line
	6050 5550 6050 6250
Wire Wire Line
	5950 5450 5950 6150
Wire Wire Line
	5950 5450 9100 5450
Wire Wire Line
	5850 5350 5850 6050
Wire Wire Line
	5850 5350 9100 5350
Wire Wire Line
	5750 5250 5750 5600
Wire Wire Line
	5750 5250 9100 5250
Wire Wire Line
	5950 5150 5950 4900
Wire Wire Line
	5950 5150 9100 5150
Wire Wire Line
	6050 5050 6050 4200
Wire Wire Line
	6050 5050 9100 5050
Wire Wire Line
	6050 4200 5600 4200
Wire Wire Line
	6150 4950 6150 3500
Wire Wire Line
	6150 4950 9100 4950
Wire Wire Line
	7450 2400 7450 4850
Wire Wire Line
	7450 4850 9100 4850
Wire Wire Line
	7550 2250 7550 4750
Wire Wire Line
	7550 4750 9100 4750
Wire Wire Line
	7650 2000 7650 4650
Wire Wire Line
	7650 4650 9100 4650
Wire Wire Line
	7750 1400 7750 4550
Wire Wire Line
	7750 4550 9100 4550
Wire Wire Line
	5800 3200 6150 3200
Wire Wire Line
	6150 3200 6150 3500
Connection ~ 6150 3500
Wire Wire Line
	1500 700  1500 1000
$Comp
L power:GND #PWR0106
U 1 1 5FA8B21B
P 9600 3300
F 0 "#PWR0106" H 9600 3050 50  0001 C CNN
F 1 "GND" H 9600 3150 50  0000 C CNN
F 2 "" H 9600 3300 50  0001 C CNN
F 3 "" H 9600 3300 50  0001 C CNN
	1    9600 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5FADBF39
P 8400 4050
F 0 "R11" V 8193 4050 50  0000 C CNN
F 1 "10k" V 8284 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8330 4050 50  0001 C CNN
F 3 "~" H 8400 4050 50  0001 C CNN
	1    8400 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FADD93F
P 8050 4050
F 0 "#PWR0107" H 8050 3800 50  0001 C CNN
F 1 "GND" H 8055 3877 50  0000 C CNN
F 2 "" H 8050 4050 50  0001 C CNN
F 3 "" H 8050 4050 50  0001 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L bunnyology:Pollin-DCF1 DCF1
U 1 1 5FAF0D7F
P 8400 3400
F 0 "DCF1" H 8400 3565 50  0000 C CNN
F 1 "Pollin-DCF1" H 8400 3474 50  0000 C CNN
F 2 "bunnyology:Pollin-DFC77" H 8400 3400 50  0001 C CNN
F 3 "" H 8400 3400 50  0001 C CNN
	1    8400 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5FBA91A2
P 8400 3050
F 0 "C1" V 8655 3050 50  0000 C CNN
F 1 "10u" V 8564 3050 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 8438 2900 50  0001 C CNN
F 3 "~" H 8400 3050 50  0001 C CNN
	1    8400 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5FBAAC66
P 8050 2900
F 0 "#PWR0108" H 8050 2750 50  0001 C CNN
F 1 "+3.3V" H 8065 3073 50  0000 C CNN
F 2 "" H 8050 2900 50  0001 C CNN
F 3 "" H 8050 2900 50  0001 C CNN
	1    8050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2900 8050 3050
Wire Wire Line
	8050 3050 8250 3050
Wire Wire Line
	8050 3050 8050 3500
Connection ~ 8050 3050
Wire Wire Line
	8050 4050 8050 3800
Wire Wire Line
	8250 4050 8050 4050
Connection ~ 8050 4050
Wire Wire Line
	8550 4050 8850 4050
Wire Wire Line
	8850 4050 8850 3800
Wire Wire Line
	8850 3800 8750 3800
Wire Wire Line
	8550 3050 8850 3050
Wire Wire Line
	8850 3050 8850 3800
Connection ~ 8850 3800
Wire Wire Line
	8750 3500 9000 3500
Wire Wire Line
	9000 4450 9100 4450
Wire Wire Line
	7350 1050 7750 1050
Wire Wire Line
	7750 1050 7750 1400
Connection ~ 7750 1400
Wire Wire Line
	9500 3200 9500 3850
Wire Wire Line
	9000 3500 9000 4450
Wire Wire Line
	900  5600 2450 5600
Wire Wire Line
	900  6050 5850 6050
Wire Wire Line
	2450 5600 3950 5600
Wire Wire Line
	2450 6150 5950 6150
Wire Wire Line
	3950 5600 5300 5600
Wire Wire Line
	3950 6250 6050 6250
Wire Wire Line
	9800 3700 9800 3850
$Comp
L bunnyology:MAS6180-DCF77 DCF2
U 1 1 5F9A459D
P 8450 2050
F 0 "DCF2" H 8450 2465 50  0000 C CNN
F 1 "MAS6180-DCF77" H 8450 2374 50  0000 C CNN
F 2 "bunnyology:MAS6180B1-DFC77" H 8450 2050 50  0001 C CNN
F 3 "" H 8450 2050 50  0001 C CNN
	1    8450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F9A57A9
P 8050 2400
F 0 "#PWR0109" H 8050 2150 50  0001 C CNN
F 1 "GND" H 8055 2227 50  0000 C CNN
F 2 "" H 8050 2400 50  0001 C CNN
F 3 "" H 8050 2400 50  0001 C CNN
	1    8050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2400 8050 2200
Wire Wire Line
	8050 2200 8100 2200
Wire Wire Line
	8800 2200 8850 2200
Wire Wire Line
	8850 2200 8850 2400
Wire Wire Line
	8850 2400 8050 2400
Connection ~ 8050 2400
Wire Wire Line
	9000 3500 9000 1900
Wire Wire Line
	9000 1900 8800 1900
Connection ~ 9000 3500
$Comp
L power:+3.3V #PWR0110
U 1 1 5F9D1910
P 8050 1650
F 0 "#PWR0110" H 8050 1500 50  0001 C CNN
F 1 "+3.3V" H 8065 1823 50  0000 C CNN
F 2 "" H 8050 1650 50  0001 C CNN
F 3 "" H 8050 1650 50  0001 C CNN
	1    8050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1650 8050 1900
Wire Wire Line
	8050 1900 8100 1900
Wire Wire Line
	10100 4850 10150 4850
Wire Wire Line
	10150 4850 10150 700 
Wire Wire Line
	1500 700  10150 700 
Wire Wire Line
	10400 4950 10100 4950
$Comp
L Connector_Generic:Conn_01x02 J1PWR1
U 1 1 5F8D02F2
P 9500 3000
F 0 "J1PWR1" V 9700 3150 50  0000 R CNN
F 1 "JST-XH-A02" V 9600 3150 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 9500 3000 50  0001 C CNN
F 3 "~" H 9500 3000 50  0001 C CNN
	1    9500 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2KEY1
U 1 1 5F8D0E9B
P 10400 3000
F 0 "J2KEY1" V 10600 3150 50  0000 R CNN
F 1 "JST-XH-A02" V 10500 3150 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 10400 3000 50  0001 C CNN
F 3 "~" H 10400 3000 50  0001 C CNN
	1    10400 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F8D2BE4
P 10500 3300
F 0 "#PWR0111" H 10500 3050 50  0001 C CNN
F 1 "GND" H 10505 3127 50  0000 C CNN
F 2 "" H 10500 3300 50  0001 C CNN
F 3 "" H 10500 3300 50  0001 C CNN
	1    10500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3200 10400 4950
Wire Wire Line
	10500 3200 10500 3300
Wire Wire Line
	9600 3200 9600 3300
$EndSCHEMATC
