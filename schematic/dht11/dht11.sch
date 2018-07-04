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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:ttl_ieee
LIBS:transf
LIBS:triac_thyristor
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
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
L DHT11 U1
U 1 1 59DD82AF
P 5350 3550
F 0 "U1" H 5500 3800 50  0000 C CNN
F 1 "DHT11" H 5450 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0001 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J1
U 1 1 59DD8306
P 3900 3550
F 0 "J1" H 3900 3750 50  0000 C CNN
F 1 "Conn_01x04" H 3900 3250 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 3900 3550 50  0001 C CNN
F 3 "" H 3900 3550 50  0001 C CNN
	1    3900 3550
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59DD83B3
P 5850 3300
F 0 "R1" V 5930 3300 50  0000 C CNN
F 1 "10k" V 5850 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5780 3300 50  0001 C CNN
F 3 "" H 5850 3300 50  0001 C CNN
	1    5850 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3450 4650 3450
Wire Wire Line
	4650 3450 4650 3400
Wire Wire Line
	4100 3750 4650 3750
Wire Wire Line
	4650 3750 4650 3800
Wire Wire Line
	4100 3550 4650 3550
NoConn ~ 4100 3650
$Comp
L +5V #PWR01
U 1 1 59DD84C4
P 4650 3400
F 0 "#PWR01" H 4650 3250 50  0001 C CNN
F 1 "+5V" H 4650 3540 50  0000 C CNN
F 2 "" H 4650 3400 50  0001 C CNN
F 3 "" H 4650 3400 50  0001 C CNN
	1    4650 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59DD84DE
P 4650 3800
F 0 "#PWR02" H 4650 3550 50  0001 C CNN
F 1 "GND" H 4650 3650 50  0000 C CNN
F 2 "" H 4650 3800 50  0001 C CNN
F 3 "" H 4650 3800 50  0001 C CNN
	1    4650 3800
	1    0    0    -1  
$EndComp
Text Label 4650 3550 2    60   ~ 0
IO
Wire Wire Line
	5650 3550 6450 3550
Wire Wire Line
	5250 3050 5250 3250
$Comp
L +5V #PWR03
U 1 1 59DD85B9
P 5250 3050
F 0 "#PWR03" H 5250 2900 50  0001 C CNN
F 1 "+5V" H 5250 3190 50  0000 C CNN
F 2 "" H 5250 3050 50  0001 C CNN
F 3 "" H 5250 3050 50  0001 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
Text Label 6450 3550 2    60   ~ 0
IO
Wire Wire Line
	5250 3850 5250 3950
$Comp
L GND #PWR04
U 1 1 59DD865F
P 5250 3950
F 0 "#PWR04" H 5250 3700 50  0001 C CNN
F 1 "GND" H 5250 3800 50  0000 C CNN
F 2 "" H 5250 3950 50  0001 C CNN
F 3 "" H 5250 3950 50  0001 C CNN
	1    5250 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 59DD877A
P 6850 3250
F 0 "#PWR05" H 6850 3100 50  0001 C CNN
F 1 "+5V" H 6850 3390 50  0000 C CNN
F 2 "" H 6850 3250 50  0001 C CNN
F 3 "" H 6850 3250 50  0001 C CNN
	1    6850 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59DD8794
P 7400 3800
F 0 "#PWR06" H 7400 3550 50  0001 C CNN
F 1 "GND" H 7400 3650 50  0000 C CNN
F 2 "" H 7400 3800 50  0001 C CNN
F 3 "" H 7400 3800 50  0001 C CNN
	1    7400 3800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 59DD87AE
P 6850 3800
F 0 "#FLG07" H 6850 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 6850 3950 50  0000 C CNN
F 2 "" H 6850 3800 50  0001 C CNN
F 3 "" H 6850 3800 50  0001 C CNN
	1    6850 3800
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 59DD87C8
P 7400 3250
F 0 "#FLG08" H 7400 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 3400 50  0000 C CNN
F 2 "" H 7400 3250 50  0001 C CNN
F 3 "" H 7400 3250 50  0001 C CNN
	1    7400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3250 6850 3800
Wire Wire Line
	7400 3250 7400 3800
Wire Wire Line
	5850 3550 5850 3450
Connection ~ 5850 3550
Wire Wire Line
	5850 3150 5850 3100
Wire Wire Line
	5850 3100 5250 3100
Connection ~ 5250 3100
$EndSCHEMATC
