EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:servo-cache
EELAYER 25 0
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
L Conn_01x04 J1
U 1 1 59DA793A
P 4200 3750
F 0 "J1" H 4200 3950 50  0000 C CNN
F 1 "Conn_01x04" H 4200 3450 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 4200 3750 50  0001 C CNN
F 3 "" H 4200 3750 50  0001 C CNN
	1    4200 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3650 5300 3650
Wire Wire Line
	4950 3650 4950 3600
Wire Wire Line
	4400 3950 5300 3950
Wire Wire Line
	4950 3950 4950 4000
Wire Wire Line
	4400 3750 4950 3750
Wire Wire Line
	4400 3850 4950 3850
$Comp
L CP C1
U 1 1 59DA79F3
P 7500 3800
F 0 "C1" H 7525 3900 50  0000 L CNN
F 1 "470u" H 7525 3700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10.5" H 7538 3650 50  0001 C CNN
F 3 "" H 7500 3800 50  0001 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
$Comp
L Motor_Servo M1
U 1 1 59DA7AC4
P 6700 3350
F 0 "M1" H 6500 3525 50  0000 L CNN
F 1 "Servo1" H 6500 3190 50  0000 L TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6700 3160 50  0001 C CNN
F 3 "" H 6700 3160 50  0001 C CNN
	1    6700 3350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 59DA7D46
P 4950 3600
F 0 "#PWR01" H 4950 3450 50  0001 C CNN
F 1 "+5V" H 4950 3740 50  0000 C CNN
F 2 "" H 4950 3600 50  0001 C CNN
F 3 "" H 4950 3600 50  0001 C CNN
	1    4950 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59DA7D69
P 4950 4000
F 0 "#PWR02" H 4950 3750 50  0001 C CNN
F 1 "GND" H 4950 3850 50  0000 C CNN
F 2 "" H 4950 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
Text Label 4950 3750 2    60   ~ 0
PWM1
Text Label 4950 3850 2    60   ~ 0
PWM2
Wire Wire Line
	6400 3250 6000 3250
Wire Wire Line
	5850 3350 6400 3350
Wire Wire Line
	6400 3450 5850 3450
Wire Wire Line
	5850 3450 5850 3550
Wire Wire Line
	5850 3250 5850 3350
$Comp
L +5V #PWR03
U 1 1 59DA8106
P 5850 3250
F 0 "#PWR03" H 5850 3100 50  0001 C CNN
F 1 "+5V" H 5850 3390 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59DA8120
P 5850 3550
F 0 "#PWR04" H 5850 3300 50  0001 C CNN
F 1 "GND" H 5850 3400 50  0000 C CNN
F 2 "" H 5850 3550 50  0001 C CNN
F 3 "" H 5850 3550 50  0001 C CNN
	1    5850 3550
	1    0    0    -1  
$EndComp
Text Label 6000 3250 0    60   ~ 0
PWM1
$Comp
L Motor_Servo M2
U 1 1 59DA8249
P 6700 4100
F 0 "M2" H 6500 4275 50  0000 L CNN
F 1 "Servo2" H 6500 3940 50  0000 L TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6700 3910 50  0001 C CNN
F 3 "" H 6700 3910 50  0001 C CNN
	1    6700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4000 6000 4000
Wire Wire Line
	5850 4100 6400 4100
Wire Wire Line
	6400 4200 5850 4200
Wire Wire Line
	5850 4200 5850 4300
Wire Wire Line
	5850 4000 5850 4100
$Comp
L +5V #PWR05
U 1 1 59DA8254
P 5850 4000
F 0 "#PWR05" H 5850 3850 50  0001 C CNN
F 1 "+5V" H 5850 4140 50  0000 C CNN
F 2 "" H 5850 4000 50  0001 C CNN
F 3 "" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59DA825A
P 5850 4300
F 0 "#PWR06" H 5850 4050 50  0001 C CNN
F 1 "GND" H 5850 4150 50  0000 C CNN
F 2 "" H 5850 4300 50  0001 C CNN
F 3 "" H 5850 4300 50  0001 C CNN
	1    5850 4300
	1    0    0    -1  
$EndComp
Text Label 6000 4000 0    60   ~ 0
PWM2
$Comp
L CP C2
U 1 1 59DA83C8
P 7900 3800
F 0 "C2" H 7925 3900 50  0000 L CNN
F 1 "470u" H 7925 3700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10.5" H 7938 3650 50  0001 C CNN
F 3 "" H 7900 3800 50  0001 C CNN
	1    7900 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 59DA849F
P 7500 3500
F 0 "#PWR07" H 7500 3350 50  0001 C CNN
F 1 "+5V" H 7500 3640 50  0000 C CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "" H 7500 3500 50  0001 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3500 7500 3650
Wire Wire Line
	7500 3650 7900 3650
Wire Wire Line
	7900 3950 7500 3950
Wire Wire Line
	7500 3950 7500 4100
$Comp
L GND #PWR08
U 1 1 59DA8638
P 7500 4100
F 0 "#PWR08" H 7500 3850 50  0001 C CNN
F 1 "GND" H 7500 3950 50  0000 C CNN
F 2 "" H 7500 4100 50  0001 C CNN
F 3 "" H 7500 4100 50  0001 C CNN
	1    7500 4100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 59DA8A2D
P 5300 3600
F 0 "#FLG09" H 5300 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 3750 50  0000 C CNN
F 2 "" H 5300 3600 50  0001 C CNN
F 3 "" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG010
U 1 1 59DA8A4E
P 5300 4000
F 0 "#FLG010" H 5300 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 4150 50  0000 C CNN
F 2 "" H 5300 4000 50  0001 C CNN
F 3 "" H 5300 4000 50  0001 C CNN
	1    5300 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3950 5300 4000
Connection ~ 4950 3950
Wire Wire Line
	5300 3650 5300 3600
Connection ~ 4950 3650
Wire Notes Line
	3900 3000 8200 3000
Wire Notes Line
	8200 3000 8200 4600
Wire Notes Line
	8200 4600 3900 4600
Wire Notes Line
	3900 4600 3900 3000
Wire Notes Line
	5600 3000 5600 4600
Wire Notes Line
	7200 3000 7200 4600
$EndSCHEMATC
