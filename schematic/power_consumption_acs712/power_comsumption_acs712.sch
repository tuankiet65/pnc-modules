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
LIBS:Altera
LIBS:ESD_Protection
LIBS:LEM
LIBS:Lattice
LIBS:Oscillators
LIBS:Power_Management
LIBS:RFSolutions
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:leds
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
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm32
LIBS:stm8
LIBS:supertex
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:zetex
LIBS:acs712
LIBS:power_comsumption_acs712-cache
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
L ACS712 U1
U 1 1 5A806F58
P 5800 3900
F 0 "U1" H 5400 4200 60  0000 C CNN
F 1 "ACS712" H 5950 3550 60  0000 R CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5800 3900 60  0001 C CNN
F 3 "" H 5800 3900 60  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A806F8A
P 5000 5150
F 0 "C1" H 5025 5250 50  0000 L CNN
F 1 "100n" H 5025 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5038 5000 50  0001 C CNN
F 3 "" H 5000 5150 50  0001 C CNN
	1    5000 5150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A806FA7
P 5450 5150
F 0 "C2" H 5475 5250 50  0000 L CNN
F 1 "100n" H 5475 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5488 5000 50  0001 C CNN
F 3 "" H 5450 5150 50  0001 C CNN
	1    5450 5150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5A806FCD
P 3700 5000
F 0 "J2" H 3700 5100 50  0000 C CNN
F 1 "Conn_01x02" H 3700 4800 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3700 5000 50  0001 C CNN
F 3 "" H 3700 5000 50  0001 C CNN
	1    3700 5000
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x04 J1
U 1 1 5A80701E
P 3700 3700
F 0 "J1" H 3700 3900 50  0000 C CNN
F 1 "Conn_01x04" H 3700 3400 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 3700 3700 50  0001 C CNN
F 3 "" H 3700 3700 50  0001 C CNN
	1    3700 3700
	-1   0    0    -1  
$EndComp
Text Label 4900 3750 0    60   ~ 0
IP+
Text Label 4900 3850 0    60   ~ 0
IP+
Text Label 4900 4000 0    60   ~ 0
IP-
Text Label 4900 4100 0    60   ~ 0
IP-
Text Label 6400 3850 2    60   ~ 0
OUT
Text Label 6400 4000 2    60   ~ 0
FILTER
$Comp
L GND #PWR01
U 1 1 5A80794D
P 6400 4150
F 0 "#PWR01" H 6400 3900 50  0001 C CNN
F 1 "GND" H 6400 4000 50  0000 C CNN
F 2 "" H 6400 4150 50  0001 C CNN
F 3 "" H 6400 4150 50  0001 C CNN
	1    6400 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5A80799A
P 6400 3700
F 0 "#PWR02" H 6400 3550 50  0001 C CNN
F 1 "+5V" H 6400 3840 50  0000 C CNN
F 2 "" H 6400 3700 50  0001 C CNN
F 3 "" H 6400 3700 50  0001 C CNN
	1    6400 3700
	1    0    0    -1  
$EndComp
Text Label 4250 5000 2    60   ~ 0
IP+
Text Label 4250 5100 2    60   ~ 0
IP-
Wire Wire Line
	5250 3750 4900 3750
Wire Wire Line
	5250 3850 4900 3850
Wire Wire Line
	5250 4000 4900 4000
Wire Wire Line
	5250 4100 4900 4100
Wire Wire Line
	6050 3750 6400 3750
Wire Wire Line
	6050 3850 6400 3850
Wire Wire Line
	6050 4000 6400 4000
Wire Wire Line
	6050 4100 6400 4100
Wire Wire Line
	6400 4100 6400 4150
Wire Wire Line
	6400 3750 6400 3700
Wire Wire Line
	3900 5000 4250 5000
Wire Wire Line
	3900 5100 4250 5100
Wire Wire Line
	3900 3600 4250 3600
Wire Wire Line
	3900 3700 4250 3700
Wire Wire Line
	3900 3900 4250 3900
Wire Wire Line
	4250 3600 4250 3550
Wire Wire Line
	4250 3900 4250 3950
$Comp
L GND #PWR03
U 1 1 5A807E8A
P 4250 3950
F 0 "#PWR03" H 4250 3700 50  0001 C CNN
F 1 "GND" H 4250 3800 50  0000 C CNN
F 2 "" H 4250 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5A807F20
P 4250 3550
F 0 "#PWR04" H 4250 3400 50  0001 C CNN
F 1 "+5V" H 4250 3690 50  0000 C CNN
F 2 "" H 4250 3550 50  0001 C CNN
F 3 "" H 4250 3550 50  0001 C CNN
	1    4250 3550
	1    0    0    -1  
$EndComp
Text Label 4250 3700 2    60   ~ 0
OUT
NoConn ~ 3900 3800
Wire Wire Line
	5000 5000 5000 4850
$Comp
L +5V #PWR05
U 1 1 5A8082EB
P 5000 4850
F 0 "#PWR05" H 5000 4700 50  0001 C CNN
F 1 "+5V" H 5000 4990 50  0000 C CNN
F 2 "" H 5000 4850 50  0001 C CNN
F 3 "" H 5000 4850 50  0001 C CNN
	1    5000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5300 5000 5450
$Comp
L GND #PWR06
U 1 1 5A8083BB
P 5000 5450
F 0 "#PWR06" H 5000 5200 50  0001 C CNN
F 1 "GND" H 5000 5300 50  0000 C CNN
F 2 "" H 5000 5450 50  0001 C CNN
F 3 "" H 5000 5450 50  0001 C CNN
	1    5000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4700 5450 5000
Wire Wire Line
	5450 5300 5450 5450
$Comp
L GND #PWR07
U 1 1 5A80842E
P 5450 5450
F 0 "#PWR07" H 5450 5200 50  0001 C CNN
F 1 "GND" H 5450 5300 50  0000 C CNN
F 2 "" H 5450 5450 50  0001 C CNN
F 3 "" H 5450 5450 50  0001 C CNN
	1    5450 5450
	1    0    0    -1  
$EndComp
Text Label 5450 4700 3    60   ~ 0
FILTER
$Comp
L +5V #PWR08
U 1 1 5A808744
P 6100 4850
F 0 "#PWR08" H 6100 4700 50  0001 C CNN
F 1 "+5V" H 6100 4990 50  0000 C CNN
F 2 "" H 6100 4850 50  0001 C CNN
F 3 "" H 6100 4850 50  0001 C CNN
	1    6100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4850 6100 5450
$Comp
L PWR_FLAG #FLG09
U 1 1 5A808778
P 6100 5450
F 0 "#FLG09" H 6100 5525 50  0001 C CNN
F 1 "PWR_FLAG" H 6100 5600 50  0000 C CNN
F 2 "" H 6100 5450 50  0001 C CNN
F 3 "" H 6100 5450 50  0001 C CNN
	1    6100 5450
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG010
U 1 1 5A808799
P 6450 4850
F 0 "#FLG010" H 6450 4925 50  0001 C CNN
F 1 "PWR_FLAG" H 6450 5000 50  0000 C CNN
F 2 "" H 6450 4850 50  0001 C CNN
F 3 "" H 6450 4850 50  0001 C CNN
	1    6450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4850 6450 5450
$Comp
L GND #PWR011
U 1 1 5A8087D6
P 6450 5450
F 0 "#PWR011" H 6450 5200 50  0001 C CNN
F 1 "GND" H 6450 5300 50  0000 C CNN
F 2 "" H 6450 5450 50  0001 C CNN
F 3 "" H 6450 5450 50  0001 C CNN
	1    6450 5450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
