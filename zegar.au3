#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
;~ #include <minclude.au3>
HotKeySet("p","pokaz")
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 292, 101, 563, 363)
GUISetBkColor(0x9DB9EB)
$Button1 = GUICtrlCreateButton("", 141, 40, 8, 8, $WS_GROUP)
GUICtrlSetBkColor(-1, 0xFF0000)
$1 = GUICtrlCreateGraphic(20, 5, 30, 10)
$2 = GUICtrlCreateGraphic(50, 15, 10, 30)
$3 = GUICtrlCreateGraphic(10, 15, 10, 30)
$4 = GUICtrlCreateGraphic(19, 46, 30, 10)
$5 = GUICtrlCreateGraphic(49, 56, 10, 30)
$6 = GUICtrlCreateGraphic(9, 56, 10, 30)
$7 = GUICtrlCreateGraphic(20, 87, 30, 10)
$8 = GUICtrlCreateGraphic(87, 5, 30, 10)
$9 = GUICtrlCreateGraphic(117, 15, 10, 30)
$10 = GUICtrlCreateGraphic(77, 15, 10, 30)
$11 = GUICtrlCreateGraphic(86, 46, 30, 10)
$12 = GUICtrlCreateGraphic(116, 56, 10, 30)
$13 = GUICtrlCreateGraphic(76, 56, 10, 30)
$14 = GUICtrlCreateGraphic(83, 87, 30, 10)
$15 = GUICtrlCreateGraphic(271, 15, 10, 30)
$16 = GUICtrlCreateGraphic(241, 5, 30, 10)
$17 = GUICtrlCreateGraphic(231, 15, 10, 30)
$18 = GUICtrlCreateGraphic(241, 45, 30, 10)
$19 = GUICtrlCreateGraphic(241, 86, 30, 10)
$20 = GUICtrlCreateGraphic(271, 55, 10, 30)
$21 = GUICtrlCreateGraphic(231, 55, 10, 30)
$22 = GUICtrlCreateGraphic(204, 55, 10, 30)
$23 = GUICtrlCreateGraphic(174, 86, 30, 10)
$24 = GUICtrlCreateGraphic(164, 55, 10, 30)
$25 = GUICtrlCreateGraphic(174, 45, 30, 10)
$26 = GUICtrlCreateGraphic(205, 14, 10, 30)
$27 = GUICtrlCreateGraphic(175, 4, 30, 10)
$28 = GUICtrlCreateGraphic(165, 14, 10, 30)
$Button2 = GUICtrlCreateButton("", 141, 56, 8, 8, $WS_GROUP)
GUICtrlSetBkColor(-1, 0xFF0000)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
$l=0
$q=0
$w=0
$e=0
$r=0
q($q)
w($w)
e($e)
r($r)
While 1
$nMsg = GUIGetMsg()
Switch $nMsg
Case $GUI_EVENT_CLOSE
Exit
EndSwitch
u()
WEnd

func u()
   if $q<>StringTrimRight(@HOUR,1) Then
	  p(1)
	  $q=StringTrimRight(@HOUR,1)
	  q($q)
   EndIf
   
   if $w<>StringTrimLeft(@HOUR,1) Then
	  p(2)
	  $w=StringTrimLeft(@HOUR,1)
	  w($w)
   EndIf
   if $e<>StringTrimRight(@MIN,1) Then
	  p(3)
	  $e=StringTrimRight(@MIN,1)
	  e($e)
   EndIf
   
   if $r<>StringTrimLeft(@MIN,1) Then
	  p(4)
	  $r=StringTrimLeft(@MIN,1)
	  r($r)
	  pokaz()
   EndIf
   
   EndFunc

func pokaz()
   Beep(1000,50)
   GUISetState(@SW_show)
	  Sleep(1000)
	  GUISetState(@SW_HIDE)
   endfunc

Func q($l)
   Switch $l
   case 0
   GUICtrlSetBkColor($1, 0xD4D0C8)
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($3, 0x00FF00)  
   GUICtrlSetBkColor($5, 0x00FF00)
   GUICtrlSetBkColor($6, 0x00FF00)
   GUICtrlSetBkColor($7, 0x00FF00)
   Case 1
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   case 2
   GUICtrlSetBkColor($1, 0x00FF00)
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($4, 0x00FF00)
   GUICtrlSetBkColor($6, 0x00FF00)
   GUICtrlSetBkColor($7, 0x00FF00)
   Case 3
   GUICtrlSetBkColor($1, 0x00FF00)
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($4, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   GUICtrlSetBkColor($7, 0x00FF00)
   case 4
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($3, 0x00FF00) 
   GUICtrlSetBkColor($4, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   Case 5
   GUICtrlSetBkColor($1, 0x00FF00)
   GUICtrlSetBkColor($3, 0x00FF00)
   GUICtrlSetBkColor($4, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   GUICtrlSetBkColor($7, 0x00FF00)
    Case 6
   GUICtrlSetBkColor($1, 0x00FF00)
   GUICtrlSetBkColor($3, 0x00FF00)
   GUICtrlSetBkColor($4, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   GUICtrlSetBkColor($6, 0x00FF00)
   GUICtrlSetBkColor($7, 0x00FF00)
   case 7
   GUICtrlSetBkColor($1, 0x00FF00)
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   Case 8
   GUICtrlSetBkColor($1, 0x00FF00)
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($3, 0x00FF00)
   GUICtrlSetBkColor($4, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   GUICtrlSetBkColor($6, 0x00FF00)
   GUICtrlSetBkColor($7, 0x00FF00)
    Case 9
   GUICtrlSetBkColor($1, 0x00FF00)
   GUICtrlSetBkColor($2, 0x00FF00)
   GUICtrlSetBkColor($3, 0x00FF00)
   GUICtrlSetBkColor($4, 0x00FF00)
   GUICtrlSetBkColor($5, 0x00FF00)
   GUICtrlSetBkColor($7, 0x00FF00)
   EndSwitch
EndFunc


func w($l)
   Switch $l
    case 0
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($10, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   GUICtrlSetBkColor($13, 0x00FF00)
   GUICtrlSetBkColor($14, 0x00FF00)
   case 1
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   case 2
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($11, 0x00FF00)
   GUICtrlSetBkColor($13, 0x00FF00)
   GUICtrlSetBkColor($14, 0x00FF00)
   case 3
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($11, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   GUICtrlSetBkColor($14, 0x00FF00)
   case 4
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($10, 0x00FF00) 
   GUICtrlSetBkColor($11, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   case 5
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($10, 0x00FF00)
   GUICtrlSetBkColor($11, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   GUICtrlSetBkColor($14, 0x00FF00)
   case 6
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($10, 0x00FF00)
   GUICtrlSetBkColor($11, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   GUICtrlSetBkColor($13, 0x00FF00)
   GUICtrlSetBkColor($14, 0x00FF00)
   case 7
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   case 8
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($10, 0x00FF00)
   GUICtrlSetBkColor($11, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   GUICtrlSetBkColor($13, 0x00FF00)
   GUICtrlSetBkColor($14, 0x00FF00)
   case 9
   GUICtrlSetBkColor($8, 0x00FF00)
   GUICtrlSetBkColor($9, 0x00FF00)
   GUICtrlSetBkColor($10, 0x00FF00)
   GUICtrlSetBkColor($11, 0x00FF00)
   GUICtrlSetBkColor($12, 0x00FF00)
   GUICtrlSetBkColor($14, 0x00FF00)
   EndSwitch
   EndFunc


Func e($l)
   Switch $l
case 0
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($23, 0x00FF00)
   GUICtrlSetBkColor($24, 0x00FF00)  
   GUICtrlSetBkColor($26, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   GUICtrlSetBkColor($28, 0x00FF00)
   Case 1
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($26, 0x00FF00)
   case 2
   GUICtrlSetBkColor($23, 0x00FF00)
   GUICtrlSetBkColor($24, 0x00FF00)
   GUICtrlSetBkColor($25, 0x00FF00)
   GUICtrlSetBkColor($26, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   Case 3
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($23, 0x00FF00)
   GUICtrlSetBkColor($25, 0x00FF00)
   GUICtrlSetBkColor($26, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   case 4
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($25, 0x00FF00) 
   GUICtrlSetBkColor($26, 0x00FF00)
   GUICtrlSetBkColor($28, 0x00FF00)
   Case 5
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($23, 0x00FF00)
   GUICtrlSetBkColor($25, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   GUICtrlSetBkColor($28, 0x00FF00)
   Case 6
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($23, 0x00FF00)
   GUICtrlSetBkColor($25, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   GUICtrlSetBkColor($28, 0x00FF00)
   GUICtrlSetBkColor($24, 0x00FF00)
   case 7
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($26, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   Case 8
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($23, 0x00FF00)
   GUICtrlSetBkColor($24, 0x00FF00)
   GUICtrlSetBkColor($25, 0x00FF00)
   GUICtrlSetBkColor($26, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   GUICtrlSetBkColor($28, 0x00FF00)
    Case 9
   GUICtrlSetBkColor($22, 0x00FF00)
   GUICtrlSetBkColor($23, 0x00FF00)
   GUICtrlSetBkColor($25, 0x00FF00)
   GUICtrlSetBkColor($26, 0x00FF00)
   GUICtrlSetBkColor($27, 0x00FF00)
   GUICtrlSetBkColor($28, 0x00FF00)
   EndSwitch
EndFunc


func r($l)
   Switch $l
    case 0
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($17, 0x00FF00)  
   GUICtrlSetBkColor($21, 0x00FF00)
   GUICtrlSetBkColor($19, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   Case 1
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   case 2
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($18, 0x00FF00)
   GUICtrlSetBkColor($19, 0x00FF00)
   GUICtrlSetBkColor($21, 0x00FF00)
   Case 3
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($18, 0x00FF00)
   GUICtrlSetBkColor($19, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   case 4
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($17, 0x00FF00) 
   GUICtrlSetBkColor($18, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   Case 5
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($17, 0x00FF00)
   GUICtrlSetBkColor($18, 0x00FF00)
   GUICtrlSetBkColor($19, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   Case 6
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($17, 0x00FF00)
   GUICtrlSetBkColor($18, 0x00FF00)
   GUICtrlSetBkColor($19, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   GUICtrlSetBkColor($21, 0x00FF00)
   case 7
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   Case 8
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($17, 0x00FF00)
   GUICtrlSetBkColor($18, 0x00FF00)
   GUICtrlSetBkColor($19, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   GUICtrlSetBkColor($21, 0x00FF00)
    Case 9
   GUICtrlSetBkColor($15, 0x00FF00)
   GUICtrlSetBkColor($16, 0x00FF00)
   GUICtrlSetBkColor($17, 0x00FF00)
   GUICtrlSetBkColor($18, 0x00FF00)
   GUICtrlSetBkColor($19, 0x00FF00)
   GUICtrlSetBkColor($20, 0x00FF00)
   EndSwitch
   EndFunc

func p($l)
   Switch $l
   case 1
   GUICtrlSetBkColor($1, 0xFFFFFF)
   GUICtrlSetBkColor($2, 0xFFFFFF)
   GUICtrlSetBkColor($3, 0xFFFFFF)
   GUICtrlSetBkColor($4, 0xFFFFFF)
   GUICtrlSetBkColor($5, 0xFFFFFF)
   GUICtrlSetBkColor($6, 0xFFFFFF)
   GUICtrlSetBkColor($7, 0xFFFFFF)
   case 2
   GUICtrlSetBkColor($8, 0xFFFFFF)
   GUICtrlSetBkColor($9, 0xFFFFFF)
   GUICtrlSetBkColor($10, 0xFFFFFF)
   GUICtrlSetBkColor($11, 0xFFFFFF)
   GUICtrlSetBkColor($12, 0xFFFFFF)
   GUICtrlSetBkColor($13, 0xFFFFFF)
   GUICtrlSetBkColor($14, 0xFFFFFF)
   case 4
   GUICtrlSetBkColor($15, 0xFFFFFF)
   GUICtrlSetBkColor($16, 0xFFFFFF)
   GUICtrlSetBkColor($17, 0xFFFFFF)
   GUICtrlSetBkColor($18, 0xFFFFFF)
   GUICtrlSetBkColor($19, 0xFFFFFF)
   GUICtrlSetBkColor($20, 0xFFFFFF)
   GUICtrlSetBkColor($21, 0xFFFFFF)
case 3
   GUICtrlSetBkColor($22, 0xFFFFFF)
   GUICtrlSetBkColor($23, 0xFFFFFF)
   GUICtrlSetBkColor($24, 0xFFFFFF)
   GUICtrlSetBkColor($25, 0xFFFFFF)
   GUICtrlSetBkColor($26, 0xFFFFFF)
   GUICtrlSetBkColor($27, 0xFFFFFF)
   GUICtrlSetBkColor($28, 0xFFFFFF)
   EndSwitch
   EndFunc