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
LIBS:acs712
LIBS:songle
LIBS:relay_2x-cache
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
U 1 1 5A7A14A2
P 1850 4600
F 0 "J1" H 1850 4800 50  0000 C CNN
F 1 "Conn_01x04" H 1850 4300 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 1850 4600 50  0001 C CNN
F 3 "" H 1850 4600 50  0001 C CNN
	1    1850 4600
	-1   0    0    -1  
$EndComp
Text Label 2600 4600 2    60   ~ 0
RELAY1
Text Label 2600 4700 2    60   ~ 0
RELAY2
$Comp
L +5V #PWR01
U 1 1 5A7C339E
P 2600 4450
F 0 "#PWR01" H 2600 4300 50  0001 C CNN
F 1 "+5V" H 2600 4590 50  0000 C CNN
F 2 "" H 2600 4450 50  0001 C CNN
F 3 "" H 2600 4450 50  0001 C CNN
	1    2600 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A7C33D0
P 2600 4850
F 0 "#PWR02" H 2600 4600 50  0001 C CNN
F 1 "GND" H 2600 4700 50  0000 C CNN
F 2 "" H 2600 4850 50  0001 C CNN
F 3 "" H 2600 4850 50  0001 C CNN
	1    2600 4850
	1    0    0    -1  
$EndComp
Text Notes 850  7550 0    60   ~ 0
https://cdn.sparkfun.com/datasheets/Components/General/SparkFun_Beefcake_Relay_Control_Kit_v20a.pdf
$Comp
L D_ALT D4
U 1 1 5A7CA26F
P 4750 4950
F 0 "D4" H 4750 5050 50  0000 C CNN
F 1 "1N4007" H 4750 4850 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 4750 4950 50  0001 C CNN
F 3 "" H 4750 4950 50  0001 C CNN
	1    4750 4950
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A7CA288
P 4550 5650
F 0 "R4" V 4630 5650 50  0000 C CNN
F 1 "1k" V 4550 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4480 5650 50  0001 C CNN
F 3 "" H 4550 5650 50  0001 C CNN
	1    4550 5650
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 5A7CA28E
P 5150 4300
F 0 "#PWR03" H 5150 4150 50  0001 C CNN
F 1 "+5V" H 5150 4440 50  0000 C CNN
F 2 "" H 5150 4300 50  0001 C CNN
F 3 "" H 5150 4300 50  0001 C CNN
	1    5150 4300
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A7CA294
P 4800 6000
F 0 "R6" V 4880 6000 50  0000 C CNN
F 1 "10k" V 4800 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4730 6000 50  0001 C CNN
F 3 "" H 4800 6000 50  0001 C CNN
	1    4800 6000
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x03 J3
U 1 1 5A7CA29A
P 6550 4900
F 0 "J3" H 6550 5100 50  0000 C CNN
F 1 "Conn_01x03" H 6550 4700 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 6550 4900 50  0001 C CNN
F 3 "" H 6550 4900 50  0001 C CNN
	1    6550 4900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A7CA2A0
P 4400 5050
F 0 "R2" V 4480 5050 50  0000 C CNN
F 1 "220" V 4400 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4330 5050 50  0001 C CNN
F 3 "" H 4400 5050 50  0001 C CNN
	1    4400 5050
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5A7CA2A6
P 4400 4650
F 0 "D2" H 4400 4750 50  0000 C CNN
F 1 "LED" H 4400 4550 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4400 4650 50  0001 C CNN
F 3 "" H 4400 4650 50  0001 C CNN
	1    4400 4650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A7D6FC0
P 5150 6350
F 0 "#PWR04" H 5150 6100 50  0001 C CNN
F 1 "GND" H 5150 6200 50  0000 C CNN
F 2 "" H 5150 6350 50  0001 C CNN
F 3 "" H 5150 6350 50  0001 C CNN
	1    5150 6350
	1    0    0    -1  
$EndComp
Text Label 3950 5650 0    60   ~ 0
RELAY2
$Comp
L D_ALT D3
U 1 1 5A7DA822
P 4750 2150
F 0 "D3" H 4750 2250 50  0000 C CNN
F 1 "1N4007" H 4750 2050 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 4750 2150 50  0001 C CNN
F 3 "" H 4750 2150 50  0001 C CNN
	1    4750 2150
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A7DA834
P 4550 2850
F 0 "R3" V 4630 2850 50  0000 C CNN
F 1 "1k" V 4550 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4480 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR05
U 1 1 5A7DA83A
P 5150 1500
F 0 "#PWR05" H 5150 1350 50  0001 C CNN
F 1 "+5V" H 5150 1640 50  0000 C CNN
F 2 "" H 5150 1500 50  0001 C CNN
F 3 "" H 5150 1500 50  0001 C CNN
	1    5150 1500
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A7DA840
P 4800 3200
F 0 "R5" V 4880 3200 50  0000 C CNN
F 1 "10k" V 4800 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4730 3200 50  0001 C CNN
F 3 "" H 4800 3200 50  0001 C CNN
	1    4800 3200
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x03 J2
U 1 1 5A7DA846
P 6550 2100
F 0 "J2" H 6550 2300 50  0000 C CNN
F 1 "Conn_01x03" H 6550 1900 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 6550 2100 50  0001 C CNN
F 3 "" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A7DA84C
P 4400 2250
F 0 "R1" V 4480 2250 50  0000 C CNN
F 1 "220" V 4400 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4330 2250 50  0001 C CNN
F 3 "" H 4400 2250 50  0001 C CNN
	1    4400 2250
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5A7DA852
P 4400 1850
F 0 "D1" H 4400 1950 50  0000 C CNN
F 1 "LED" H 4400 1750 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4400 1850 50  0001 C CNN
F 3 "" H 4400 1850 50  0001 C CNN
	1    4400 1850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 5A7DA858
P 5150 3550
F 0 "#PWR06" H 5150 3300 50  0001 C CNN
F 1 "GND" H 5150 3400 50  0000 C CNN
F 2 "" H 5150 3550 50  0001 C CNN
F 3 "" H 5150 3550 50  0001 C CNN
	1    5150 3550
	1    0    0    -1  
$EndComp
Text Label 3950 2850 0    60   ~ 0
RELAY1
$Comp
L PWR_FLAG #FLG07
U 1 1 5A7DC1DF
P 1700 6000
F 0 "#FLG07" H 1700 6075 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 6150 50  0000 C CNN
F 2 "" H 1700 6000 50  0001 C CNN
F 3 "" H 1700 6000 50  0001 C CNN
	1    1700 6000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR08
U 1 1 5A7DC29B
P 1700 5600
F 0 "#PWR08" H 1700 5450 50  0001 C CNN
F 1 "+5V" H 1700 5740 50  0000 C CNN
F 2 "" H 1700 5600 50  0001 C CNN
F 3 "" H 1700 5600 50  0001 C CNN
	1    1700 5600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 5A7DC385
P 2100 5600
F 0 "#FLG09" H 2100 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 5750 50  0000 C CNN
F 2 "" H 2100 5600 50  0001 C CNN
F 3 "" H 2100 5600 50  0001 C CNN
	1    2100 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A7DC4D3
P 2100 6000
F 0 "#PWR010" H 2100 5750 50  0001 C CNN
F 1 "GND" H 2100 5850 50  0000 C CNN
F 2 "" H 2100 6000 50  0001 C CNN
F 3 "" H 2100 6000 50  0001 C CNN
	1    2100 6000
	1    0    0    -1  
$EndComp
$Comp
L SANYOU_SRD_Form_C K2
U 1 1 5A7DE44F
P 5350 4950
F 0 "K2" H 5800 5100 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 5800 5000 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6800 4900 50  0001 C CNN
F 3 "" H 5350 4950 50  0001 C CNN
	1    5350 4950
	1    0    0    -1  
$EndComp
$Comp
L SANYOU_SRD_Form_C K1
U 1 1 5A7DEC93
P 5350 2150
F 0 "K1" H 5800 2300 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 5800 2200 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6800 2100 50  0001 C CNN
F 3 "" H 5350 2150 50  0001 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q1
U 1 1 5A9BBFD6
P 5050 2850
F 0 "Q1" H 5250 2925 50  0000 L CNN
F 1 "2N3904" H 5250 2850 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 5250 2775 50  0001 L CIN
F 3 "" H 5050 2850 50  0001 L CNN
	1    5050 2850
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q2
U 1 1 5A9BC1C9
P 5050 5650
F 0 "Q2" H 5250 5725 50  0000 L CNN
F 1 "2N3904" H 5250 5650 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 5250 5575 50  0001 L CIN
F 3 "" H 5050 5650 50  0001 L CNN
	1    5050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4600 2600 4600
Wire Wire Line
	2050 4700 2600 4700
Wire Wire Line
	2050 4500 2600 4500
Wire Wire Line
	2600 4500 2600 4450
Wire Wire Line
	2050 4800 2600 4800
Wire Wire Line
	2600 4800 2600 4850
Wire Wire Line
	5150 5250 5150 5450
Connection ~ 5150 5350
Wire Wire Line
	4700 5650 4850 5650
Wire Wire Line
	4800 5850 4800 5650
Connection ~ 4800 5650
Wire Wire Line
	5150 5850 5150 6350
Wire Wire Line
	4800 6150 4800 6250
Wire Wire Line
	4800 6250 5150 6250
Connection ~ 5150 6250
Wire Wire Line
	4400 5650 3950 5650
Wire Wire Line
	4400 5350 5150 5350
Wire Wire Line
	4750 4800 4750 4600
Wire Wire Line
	4750 4600 5150 4600
Connection ~ 5150 4600
Connection ~ 4750 5350
Wire Wire Line
	4750 5100 4750 5350
Wire Wire Line
	4400 5200 4400 5350
Wire Wire Line
	4400 4800 4400 4900
Wire Wire Line
	4400 4400 5150 4400
Connection ~ 5150 4400
Wire Wire Line
	4400 4500 4400 4400
Wire Wire Line
	5150 4300 5150 4650
Wire Wire Line
	5150 2450 5150 2650
Wire Wire Line
	4700 2850 4850 2850
Wire Wire Line
	4800 3050 4800 2850
Connection ~ 4800 2850
Wire Wire Line
	5150 3050 5150 3550
Wire Wire Line
	4800 3350 4800 3450
Wire Wire Line
	4800 3450 5150 3450
Connection ~ 5150 3450
Wire Wire Line
	4400 2850 3950 2850
Wire Wire Line
	4400 2550 5150 2550
Wire Wire Line
	4750 2000 4750 1800
Wire Wire Line
	4750 1800 5150 1800
Connection ~ 5150 1800
Wire Wire Line
	4750 2300 4750 2550
Wire Wire Line
	4400 2000 4400 2100
Wire Wire Line
	4400 1600 5150 1600
Connection ~ 5150 1600
Wire Wire Line
	4400 1700 4400 1600
Wire Wire Line
	5150 1500 5150 1850
Wire Wire Line
	6150 2450 5550 2450
Wire Wire Line
	1700 5600 1700 6000
Wire Wire Line
	2100 6000 2100 5600
Wire Wire Line
	6150 2450 6150 2100
Wire Wire Line
	5450 1850 5450 1750
Wire Wire Line
	5450 1750 6350 1750
Wire Wire Line
	5550 5250 5550 5400
Wire Wire Line
	5550 5400 5950 5400
Wire Wire Line
	5950 5400 5950 4900
Wire Wire Line
	5950 4900 6350 4900
Wire Wire Line
	5450 4650 5450 4550
Wire Wire Line
	5450 4550 6350 4550
Wire Wire Line
	5650 4650 5650 4600
Wire Wire Line
	6150 2100 6350 2100
Wire Wire Line
	5650 1850 5650 1800
Wire Wire Line
	5650 1800 6050 1800
Wire Wire Line
	6050 1800 6050 2200
Wire Wire Line
	6050 2200 6350 2200
Wire Wire Line
	6350 1750 6350 2000
Wire Wire Line
	6350 4550 6350 4800
Wire Wire Line
	5650 4600 6200 4600
Wire Wire Line
	6200 4600 6200 5000
Wire Wire Line
	6200 5000 6350 5000
Wire Wire Line
	4400 2400 4400 2550
Connection ~ 5150 2550
Connection ~ 4750 2550
$EndSCHEMATC
