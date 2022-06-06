EESchema Schematic File Version 4
EELAYER 25 0
EELAYER END
$Descr E 44016.0 34016.0
encoding utf-8
Sheet 1 2
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
L project_symbols:pin_header J2
U 1 1 00000000
P 1800 32500
F 0 "J2" H 1600 32704 30 0 L BNN
F 1 "2X1-pin-header" H 1600 32662 30 0 L BNN
F 2 "jack:pin_header_pkg" H 1800 32500 60 1 C CNN
F 3 "" H 1800 32500 60 1 C CNN
F 4 "2X1-pin-header" H 1800 32500 60 1 C CNN "MPN"
  1 1800 32500
  1 0 0 -1
$EndComp
$Comp
L project_symbols:component_2 J1
U 1 1 00000000
P 1000 32650
F 0 "J1" H 800 33204 30 0 L BNN
F 1 "PJ-614" H 800 33162 30 0 L BNN
F 2 "jack:C145801_12" H 1000 32650 60 1 C CNN
F 3 "" H 1000 32650 60 1 C CNN
F 4 "PJ-614" H 1000 32650 60 1 C CNN "MPN"
F 5 "Hroparts" H 1000 32650 60 1 C CNN "Manufacturer"
  1 1000 32650
  1 0 0 -1
$EndComp
Wire Wire Line
  1300 32550 1500 32550
Wire Wire Line
  1300 32850 1450 32850
Wire Wire Line
  1450 32850 1450 32550
Wire Wire Line
  1300 32450 1500 32450
Text Label 1300 32450 0 40 ~
NEG
Text Label 1300 32550 0 40 ~
POS
Connection ~ 1450 32550
$EndSCHEMATC