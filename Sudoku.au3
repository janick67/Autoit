#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
HotKeySet("{esc}","q")
Dim $in[91]
$x=20
$y=20
$section=2

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 240, 270, 192, 124)
GUISetState(@SW_SHOW)
$MenuItem1 = GUICtrlCreateMenu("Gra")
$MenuItem3 = GUICtrlCreateMenuItem("Generuj now¹ plansze", $MenuItem1)
$MenuItem4 = GUICtrlCreateMenuItem("SprawdŸ", $MenuItem1)
$MenuItem5 = GUICtrlCreateMenuItem("Zakoñcz grê", $MenuItem1)
$MenuItem2 = GUICtrlCreateMenu("Pomoc")
$MenuItem6 = GUICtrlCreateMenuItem("Help", $MenuItem2)
$Graphic1 = GUICtrlCreateGraphic(80, 20, 2, 184)
GUICtrlSetBkColor(-1, 0x000000)

For $i=1 to 81 Step 1
$in[$i] = GUICtrlCreateInput(IniRead("sudoku-plansze.ini",$section,$i,""), $x, $y, 20, 20,BitOR($ES_CENTER,$ES_AUTOHSCROLL))
   if $y=60 or $y=122 Then
   $y+=22
Else
   $y+=20
   EndIf

if $y=204 Then
   $y=20
   if $x=60 or $x=122 Then
   $x+=22
Else
   $x+=20
   EndIf
EndIf
Next
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		 Case $MenuItem3
			uzupelnij()
		 Case $MenuItem4
			spr()
			
	EndSwitch
	
WEnd

func wyczysc()   
   for $i=1 to 81 step 1
	  GUICtrlSetData($in[$i],"")
   Next

   uzupelnij()
   EndFunc

Func uzupelnij()
   for $i=1 to 81 step 1
   GUICtrlSetData($in[$i],IniRead("Sudoku-plansze.ini",$section,$i,""))
   Next 
   EndFunc






   func q()
	  Exit
	  EndFunc