HotKeySet("{esc}","koniec")


#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Documents and Settings\Andrzej\Pulpit\Koda\tricks.kxf
$tricks = GUICreate("tricks", 131, 301, 438, 142)
$ok = GUICtrlCreateButton("ok", 8, 272, 51, 25)
$reset = GUICtrlCreateButton("reset", 72, 272, 51, 25)
$z = GUICtrlCreateButton("z", 59, 272, 13, 9)
$s = GUICtrlCreateButton("s", 60, 286, 13, 9)
$i1 = GUICtrlCreateInput("", 100, 5, 25, 21)
$i2 = GUICtrlCreateInput("", 100, 31, 25, 21)
$i3 = GUICtrlCreateInput("", 100, 57, 25, 21)
$i4 = GUICtrlCreateInput("", 100, 83, 25, 21)
$i5 = GUICtrlCreateInput("", 100, 109, 25, 21)
$i6 = GUICtrlCreateInput("", 100, 135, 25, 21)
$i7 = GUICtrlCreateInput("", 100, 161, 25, 21)
$i8 = GUICtrlCreateInput("", 100, 187, 25, 21)
$i9 = GUICtrlCreateInput("", 100, 213, 25, 21)
$i10 = GUICtrlCreateInput("", 100, 239, 25, 21)
$in1 = GUICtrlCreateInput("", 5, 5, 90, 21)
$in2 = GUICtrlCreateInput("", 5, 31, 89, 21)
$in3 = GUICtrlCreateInput("", 5, 57, 89, 21)
$in4 = GUICtrlCreateInput("", 5, 83, 89, 21)
$in5 = GUICtrlCreateInput("", 5, 109, 89, 21)
$in6 = GUICtrlCreateInput("", 5, 135, 89, 21)
$in7 = GUICtrlCreateInput("", 5, 161, 89, 21)
$in8 = GUICtrlCreateInput("", 5, 187, 89, 21)
$in9 = GUICtrlCreateInput("", 5, 213, 89, 21)
$in10 = GUICtrlCreateInput("", 5, 239, 89, 21)
Dim $tricks_AccelTable[1][2] = [["{Enter}", $ok]]
GUISetAccelerators($tricks_AccelTable)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
if FileExists("seting.ini") Then
$t1=IniRead("seting.ini","dane","1","")
GUICtrlSetData($in1,$t1)
$t2=IniRead("seting.ini","dane","2","")
GUICtrlSetData($in2,$t2)
$t3=IniRead("seting.ini","dane","3","")
GUICtrlSetData($in3,$t3)
$t4=IniRead("seting.ini","dane","4","")
GUICtrlSetData($in4,$t4)
$t5=IniRead("seting.ini","dane","5","")
GUICtrlSetData($in5,$t5)
$t6=IniRead("seting.ini","dane","6","")
GUICtrlSetData($in6,$t6)
$t7=IniRead("seting.ini","dane","7","")
GUICtrlSetData($in7,$t7)
$t8=IniRead("seting.ini","dane","8","")
GUICtrlSetData($in8,$t8)
$t9=IniRead("seting.ini","dane","9","")
GUICtrlSetData($in9,$t9)
$t10=IniRead("seting.ini","dane","10","")
GUICtrlSetData($in10,$t10)
EndIf

$1=0
$2=0
$3=0
$4=0
$5=0
$6=0
$7=0
$8=0
$9=0
$10=0
$msg=0
While $msg<>$GUI_EVENT_CLOSE
	$msg = GUIGetMsg()
		
	If $msg = $z Then
		w()
	EndIf
	If $msg = $s Then
		res()
	EndIf
	$w = 0
		If GUICtrlRead($i1) >0 And 	GUICtrlRead($i1)<11 Then
	$1= GUICtrlRead($in1)&GUICtrlRead($i1)
	$w=$w+1
	EndIf

	
	If GUICtrlRead($i2) >0 And 	GUICtrlRead($i2)<11 Then
	$2= GUICtrlRead($in2)&GUICtrlRead($i2)
	$w=$w+1
EndIf

If GUICtrlRead($i3) >0 And 	GUICtrlRead($i3)<11 Then
	$3= GUICtrlRead($in3)&GUICtrlRead($i3)
	$w=$w+1
EndIf

If GUICtrlRead($i4) >0 And 	GUICtrlRead($i4)<11 Then
	$4= GUICtrlRead($in4)&GUICtrlRead($i4)
	$w=$w+1
EndIf

If GUICtrlRead($i5) >0 And 	GUICtrlRead($i5)<11 Then
	$5= GUICtrlRead($in5)&GUICtrlRead($i5)
	$w=$w+1
EndIf

If GUICtrlRead($i6) >0 And 	GUICtrlRead($i6)<11 Then
	$6= GUICtrlRead($in6)&GUICtrlRead($i6)
	$w=$w+1
	EndIf
	
	If GUICtrlRead($i7) >0 And 	GUICtrlRead($i7)<11 Then
	$7= GUICtrlRead($in7)&GUICtrlRead($i7)
	$w=$w+1
EndIf

If GUICtrlRead($i8) >0 And 	GUICtrlRead($i8)<11 Then
	$8= GUICtrlRead($in8)&GUICtrlRead($i8)
	$w=$w+1
EndIf

If GUICtrlRead($i9) >0 And 	GUICtrlRead($i9)<11 Then
	$9= GUICtrlRead($in9)&GUICtrlRead($i9)
	$w=$w+1
EndIf

If GUICtrlRead($i10) >0 And 	GUICtrlRead($i10)<11 Then
	$10= GUICtrlRead($in10)&GUICtrlRead($i10)
	$w=$w+1
EndIf

If $msg = $reset Then
	reset()
EndIf
	If $msg = $ok Then
			Select 
	Case $w = 1
		GUICtrlSetData($in1, $1)
		WinActivate("Football Team")
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
		zapisz()
		s()
		Exit
	Case $w = 2
			
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		WinActivate("Football Team")
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()
			s()
			exit
	Case $w = 3
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
			Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
					zapisz()	
					s()
				Exit
	Case $w = 4
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
			Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
				zapisz()
				s()
				Exit
	Case $w = 5
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
		
	Case $w = 6
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
	Case $w = 7
				WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
					Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()
			s()
				Exit
	Case $w = 8
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		GUICtrlSetData($in8, $8)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i8) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i8) = 2
				Send("{RIGHT}")
			Case guictrlread($i8) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
		
	Case $w = 9
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		GUICtrlSetData($in8, $8)
		GUICtrlSetData($in9, $9)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i8) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i8) = 2
				Send("{RIGHT}")
			Case guictrlread($i8) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
			Case guictrlread($i9) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i9) = 2
				Send("{RIGHT}")
			Case guictrlread($i9) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
s()			
				Exit
	
	Case $w = 10
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		GUICtrlSetData($in8, $8)
		GUICtrlSetData($in9, $9)
		GUICtrlSetData($in10, $10)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
			Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
			Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i8) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i8) = 2
				Send("{RIGHT}")
			Case guictrlread($i8) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i9) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i9) = 2
				Send("{RIGHT}")
			Case guictrlread($i9) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i10) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i10) = 2
				Send("{RIGHT}")
			Case guictrlread($i10) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
			EndSelect
			EndIf

 WEnd
Func s()
IniWrite("seting.ini","w","1",GUICtrlRead($i1))
IniWrite("seting.ini","w","2",GUICtrlRead($i2))
IniWrite("seting.ini","w","3",GUICtrlRead($i3))
IniWrite("seting.ini","w","4",GUICtrlRead($i4))
IniWrite("seting.ini","w","5",GUICtrlRead($i5))
IniWrite("seting.ini","w","6",GUICtrlRead($i6))
IniWrite("seting.ini","w","7",GUICtrlRead($i7))
IniWrite("seting.ini","w","8",GUICtrlRead($i8))
IniWrite("seting.ini","w","9",GUICtrlRead($i9))
IniWrite("seting.ini","w","10",GUICtrlRead($i10))
EndFunc
	

Func w()
	if FileExists("seting.ini") Then
		$w1=IniRead("seting.ini","w","1","")
GUICtrlSetData($i1,$w1)
$w2=IniRead("seting.ini","w","2","")
GUICtrlSetData($i2,$w2)
$w3=IniRead("seting.ini","w","3","")
GUICtrlSetData($i3,$w3)
$w4=IniRead("seting.ini","w","4","")
GUICtrlSetData($i4,$w4)
$w5=IniRead("seting.ini","w","5","")
GUICtrlSetData($i5,$w5)
$w6=IniRead("seting.ini","w","6","")
GUICtrlSetData($i6,$w6)
$w7=IniRead("seting.ini","w","7","")
GUICtrlSetData($i7,$w7)
$w8=IniRead("seting.ini","w","8","")
GUICtrlSetData($i8,$w8)
$w9=IniRead("seting.ini","w","9","")
GUICtrlSetData($i9,$w9)
$w10=IniRead("seting.ini","w","10","")
GUICtrlSetData($i10,$w10)
EndIf
EndFunc
	
	Func res()
IniDelete("seting.ini","w")
if FileExists("seting.ini") Then
$w1=IniRead("seting.ini","w","1","")
GUICtrlSetData($i1,$w1)
$w2=IniRead("seting.ini","w","2","")
GUICtrlSetData($i2,$w2)
$w3=IniRead("seting.ini","w","3","")
GUICtrlSetData($i3,$w3)
$w4=IniRead("seting.ini","w","4","")
GUICtrlSetData($i4,$w4)
$w5=IniRead("seting.ini","w","5","")
GUICtrlSetData($i5,$w5)
$w6=IniRead("seting.ini","w","6","")
GUICtrlSetData($i6,$w6)
$w7=IniRead("seting.ini","w","7","")
GUICtrlSetData($i7,$w7)
$w8=IniRead("seting.ini","w","8","")
GUICtrlSetData($i8,$w8)
$w9=IniRead("seting.ini","w","9","")
GUICtrlSetData($i9,$w9)
$w10=IniRead("seting.ini","w","10","")
GUICtrlSetData($i10,$w10)
EndIf
EndFunc


Func reset()
IniDelete("seting.ini","dane")
	if FileExists("seting.ini") Then
$t1=IniRead("seting.ini","dane","1","")
GUICtrlSetData($in1,$t1)
$t2=IniRead("seting.ini","dane","2","")
GUICtrlSetData($in2,$t2)
$t3=IniRead("seting.ini","dane","3","")
GUICtrlSetData($in3,$t3)
$t4=IniRead("seting.ini","dane","4","")
GUICtrlSetData($in4,$t4)
$t5=IniRead("seting.ini","dane","5","")
GUICtrlSetData($in5,$t5)
$t6=IniRead("seting.ini","dane","6","")
GUICtrlSetData($in6,$t6)
$t7=IniRead("seting.ini","dane","7","")
GUICtrlSetData($in7,$t7)
$t8=IniRead("seting.ini","dane","8","")
GUICtrlSetData($in8,$t8)
$t9=IniRead("seting.ini","dane","9","")
GUICtrlSetData($in9,$t9)
$t10=IniRead("seting.ini","dane","10","")
GUICtrlSetData($in10,$t10)
EndIf
	EndFunc
	
Func zapisz()
IniWrite("seting.ini","dane","1",GUICtrlRead($in1))
IniWrite("seting.ini","dane","2",GUICtrlRead($in2))
IniWrite("seting.ini","dane","3",GUICtrlRead($in3))
IniWrite("seting.ini","dane","4",GUICtrlRead($in4))
IniWrite("seting.ini","dane","5",GUICtrlRead($in5))
IniWrite("seting.ini","dane","6",GUICtrlRead($in6))
IniWrite("seting.ini","dane","7",GUICtrlRead($in7))
IniWrite("seting.ini","dane","8",GUICtrlRead($in8))
IniWrite("seting.ini","dane","9",GUICtrlRead($in9))
IniWrite("seting.ini","dane","10",GUICtrlRead($in10))
   EndFunc
Func koniec()
	Exit
	EndFunc
[]
=
