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
L Beeper_Library:PCAL9555 U1
U 1 1 61515305
P 6700 1900
F 0 "U1" H 6700 2670 50  0000 C CNN
F 1 "PCAL9555" H 6700 2577 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-24_4.4x7.8mm_Pitch0.65mm" H 6900 1900 50  0001 C CNN
F 3 "" H 6900 1900 50  0001 C CNN
	1    6700 1900
	1    0    0    -1  
$EndComp
$Comp
L Beeper_Library:PCAL9555 U2
U 1 1 61516ED8
P 6750 3450
F 0 "U2" H 6750 4220 50  0000 C CNN
F 1 "PCAL9555" H 6750 4127 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-24_4.4x7.8mm_Pitch0.65mm" H 6950 3450 50  0001 C CNN
F 3 "" H 6950 3450 50  0001 C CNN
	1    6750 3450
	1    0    0    -1  
$EndComp
$Comp
L Beeper_Library:PCAL9555 U3
U 1 1 615181C7
P 6800 5200
F 0 "U3" H 6800 5970 50  0000 C CNN
F 1 "PCAL9555" H 6800 5877 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-24_4.4x7.8mm_Pitch0.65mm" H 7000 5200 50  0001 C CNN
F 3 "" H 7000 5200 50  0001 C CNN
	1    6800 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J2
U 1 1 6152CB68
P 8000 2050
F 0 "J2" H 8080 2042 50  0000 L CNN
F 1 "Conn_01x16" H 8080 1949 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 8000 2050 50  0001 C CNN
F 3 "~" H 8000 2050 50  0001 C CNN
	1    8000 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J3
U 1 1 6152E8B6
P 8000 3650
F 0 "J3" H 8080 3642 50  0000 L CNN
F 1 "Conn_01x16" H 8080 3549 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 8000 3650 50  0001 C CNN
F 3 "~" H 8000 3650 50  0001 C CNN
	1    8000 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J4
U 1 1 61530CB6
P 8000 5250
F 0 "J4" H 8080 5242 50  0000 L CNN
F 1 "Conn_01x16" H 8080 5149 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 8000 5250 50  0001 C CNN
F 3 "~" H 8000 5250 50  0001 C CNN
	1    8000 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 61534C1A
P 4500 1600
F 0 "#PWR0101" H 4500 1450 50  0001 C CNN
F 1 "+3.3V" H 4515 1776 50  0000 C CNN
F 2 "" H 4500 1600 50  0001 C CNN
F 3 "" H 4500 1600 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6153581C
P 4400 2500
F 0 "#PWR0102" H 4400 2250 50  0001 C CNN
F 1 "GND" H 4405 2324 50  0000 C CNN
F 2 "" H 4400 2500 50  0001 C CNN
F 3 "" H 4400 2500 50  0001 C CNN
	1    4400 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 615360F5
P 6200 2500
F 0 "#PWR0103" H 6200 2250 50  0001 C CNN
F 1 "GND" H 6205 2324 50  0000 C CNN
F 2 "" H 6200 2500 50  0001 C CNN
F 3 "" H 6200 2500 50  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61536540
P 6250 4050
F 0 "#PWR0104" H 6250 3800 50  0001 C CNN
F 1 "GND" H 6255 3874 50  0000 C CNN
F 2 "" H 6250 4050 50  0001 C CNN
F 3 "" H 6250 4050 50  0001 C CNN
	1    6250 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61536993
P 6300 5800
F 0 "#PWR0105" H 6300 5550 50  0001 C CNN
F 1 "GND" H 6305 5624 50  0000 C CNN
F 2 "" H 6300 5800 50  0001 C CNN
F 3 "" H 6300 5800 50  0001 C CNN
	1    6300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 61536F1F
P 7200 1400
F 0 "#PWR0106" H 7200 1250 50  0001 C CNN
F 1 "+3.3V" H 7215 1576 50  0000 C CNN
F 2 "" H 7200 1400 50  0001 C CNN
F 3 "" H 7200 1400 50  0001 C CNN
	1    7200 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 61538336
P 7250 2950
F 0 "#PWR0107" H 7250 2800 50  0001 C CNN
F 1 "+3.3V" H 7265 3126 50  0000 C CNN
F 2 "" H 7250 2950 50  0001 C CNN
F 3 "" H 7250 2950 50  0001 C CNN
	1    7250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 6153880B
P 7300 4700
F 0 "#PWR0108" H 7300 4550 50  0001 C CNN
F 1 "+3.3V" H 7315 4876 50  0000 C CNN
F 2 "" H 7300 4700 50  0001 C CNN
F 3 "" H 7300 4700 50  0001 C CNN
	1    7300 4700
	1    0    0    -1  
$EndComp
Text Label 4250 1800 0    50   ~ 0
SCL
Text Label 7200 1600 0    50   ~ 0
SCL
Text Label 7250 3150 0    50   ~ 0
SCL
Text Label 7300 4900 0    50   ~ 0
SCL
Text Label 4250 2000 0    50   ~ 0
SDA
Text Label 7200 1500 0    50   ~ 0
SDA
Text Label 7250 3050 0    50   ~ 0
SDA
Text Label 7300 4800 0    50   ~ 0
SDA
NoConn ~ 6200 1400
NoConn ~ 6250 2950
NoConn ~ 6300 4700
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 6153BE2A
P 5200 1450
F 0 "JP1" H 5200 1660 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 5200 1567 50  0000 C CNN
F 2 "SparkFun:SMT-JUMPER_3_NO_SILK" H 5200 1450 50  0001 C CNN
F 3 "~" H 5200 1450 50  0001 C CNN
	1    5200 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6153CD2F
P 5000 1450
F 0 "#PWR0109" H 5000 1200 50  0001 C CNN
F 1 "GND" H 5005 1274 50  0000 C CNN
F 2 "" H 5000 1450 50  0001 C CNN
F 3 "" H 5000 1450 50  0001 C CNN
	1    5000 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 6153D22F
P 5400 1450
F 0 "#PWR0110" H 5400 1300 50  0001 C CNN
F 1 "+3.3V" H 5415 1626 50  0000 C CNN
F 2 "" H 5400 1450 50  0001 C CNN
F 3 "" H 5400 1450 50  0001 C CNN
	1    5400 1450
	1    0    0    -1  
$EndComp
Text Label 5200 1600 3    50   ~ 0
A2
$Comp
L power:GND #PWR0111
U 1 1 6153DCA8
P 6000 1500
F 0 "#PWR0111" H 6000 1250 50  0001 C CNN
F 1 "GND" H 6005 1324 50  0000 C CNN
F 2 "" H 6000 1500 50  0001 C CNN
F 3 "" H 6000 1500 50  0001 C CNN
	1    6000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 615412BD
P 6000 4800
F 0 "#PWR0112" H 6000 4650 50  0001 C CNN
F 1 "+3.3V" H 6015 4976 50  0000 C CNN
F 2 "" H 6000 4800 50  0001 C CNN
F 3 "" H 6000 4800 50  0001 C CNN
	1    6000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1500 6000 1500
Text Label 6200 1600 2    50   ~ 0
A2
Text Label 6250 3150 2    50   ~ 0
A2
$Comp
L power:+3.3V #PWR0113
U 1 1 615459A5
P 7500 3250
F 0 "#PWR0113" H 7500 3100 50  0001 C CNN
F 1 "+3.3V" H 7515 3426 50  0000 C CNN
F 2 "" H 7500 3250 50  0001 C CNN
F 3 "" H 7500 3250 50  0001 C CNN
	1    7500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3250 7250 3250
$Comp
L power:GND #PWR0114
U 1 1 6154686A
P 7450 1700
F 0 "#PWR0114" H 7450 1450 50  0001 C CNN
F 1 "GND" H 7455 1524 50  0000 C CNN
F 2 "" H 7450 1700 50  0001 C CNN
F 3 "" H 7450 1700 50  0001 C CNN
	1    7450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1700 7200 1700
$Comp
L power:GND #PWR0115
U 1 1 615473A2
P 5900 3100
F 0 "#PWR0115" H 5900 2850 50  0001 C CNN
F 1 "GND" H 5905 2924 50  0000 C CNN
F 2 "" H 5900 3100 50  0001 C CNN
F 3 "" H 5900 3100 50  0001 C CNN
	1    5900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3050 5900 3050
Wire Wire Line
	5900 3050 5900 3100
$Comp
L power:GND #PWR0116
U 1 1 61547DAE
P 7550 5000
F 0 "#PWR0116" H 7550 4750 50  0001 C CNN
F 1 "GND" H 7555 4824 50  0000 C CNN
F 2 "" H 7550 5000 50  0001 C CNN
F 3 "" H 7550 5000 50  0001 C CNN
	1    7550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5000 7300 5000
Wire Wire Line
	6300 4800 6000 4800
Text Label 6300 4900 2    50   ~ 0
A2
Text Label 6200 1700 2    50   ~ 0
P1
Text Label 6200 1800 2    50   ~ 0
P2
Text Label 6200 1900 2    50   ~ 0
P3
Text Label 6200 2000 2    50   ~ 0
P4
Text Label 6200 2100 2    50   ~ 0
P5
Text Label 6200 2200 2    50   ~ 0
P6
Text Label 6200 2300 2    50   ~ 0
P7
Text Label 6200 2400 2    50   ~ 0
P8
Text Label 7200 2500 0    50   ~ 0
P9
Text Label 7200 2400 0    50   ~ 0
P10
Text Label 7200 2300 0    50   ~ 0
P11
Text Label 7200 2200 0    50   ~ 0
P12
Text Label 7200 2100 0    50   ~ 0
P13
Text Label 7200 2000 0    50   ~ 0
P14
Text Label 7200 1900 0    50   ~ 0
P15
Text Label 7200 1800 0    50   ~ 0
P16
Text Label 7250 4050 0    50   ~ 0
P25
Text Label 7250 3950 0    50   ~ 0
P26
Text Label 7250 3850 0    50   ~ 0
P27
Text Label 7250 3750 0    50   ~ 0
P28
Text Label 7250 3650 0    50   ~ 0
P29
Text Label 7250 3550 0    50   ~ 0
P30
Text Label 7250 3450 0    50   ~ 0
P31
Text Label 7250 3350 0    50   ~ 0
P32
Text Label 7300 5800 0    50   ~ 0
P41
Text Label 7300 5700 0    50   ~ 0
P42
Text Label 7300 5600 0    50   ~ 0
P43
Text Label 7300 5500 0    50   ~ 0
P44
Text Label 7300 5400 0    50   ~ 0
P45
Text Label 7300 5300 0    50   ~ 0
P46
Text Label 7300 5200 0    50   ~ 0
P47
Text Label 7300 5100 0    50   ~ 0
P48
Text Label 6250 3250 2    50   ~ 0
P17
Text Label 6250 3350 2    50   ~ 0
P18
Text Label 6250 3450 2    50   ~ 0
P19
Text Label 6250 3550 2    50   ~ 0
P20
Text Label 6250 3650 2    50   ~ 0
P21
Text Label 6250 3750 2    50   ~ 0
P22
Text Label 6250 3850 2    50   ~ 0
P23
Text Label 6250 3950 2    50   ~ 0
P24
Text Label 6300 5000 2    50   ~ 0
P33
Text Label 6300 5100 2    50   ~ 0
P34
Text Label 6300 5200 2    50   ~ 0
P35
Text Label 6300 5300 2    50   ~ 0
P36
Text Label 6300 5400 2    50   ~ 0
P37
Text Label 6300 5500 2    50   ~ 0
P38
Text Label 6300 5600 2    50   ~ 0
P39
Text Label 6300 5700 2    50   ~ 0
P40
Text Label 7800 1350 2    50   ~ 0
P1
Text Label 7800 1450 2    50   ~ 0
P2
Text Label 7800 1550 2    50   ~ 0
P3
Text Label 7800 1650 2    50   ~ 0
P4
Text Label 7800 1750 2    50   ~ 0
P5
Text Label 7800 1850 2    50   ~ 0
P6
Text Label 7800 1950 2    50   ~ 0
P7
Text Label 7800 2050 2    50   ~ 0
P8
Text Label 7800 2150 2    50   ~ 0
P9
Text Label 7800 2250 2    50   ~ 0
P10
Text Label 7800 2350 2    50   ~ 0
P11
Text Label 7800 2450 2    50   ~ 0
P12
Text Label 7800 2550 2    50   ~ 0
P13
Text Label 7800 2650 2    50   ~ 0
P14
Text Label 7800 2750 2    50   ~ 0
P15
Text Label 7800 2850 2    50   ~ 0
P16
Text Label 7800 2950 2    50   ~ 0
P17
Text Label 7800 3050 2    50   ~ 0
P18
Text Label 7800 3150 2    50   ~ 0
P19
Text Label 7800 3250 2    50   ~ 0
P20
Text Label 7800 3350 2    50   ~ 0
P21
Text Label 7800 3450 2    50   ~ 0
P22
Text Label 7800 3550 2    50   ~ 0
P23
Text Label 7800 3650 2    50   ~ 0
P24
Text Label 7800 3750 2    50   ~ 0
P25
Text Label 7800 3850 2    50   ~ 0
P26
Text Label 7800 3950 2    50   ~ 0
P27
Text Label 7800 4050 2    50   ~ 0
P28
Text Label 7800 4150 2    50   ~ 0
P29
Text Label 7800 4250 2    50   ~ 0
P30
Text Label 7800 4350 2    50   ~ 0
P31
Text Label 7800 4450 2    50   ~ 0
P32
Text Label 7800 4550 2    50   ~ 0
P33
Text Label 7800 4650 2    50   ~ 0
P34
Text Label 7800 4750 2    50   ~ 0
P35
Text Label 7800 4850 2    50   ~ 0
P36
Text Label 7800 4950 2    50   ~ 0
P37
Text Label 7800 5050 2    50   ~ 0
P38
Text Label 7800 5150 2    50   ~ 0
P39
Text Label 7800 5250 2    50   ~ 0
P40
Text Label 7800 5350 2    50   ~ 0
P41
Text Label 7800 5450 2    50   ~ 0
P42
Text Label 7800 5550 2    50   ~ 0
P43
Text Label 7800 5650 2    50   ~ 0
P44
Text Label 7800 5750 2    50   ~ 0
P45
Text Label 7800 5850 2    50   ~ 0
P46
Text Label 7800 5950 2    50   ~ 0
P47
Text Label 7800 6050 2    50   ~ 0
P48
Text Label 8350 1350 2    50   ~ 0
P1
Text Label 8350 1450 2    50   ~ 0
P2
Text Label 8350 1550 2    50   ~ 0
P3
Text Label 8350 1650 2    50   ~ 0
P4
Text Label 8350 1750 2    50   ~ 0
P5
Text Label 8350 1850 2    50   ~ 0
P6
Text Label 8350 1950 2    50   ~ 0
P7
Text Label 8350 2050 2    50   ~ 0
P8
Text Label 8350 2150 2    50   ~ 0
P9
Text Label 8350 2250 2    50   ~ 0
P10
Text Label 8350 2350 2    50   ~ 0
P11
Text Label 8350 2450 2    50   ~ 0
P12
Text Label 8350 2550 2    50   ~ 0
P13
Text Label 8350 2650 2    50   ~ 0
P14
Text Label 8350 2750 2    50   ~ 0
P15
Text Label 8350 2850 2    50   ~ 0
P16
Text Label 8350 2950 2    50   ~ 0
P17
Text Label 8350 3050 2    50   ~ 0
P18
Text Label 8350 3150 2    50   ~ 0
P19
Text Label 8350 3250 2    50   ~ 0
P20
Text Label 8350 3350 2    50   ~ 0
P21
Text Label 8350 3450 2    50   ~ 0
P22
Text Label 8350 3550 2    50   ~ 0
P23
Text Label 8350 3650 2    50   ~ 0
P24
Text Label 8350 3750 2    50   ~ 0
P25
Text Label 8350 3850 2    50   ~ 0
P26
Text Label 8350 3950 2    50   ~ 0
P27
Text Label 8350 4050 2    50   ~ 0
P28
Text Label 8350 4150 2    50   ~ 0
P29
Text Label 8350 4250 2    50   ~ 0
P30
Text Label 8350 4350 2    50   ~ 0
P31
Text Label 8350 4450 2    50   ~ 0
P32
Text Label 8350 4550 2    50   ~ 0
P33
Text Label 8350 4650 2    50   ~ 0
P34
Text Label 8350 4750 2    50   ~ 0
P35
Text Label 8350 4850 2    50   ~ 0
P36
Text Label 8350 4950 2    50   ~ 0
P37
Text Label 8350 5050 2    50   ~ 0
P38
Text Label 8350 5150 2    50   ~ 0
P39
Text Label 8350 5250 2    50   ~ 0
P40
Text Label 8350 5350 2    50   ~ 0
P41
Text Label 8350 5450 2    50   ~ 0
P42
Text Label 8350 5550 2    50   ~ 0
P43
Text Label 8350 5650 2    50   ~ 0
P44
Text Label 8350 5750 2    50   ~ 0
P45
$Comp
L Beeper_Library:Conn_01x47_Male J5
U 1 1 61522BCB
P 8550 3250
F 0 "J5" H 8522 2875 50  0000 R CNN
F 1 "Conn_01x47_Male" H 8522 2782 50  0000 R CNN
F 2 "beeper:elco-47" H 8550 3250 50  0001 C CNN
F 3 "~" H 8550 3250 50  0001 C CNN
	1    8550 3250
	-1   0    0    -1  
$EndComp
Text Label 8350 5850 2    50   ~ 0
P46
Text Label 8350 5950 2    50   ~ 0
P47
$Comp
L Device:C_Small C1
U 1 1 61514923
P 4100 3050
F 0 "C1" H 4008 3003 50  0000 R CNN
F 1 ".1uF" H 4008 3096 50  0000 R CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4100 3050 50  0001 C CNN
F 3 "~" H 4100 3050 50  0001 C CNN
	1    4100 3050
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61515578
P 4600 3050
F 0 "C2" H 4508 3003 50  0000 R CNN
F 1 ".1uF" H 4508 3096 50  0000 R CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4600 3050 50  0001 C CNN
F 3 "~" H 4600 3050 50  0001 C CNN
	1    4600 3050
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 615160B9
P 5150 3050
F 0 "C3" H 5058 3003 50  0000 R CNN
F 1 ".1uF" H 5058 3096 50  0000 R CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5150 3050 50  0001 C CNN
F 3 "~" H 5150 3050 50  0001 C CNN
	1    5150 3050
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 61516F4B
P 4100 3150
F 0 "#PWR0117" H 4100 2900 50  0001 C CNN
F 1 "GND" H 4105 2974 50  0000 C CNN
F 2 "" H 4100 3150 50  0001 C CNN
F 3 "" H 4100 3150 50  0001 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61517395
P 4600 3150
F 0 "#PWR0118" H 4600 2900 50  0001 C CNN
F 1 "GND" H 4605 2974 50  0000 C CNN
F 2 "" H 4600 3150 50  0001 C CNN
F 3 "" H 4600 3150 50  0001 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 61517766
P 5150 3150
F 0 "#PWR0119" H 5150 2900 50  0001 C CNN
F 1 "GND" H 5155 2974 50  0000 C CNN
F 2 "" H 5150 3150 50  0001 C CNN
F 3 "" H 5150 3150 50  0001 C CNN
	1    5150 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 61517A6B
P 4100 2950
F 0 "#PWR0120" H 4100 2800 50  0001 C CNN
F 1 "+3.3V" H 4115 3126 50  0000 C CNN
F 2 "" H 4100 2950 50  0001 C CNN
F 3 "" H 4100 2950 50  0001 C CNN
	1    4100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0121
U 1 1 61518091
P 4600 2950
F 0 "#PWR0121" H 4600 2800 50  0001 C CNN
F 1 "+3.3V" H 4615 3126 50  0000 C CNN
F 2 "" H 4600 2950 50  0001 C CNN
F 3 "" H 4600 2950 50  0001 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 6151845C
P 5150 2950
F 0 "#PWR0122" H 5150 2800 50  0001 C CNN
F 1 "+3.3V" H 5165 3126 50  0000 C CNN
F 2 "" H 5150 2950 50  0001 C CNN
F 3 "" H 5150 2950 50  0001 C CNN
	1    5150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61569881
P 3250 2900
F 0 "#FLG0101" H 3250 2975 50  0001 C CNN
F 1 "PWR_FLAG" H 3250 3076 50  0000 C CNN
F 2 "" H 3250 2900 50  0001 C CNN
F 3 "~" H 3250 2900 50  0001 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6156A76C
P 3650 2900
F 0 "#FLG0102" H 3650 2975 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 3076 50  0000 C CNN
F 2 "" H 3650 2900 50  0001 C CNN
F 3 "~" H 3650 2900 50  0001 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 6156AB34
P 3650 2900
F 0 "#PWR0123" H 3650 2650 50  0001 C CNN
F 1 "GND" H 3655 2724 50  0000 C CNN
F 2 "" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0124
U 1 1 6156AF2D
P 3050 3100
F 0 "#PWR0124" H 3050 2950 50  0001 C CNN
F 1 "+3.3V" H 3065 3276 50  0000 C CNN
F 2 "" H 3050 3100 50  0001 C CNN
F 3 "" H 3050 3100 50  0001 C CNN
	1    3050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2900 3250 3100
Wire Wire Line
	3250 3100 3050 3100
$Comp
L Connector:8P8C J1
U 1 1 6161053C
P 3850 2000
F 0 "J1" H 3908 2670 50  0000 C CNN
F 1 "8P8C" H 3908 2577 50  0000 C CNN
F 2 "SparkFun:RJ45-8" V 3850 2025 50  0001 C CNN
F 3 "~" V 3850 2025 50  0001 C CNN
	1    3850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2300 4400 2500
Wire Wire Line
	4500 1600 4250 1600
Connection ~ 4250 1600
Wire Wire Line
	4250 2300 4400 2300
Wire Wire Line
	4400 2300 4400 2200
Wire Wire Line
	4400 2200 4250 2200
Connection ~ 4400 2300
Wire Wire Line
	4400 2200 4400 2100
Wire Wire Line
	4400 2100 4250 2100
Connection ~ 4400 2200
Wire Wire Line
	4400 2100 4400 1900
Wire Wire Line
	4400 1900 4250 1900
Connection ~ 4400 2100
Wire Wire Line
	4250 1600 4250 1700
$EndSCHEMATC
