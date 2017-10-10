HotKeySet("{ESC}","_exit")
#include <Joystick.au3>
#include <string.au3>
#include <array.au3>
 dim $klawisze[11][2]
 dim $sklad[11]
$klawisze[0][0]=""
$klawisze[0][1]=1000000
$klawisze[1][0]="+A+"
$klawisze[1][1]=1
$klawisze[2][0]="+B+"
$klawisze[2][1]=2
$klawisze[3][0]="X"
$klawisze[3][1]=4
$klawisze[4][0]="Y"
$klawisze[4][1]=8
$klawisze[5][0]="LB"
$klawisze[5][1]=16
$klawisze[6][0]="RB"
$klawisze[6][1]=32
$klawisze[7][0]="LSB"
$klawisze[7][1]=64
$klawisze[8][0]="RSB"
$klawisze[8][1]=128
$klawisze[9][0]="BACK"
$klawisze[9][1]=256
$klawisze[10][0]="START"
$klawisze[10][1]=512
$joy    = _JoyInit() 
   $sterowanie = 1
   $pedaly = -1
while 1	
  $coord=_GetJoy($joy,0)
  ToolTip($coord[6]&@LF&$coord[7]&@LF&$sterowanie)
		ster()		
;~ 		if $coord[7]>0 Then
;~ 			Sleep(50)
;~ 	$coord2=_GetJoy($joy,0)		
;~ 	if $coord2[7]>$coord[7] then  $coord[7]=$coord2[7]
;~ 		
;~ $a=IniRead("test.ini","",$coord[7],"")
;~ $m=ob($a)
;~ for $i=0 to UBound($m)-1
;~ MsgBox(0,$i+1,$klawisze[$m[$i]][0])
;~ Next
;~ EndIf
	
if $coord[7] = 768 and $coord[2] =65535 then
Sleep(100)
Beep(100,100)
	$coord=_GetJoy($joy,0)
	if $coord[2] = 0 Then $pedaly = $pedaly * -1
	EndIf
	
if $coord[7] = 768 and $coord[6] =27000 then
	Beep(100,100)
Sleep(100)
	$coord=_GetJoy($joy,0)
	if $coord[6] = 9000 Then $sterowanie = $sterowanie * -1
	EndIf	
WEnd
 
$lpJoy=0 ; Joyclose

func ster()
	  $m=MouseGetPos()
	$poz=int($coord[0]/1000)
	$poz2=int($coord[2]/1000)
	
	Switch $coord[7]
	case 1
		MouseClick("left")
		Sleep(100)
	case 4
		MouseClick("right")
		Sleep(100)
	case 8
		Send("{ENTER}")
		Sleep(100)
	Case 2
		Send("{ESC}")
	case 32 
		if DriveStatus( "E:\" ) = "READY" Then
			CDTray("E:","open")
		Else
			CDTray("E:","close")
			EndIf
	case 64
		Sleep(100)
	EndSwitch
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


func _exit()
	Exit
EndFunc


func ob($a)
	$ile=0
	do 	
		_ArrayAdd($sklad,"")
		Until UBound($sklad) = 12 
	for $i=0 to 10 
$sklad[$i]=0
		Next
for $i=1 to 10
	if StringInStr($a,$klawisze[$i][0]) <> 0 then 
		$sklad[$ile]=$i
		$ile+=1
		EndIf
	Next
	for $i=0 to 10
		if $sklad[UBound($sklad)-1]=0 Then _ArrayDelete($sklad,UBound($sklad)-1)
		Next
	return $sklad
EndFunc
 
;~ 4(X) klikniêcie prawym
;~ 1(A) klikniêcie lewym
;~ 8(Y) 
;~ 2(B)
;~ 64(LSB)
;~ 128(RSB)
;~ 512(start)
;~ 256(back)
