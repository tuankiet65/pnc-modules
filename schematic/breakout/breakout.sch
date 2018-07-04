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
LIBS:breakout-cache
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
U 1 1 59DAE1F4
P 2350 4050
F 0 "J1" H 2350 4250 50  0000 C CNN
F 1 "Master" H 2350 3750 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 2350 4050 50  0001 C CNN
F 3 "" H 2350 4050 50  0001 C CNN
	1    2350 4050
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x04 J2
U 1 1 59DAE343
P 2950 4700
F 0 "J2" H 2950 4900 50  0000 C CNN
F 1 "Slave1" H 2950 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2950 4700 50  0001 C CNN
F 3 "" H 2950 4700 50  0001 C CNN
	1    2950 4700
	0    -1   1    0   
$EndComp
$Comp
L Conn_01x04 J3
U 1 1 59DAE399
P 3700 4700
F 0 "J3" H 3700 4900 50  0000 C CNN
F 1 "Slave2" H 3700 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3700 4700 50  0001 C CNN
F 3 "" H 3700 4700 50  0001 C CNN
	1    3700 4700
	0    -1   1    0   
$EndComp
$Comp
L Conn_01x04 J4
U 1 1 59DAE417
P 4400 4700
F 0 "J4" H 4400 4900 50  0000 C CNN
F 1 "Slave3" H 4400 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4400 4700 50  0001 C CNN
F 3 "" H 4400 4700 50  0001 C CNN
	1    4400 4700
	0    -1   1    0   
$EndComp
Wire Wire Line
	2550 3950 4700 3950
Wire Wire Line
	2850 4500 2850 3950
Connection ~ 2850 3950
Wire Wire Line
	2550 4050 4700 4050
Wire Wire Line
	2550 4150 4700 4150
Wire Wire Line
	2550 4250 5350 4250
Wire Wire Line
	3600 4500 3600 3950
Connection ~ 3600 3950
Wire Wire Line
	4300 4500 4300 3950
Connection ~ 4300 3950
Wire Wire Line
	2950 4500 2950 4050
Connection ~ 2950 4050
Wire Wire Line
	3700 4500 3700 4050
Connection ~ 3700 4050
Wire Wire Line
	4400 4500 4400 4050
Connection ~ 4400 4050
Wire Wire Line
	3050 4500 3050 4150
Connection ~ 3050 4150
Wire Wire Line
	3150 4500 3150 4250
Connection ~ 3150 4250
Wire Wire Line
	3800 4150 3800 4500
Connection ~ 3800 4150
Wire Wire Line
	3900 4500 3900 4250
Connection ~ 3900 4250
Wire Wire Line
	4500 4500 4500 4150
Connection ~ 4500 4150
Wire Wire Line
	4600 4500 4600 4250
Connection ~ 4600 4250
Wire Wire Line
	5000 4250 5000 4600
$Comp
L GND #PWR01
U 1 1 59DD10E9
P 5000 4600
F 0 "#PWR01" H 5000 4350 50  0001 C CNN
F 1 "GND" H 5000 4450 50  0000 C CNN
F 2 "" H 5000 4600 50  0001 C CNN
F 3 "" H 5000 4600 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 59DD1168
P 5350 4650
F 0 "#FLG02" H 5350 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 4800 50  0000 C CNN
F 2 "" H 5350 4650 50  0001 C CNN
F 3 "" H 5350 4650 50  0001 C CNN
	1    5350 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 4250 5350 4650
Connection ~ 5000 4250
$EndSCHEMATC
