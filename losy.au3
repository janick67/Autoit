#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 324, 117, 192, 124)
$label = GUICtrlCreateLabel("ile", 32, 25, 22, 17)
$r1 = GUICtrlCreateCheckbox("Random1", 20, 85, 75, 25, $WS_GROUP)
$r2 = GUICtrlCreateCheckbox("Random2", 123, 85, 75, 25, $WS_GROUP)
$r3 = GUICtrlCreateCheckbox("Random3", 235, 85, 75, 25, $WS_GROUP)
$los = GUICtrlCreateInput("1", 80, 25, 57, 20)
$ok = GUICtrlCreateButton("Losuj", 176, 25, 75, 20, $WS_GROUP)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
$ile=10
$pun=0
$buton=0
GUICtrlSetData($label,$ile)
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
 Case $GUI_EVENT_CLOSE
			Exit
		 Case $ok
		ok()
	 Case $r1
		GUICtrlSetState($r2, $GUI_UNCHECKED)
GUICtrlSetState($r3, $GUI_UNCHECKED)
Case $r2
   	GUICtrlSetState($r1, $GUI_UNCHECKED)
GUICtrlSetState($r3, $GUI_UNCHECKED)
		case $r3
		   	GUICtrlSetState($r2, $GUI_UNCHECKED)
GUICtrlSetState($r1, $GUI_UNCHECKED)
	EndSwitch
	
WEnd


func ok()
 
   losowanie()
  EndFunc
  
  func punkty()
if $pun=$buton then 
   $ile=$ile+GUICtrlRead($los)*3
   GUICtrlSetData($label,$ile)
GUICtrlSetState($r1, $GUI_UNCHECKED)
GUICtrlSetState($r2, $GUI_UNCHECKED)
GUICtrlSetState($r3, $GUI_UNCHECKED)
Else
   $ile=$ile-GUICtrlRead($los)
   GUICtrlSetData($label,$ile)
GUICtrlSetState($r1, $GUI_UNCHECKED)
GUICtrlSetState($r2, $GUI_UNCHECKED)
GUICtrlSetState($r3, $GUI_UNCHECKED)
   EndIf
	 EndFunc
   
   Func radio()
	  if GUICtrlRead($r1)=1 then
	  $pun=1
	  EndIf 
	  if GUICtrlRead($r2)=1 then
      $pun=2
	  EndIf
	   if GUICtrlRead($r3)=1 then
		 $pun=3
	  EndIf
		 punkty()
	  EndFunc
   
   func losowanie()
	  if GUICtrlRead($los)>0 Then 
$buton=random(1,3,1)
MsgBox(0,"",$buton)
radio()
Else
MsgBox(0,"","wpisz liczbê powy¿ej zera")
EndIf
	  EndFunc