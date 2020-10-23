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
L 74471:74S471 U2
U 1 1 5F919D1B
P 7250 3600
F 0 "U2" H 7000 4350 50  0000 C CNN
F 1 "74S471" H 7000 3150 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7000 4450 50  0001 C CNN
F 3 "" H 7000 4450 50  0001 C CNN
	1    7250 3600
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny1606-M U1
U 1 1 5F91D1E8
P 5000 3700
F 0 "U1" H 4550 4550 50  0000 C CNN
F 1 "ATtiny1606-M" H 4600 2800 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-20-1EP_3x3mm_P0.4mm_EP1.7x1.7mm" H 5000 3700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny806_1606_Data_Sheet_40002029A.pdf" H 5000 3700 50  0001 C CNN
	1    5000 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F91FDD0
P 5250 2550
F 0 "C1" H 5365 2596 50  0000 L CNN
F 1 "100nF" H 5365 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5288 2400 50  0001 C CNN
F 3 "~" H 5250 2550 50  0001 C CNN
	1    5250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5F920ACC
P 5000 2350
F 0 "#PWR03" H 5000 2200 50  0001 C CNN
F 1 "+5V" H 5015 2523 50  0000 C CNN
F 2 "" H 5000 2350 50  0001 C CNN
F 3 "" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F9211CD
P 5000 4700
F 0 "#PWR04" H 5000 4450 50  0001 C CNN
F 1 "GND" H 5005 4527 50  0001 C CNN
F 2 "" H 5000 4700 50  0001 C CNN
F 3 "" H 5000 4700 50  0001 C CNN
	1    5000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4700 5000 4600
$Comp
L power:GND #PWR05
U 1 1 5F921BEC
P 5250 2700
F 0 "#PWR05" H 5250 2450 50  0001 C CNN
F 1 "GND" H 5255 2527 50  0001 C CNN
F 2 "" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2350 5000 2400
Wire Wire Line
	5250 2400 5000 2400
Connection ~ 5000 2400
Wire Wire Line
	5000 2400 5000 2800
NoConn ~ 6850 3800
NoConn ~ 6850 3900
$Comp
L power:GND #PWR07
U 1 1 5F925B23
P 7250 4100
F 0 "#PWR07" H 7250 3850 50  0001 C CNN
F 1 "GND" H 7255 3927 50  0001 C CNN
F 2 "" H 7250 4100 50  0001 C CNN
F 3 "" H 7250 4100 50  0001 C CNN
	1    7250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3000 7650 3000
Wire Wire Line
	7950 3100 7650 3100
Wire Wire Line
	7950 3200 7650 3200
Wire Wire Line
	7950 3300 7650 3300
Wire Wire Line
	7950 3400 7650 3400
Wire Wire Line
	7950 3500 7650 3500
Wire Wire Line
	4400 4000 4100 4000
Wire Wire Line
	7950 3600 7650 3600
Wire Wire Line
	4400 4100 4100 4100
Wire Wire Line
	7950 3700 7650 3700
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5F92FA89
P 6050 5050
F 0 "JP1" V 5650 5450 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 5750 5150 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 6050 5050 50  0001 C CNN
F 3 "~" H 6050 5050 50  0001 C CNN
	1    6050 5050
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F935260
P 6050 4800
F 0 "#PWR01" H 6050 4650 50  0001 C CNN
F 1 "+5V" H 6065 4973 50  0000 C CNN
F 2 "" H 6050 4800 50  0001 C CNN
F 3 "" H 6050 4800 50  0001 C CNN
	1    6050 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F9356A9
P 6050 5300
F 0 "#PWR02" H 6050 5050 50  0001 C CNN
F 1 "GND" H 6055 5127 50  0001 C CNN
F 2 "" H 6050 5300 50  0001 C CNN
F 3 "" H 6050 5300 50  0001 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
Text Notes 5451 5042 0    50   ~ 0
7.5 IPS
Text Notes 5467 5134 0    50   ~ 0
15 IPS
Wire Notes Line
	5950 5000 5750 5000
Wire Notes Line
	5950 5100 5750 5100
Text Label 5750 3000 0    50   ~ 0
A0
Text Label 5750 3100 0    50   ~ 0
A1
Text Label 5750 3200 0    50   ~ 0
A2
Text Label 5750 3300 0    50   ~ 0
A3
Text Label 5750 3400 0    50   ~ 0
A4
Text Label 4250 3900 0    50   ~ 0
A5
Text Label 4250 4000 0    50   ~ 0
A6
Text Label 4250 4100 0    50   ~ 0
A7
Text Label 7750 3000 0    50   ~ 0
Q0
Text Label 7750 3100 0    50   ~ 0
Q1
Text Label 7750 3200 0    50   ~ 0
Q2
Text Label 7750 3300 0    50   ~ 0
Q3
Text Label 7750 3400 0    50   ~ 0
Q4
Text Label 7750 3500 0    50   ~ 0
Q5
Text Label 7750 3600 0    50   ~ 0
Q6
Text Label 7750 3700 0    50   ~ 0
Q7
$Comp
L power:+5V #PWR06
U 1 1 5F94DBD8
P 7250 2800
F 0 "#PWR06" H 7250 2650 50  0001 C CNN
F 1 "+5V" H 7265 2973 50  0000 C CNN
F 2 "" H 7250 2800 50  0001 C CNN
F 3 "" H 7250 2800 50  0001 C CNN
	1    7250 2800
	1    0    0    -1  
$EndComp
Text Notes 3950 2400 0    79   ~ 0
Microcontroller
Text Notes 7000 2500 0    79   ~ 0
Pinlist down\nto TD20A\ncircuit board
Text Label 5750 3900 0    50   ~ 0
Q7
Text Label 5750 4000 0    50   ~ 0
Q6
Text Label 5750 3500 0    50   ~ 0
Q0
Text Label 5750 3600 0    50   ~ 0
Q1
Text Label 5750 3700 0    50   ~ 0
Q2
Text Label 5750 4400 0    50   ~ 0
Q3
Text Label 5750 4200 0    50   ~ 0
Q4
Text Label 5750 4100 0    50   ~ 0
Q5
Wire Wire Line
	5600 3000 5900 3000
Wire Wire Line
	5600 3100 5900 3100
Wire Wire Line
	5600 3200 5900 3200
Wire Wire Line
	5600 3300 5900 3300
Wire Wire Line
	5600 3400 5900 3400
Wire Wire Line
	5600 3500 5900 3500
Wire Wire Line
	5600 3600 5900 3600
Wire Wire Line
	5600 3700 5900 3700
Wire Wire Line
	4100 3900 4400 3900
Wire Wire Line
	5600 3900 5900 3900
Wire Wire Line
	5600 4000 5900 4000
Wire Wire Line
	5600 4100 5900 4100
Wire Wire Line
	5600 4200 5900 4200
Wire Wire Line
	5600 4400 5900 4400
Wire Wire Line
	6850 3000 6550 3000
Wire Wire Line
	6850 3100 6550 3100
Wire Wire Line
	6850 3200 6550 3200
Wire Wire Line
	6850 3300 6550 3300
Wire Wire Line
	6850 3400 6550 3400
Wire Wire Line
	6850 3500 6550 3500
Wire Wire Line
	6850 3600 6550 3600
Wire Wire Line
	6850 3700 6550 3700
Text Label 6650 3000 0    50   ~ 0
A0
Text Label 6650 3100 0    50   ~ 0
A1
Text Label 6650 3200 0    50   ~ 0
A2
Text Label 6650 3300 0    50   ~ 0
A3
Text Label 6650 3400 0    50   ~ 0
A4
Text Label 6650 3500 0    50   ~ 0
A5
Text Label 6650 3600 0    50   ~ 0
A6
Text Label 6650 3700 0    50   ~ 0
A7
Text Label 5750 4300 0    50   ~ 0
IPS_SELECT
Wire Wire Line
	6150 5050 6250 5050
Wire Wire Line
	6250 5050 6250 4300
Wire Wire Line
	6250 4300 5600 4300
$EndSCHEMATC
