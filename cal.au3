#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\ja\cal.kxf
$cal = GUICreate("Kalkulator", 250, 212, 355, 189, -1, 0)
$b1 = GUICtrlCreateButton("1", 52, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b2 = GUICtrlCreateButton("2", 92, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b3 = GUICtrlCreateButton("3", 130, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b4 = GUICtrlCreateButton("4", 52, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b5 = GUICtrlCreateButton("5", 92, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b6 = GUICtrlCreateButton("6", 130, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b7 = GUICtrlCreateButton("7", 52, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b8 = GUICtrlCreateButton("8", 92, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b9 = GUICtrlCreateButton("9", 130, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b10 = GUICtrlCreateButton("0", 52, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b11 = GUICtrlCreateButton("=", 208, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b12 = GUICtrlCreateButton("+", 169, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b13 = GUICtrlCreateButton("-", 169, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b14 = GUICtrlCreateButton("*", 169, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b15 = GUICtrlCreateButton("/", 169, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b16 = GUICtrlCreateButton("1/x", 208, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b17 = GUICtrlCreateButton("%", 208, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b18 = GUICtrlCreateButton("sqrt", 208, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b19 = GUICtrlCreateButton(",", 130, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b20 = GUICtrlCreateButton("+/-", 92, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$b21 = GUICtrlCreateButton("M+", 10, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b22 = GUICtrlCreateButton("MS", 10, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b23 = GUICtrlCreateButton("MR", 10, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$b24 = GUICtrlCreateButton("MC", 10, 68, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$C = GUICtrlCreateButton("C", 180, 36, 60, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$CE = GUICtrlCreateButton("CE", 115, 36, 60, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$back = GUICtrlCreateButton("Backspace", 50, 36, 60, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$l = GUICtrlCreateInput("0,", 16, 0, 225, 21, BitOR($ES_RIGHT,$ES_AUTOHSCROLL))
$okienko = GUICtrlCreateLabel("", 13, 36, 25, 25, -1, $WS_EX_CLIENTEDGE)
GUISetState(@SW_SHOW)
Dim $cal_AccelTable[15][2] = [["1", $b1],["2", $b2],["3", $b3],["4", $b4],["5", $b5],["6", $b6],["7", $b7],["8", $b8],["9", $b9],["0", $b10],["=", $b11],["-", $b13],["x", $b14],["/", $b15],["{BS}", $back]]
GUISetAccelerators($cal_AccelTable)
#EndRegion ### END Koda GUI section ###
$w=0
$z=0
$r=0
$p=0
$k=0
$k1=0
$o=1
$w1=0
While 1
	$lo=GUICtrlRead($l)
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $b1
			b1()
		Case $b2
			b2()
		Case $b3
			b3()
		Case $b4
			b4()
		Case $b5
			b5()
		Case $b6
			b6()
		Case $b7
			b7()
		Case $b8
			b8()
		Case $b9
			b9()
		Case $b10
			b10()
		Case $b11
			b11()
		Case $b12
			b12()
		Case $b13
			b13()
		Case $b14
			b14()
		Case $b15
			b15()
		Case $b16
			b16()
		Case $b17
			b17()
		Case $b18
			b18()
		Case $b19
			b19()
		Case $b20
			b20()
		Case $b21
			b21()
		Case $b22
			b22()
		Case $b23
			b23()
		Case $b24
			b24()
		Case $C
			C()
		Case $CE
			CE()
		Case $back
			back()
		EndSwitch
		If $k1=1 then
		GUICtrlSetData($l,$w)
	EndIf
	if $k1=0 Then
		GUICtrlSetData($l,$w&",")
	EndIf
WEnd

Func b1()	;1
	Select
	case $o=1
		$w=1
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	if $k=0 Then
	$w=$w&"1"
EndIf
If $k=1 Then
	$k1=1
	$w=$w&",1"
	$k=0
	endif
EndSelect

	EndFunc
Func b2()	;2 
	Select
	case $o=1
		$w=2
	guictrlsetdata($l,"2,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
		if $k=0 Then
	$w=$w&"2"
EndIf
If $k=1 Then
	$k1=1
	$w=$w&",2"
	$k=0
	endif
	EndSelect

EndFunc
Func b3()	;3
	Select
	case $o=1
		$w=3
	guictrlsetdata($l,"3,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"3"
	EndSelect
EndFunc
Func b4()	;4
	Select
	case $o=1
		$w=4
	guictrlsetdata($l,"4,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"4"
	EndSelect
EndFunc
Func b5()	;5
	Select
	case $o=1
		$w=5
	guictrlsetdata($l,"5,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"5"
	EndSelect
EndFunc
Func b6()	;6
	Select
	case $o=1
		$w=6
	guictrlsetdata($l,"6,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"6"
	EndSelect
EndFunc
Func b7()	;7
	Select
	case $o=1
		$w=7
	guictrlsetdata($l,"7,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"7"
	EndSelect
EndFunc
Func b8()	;8
	Select
	case $o=1
		$w=8
	guictrlsetdata($l,"8,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"8"
	EndSelect
EndFunc
Func b9()	;9
	Select
	case $o=1
		$w=9
	guictrlsetdata($l,"9,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"9"
	EndSelect
EndFunc
Func b10()	;0
	Select
	case $o=1
		$w=0
	guictrlsetdata($l,"0,")
	$o=0
	$z=0
Case $lo<>0 and $z=0 And $o=0
	$w=$w&"0"
	EndSelect
EndFunc
Func b11()	;=
	Select 
	Case $r=2
$w=$lo+$p	
	Case $r=3
$w=$lo-$p
	case $r=4
$w=$lo*$p
	Case $r=5
$w=$p/$lo
	Case $r=7
$w=$p*$lo/100
EndSelect
EndFunc
Func b12()	;+
	$p=$lo
	$r=2
	$z=1
EndFunc
Func b13()	;- 
	$p=$lo
	$r=3
	$z=1
EndFunc
Func b14()	;*
	$p=$lo
	$r=4	
	$z=1
	$o=1
EndFunc
Func b15()	;/
	$p=$lo
	$r=5
	$z=1	
EndFunc
Func b16()	;1/x
	
EndFunc
Func b17()	;%
	$p=$lo
	$r=7
	$z=1		
EndFunc
Func b18()	;sqrt
	$r=8
	$w=sqrt($lo)
EndFunc
Func b19()	;,
	$k=1
EndFunc
Func b20()	;+/-
	$w=$lo*-1
EndFunc
Func b21()	;M+
	
EndFunc
Func b22()	;MS
	
EndFunc
Func b23()	;MR
	
EndFunc
Func b24()	;MC
	
EndFunc
Func C()	;C
$w=0
$z=0
$r=0
$p=0
$k=0
$k1=0
$o=1
$w1=0	
EndFunc
Func CE()	;CE
	
EndFunc
Func back()	;back
	$w=0
$z=0
$r=0
$p=0
$k=0
$k1=0
$o=1
$w1=0	
EndFunc


