HotKeySet("{ESC}","_exit")
#include <Joystick.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Komendy.au3>
$joy    = _JoyInit() 
$label=-1
$kod=0
global $sterowanie = -1
global $pedaly = -1
GUICreate("Komendy",100,0)
GUICtrlCreateInput("",5,4,90,16)

while 1
	$coord=_GetJoy($joy,0)
	Sleep(20)
;~ 	ToolTip($pedaly&@LF&$sterowanie)
;~ ster()
;~ but()
;~ 	if $coord[7]=32 and $label=1 then label()
;~ 	if $coord[7]=4 and $label=-1 then label()
if $coord[7]=1 then 
	MouseClick("")
	sleep(1000)
	EndIf
	if $coord[7]=4 then
		MouseClick("right")
		Sleep(1000)
		endif
	WEnd

func ster()
	  $m=MouseGetPos()
	$poz=int($coord[0]/1000)
	$poz2=int($coord[2]/1000)
	
	if $sterowanie = -1 Then 
	  if $coord[6]=0 then $m[1]-=20
	if $coord[6]=9000 then $m[0]+=20
		if $coord[6]=27000 then $m[0]-=20
			if $coord[6]=18000 then $m[1]+=20
			EndIf
			
				If $sterowanie = 1 Then
	if $poz<31 Then
		$m[0]-=(31-$poz)*10
	EndIf
	if $poz>32 Then
		$m[0]-=(33-$poz)*10
	EndIf
	
	if $pedaly=1 Then
	if $poz2<31 Then
		$m[1]-=(31-$poz2)*7
	EndIf
	if $poz2>32 Then
		$m[1]-=(33-$poz2)*7
	EndIf
EndIf
EndIf
MouseMove($m[0],$m[1])
	EndFunc

func but()
	if $label=-1 Then
	Switch $coord[7]
	case 16
		MouseClick("left")
	case 32
		MouseClick("right")
	case 1
		Send("{ENTER}")
	Case 2
		Send("{ESC}")
	case 8
		send("{Capslock}")
	case 64
		send("{LWIN}")
	case 128
		Send("{backspace}")
	case 256 
		kod($kod)
	EndSwitch
Else
	Switch $coord[7]
	case 1
		send(1)
		Sleep(200)
	case 2
		send(3)
		Sleep(200)
	case 4
		Send(2)
		Sleep(200)
	Case 8
		Send(4)
		Sleep(200)
	case 64
		send(5) 
		Sleep(200)
	case 128	
		send(6)
		Sleep(200)
	case 16
		send("{backspace}")
		Sleep(200)
	EndSwitch
	switch $coord[6] 
	case 0 
		send (7)
		Sleep(200)
	case 9000
		send (8)
		Sleep(200)
	case 18000
		send (9)
		Sleep(200)
	case 27000
		Send (0)
		Sleep(200)
		EndSwitch
	EndIf
EndFunc
func label()
	$label=$label*-1
	if $label=1 Then GUISetState(@SW_SHOW)	
if $label=-1 then 
GUISetState(@SW_HIDE)
$kod=GUICtrlRead(-1)
GUICtrlSetData(-1,"")
kod($kod)
EndIf
GUIsetStyle(BitOR($WS_POPUPWINDOW, $WS_THICKFRAME))
Sleep(200)
	EndFunc
func _exit()
	Exit
EndFunc