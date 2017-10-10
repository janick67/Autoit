#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
HotKeySet("{esc}","q")
Dim $in[17][3]
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
$Graphic1 = GUICtrlCreateGraphic(60, 20, 2, 82)
GUICtrlSetBkColor(-1, 0x000000)
$Graphic3 = GUICtrlCreateGraphic(20, 60, 82, 2)
GUICtrlSetBkColor(-1, 0x000000)
For $i=1 to 16 Step 1
$in[$i][0] = GUICtrlCreateInput("", $x, $y, 20, 20,BitOR($ES_CENTER,$ES_AUTOHSCROLL))
   if $y=40 Then
   $y+=22
Else
   $y+=20
   EndIf
if $y=102 Then
   $y=20
   if $x=40 Then
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
	  GUICtrlSetData($in[$i][0],"")
   Next

   uzupelnij()
   EndFunc

Func uzupelnij()
   for $i=1 to 16 step 1
   spr($i)
   Next 
   EndFunc


func spr($i) 
    Switch $i
   case 1
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1) 
	   Until $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[13][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0])
   GUICtrlSetData($in[$i][0],$ra)
   
	   case 2
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[14][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0])
	    GUICtrlSetData($in[$i][0],$ra)
	   
	   case 3
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[15][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0])  and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   case 4
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[8][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[16][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0])  and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   
	      case 5
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[13][0])  and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   case 6
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[14][0])  and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])  and $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   
	   case 7
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[15][0])  and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])  and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   case 8
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[8][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[16][0])  and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])  and $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[8][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   
	   
	   case 9
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[13][0])  and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0])  and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   case 10
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[14][0])  and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0])   and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   
	   case 11
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[15][0])  and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0])  and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   case 12
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[8][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[16][0])  and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0])  and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   
	   
	   case 13
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[1][0]) and $ra<>GUICtrlRead($in[5][0]) and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[13][0])  and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])  and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   case 14
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[2][0]) and $ra<>GUICtrlRead($in[6][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[14][0]) and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])   and $ra<>GUICtrlRead($in[9][0]) and $ra<>GUICtrlRead($in[10][0]) and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   
	   case 15
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[3][0]) and $ra<>GUICtrlRead($in[7][0]) and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[15][0])  and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])  and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   case 16
	  Do
		 ConsoleWrite($i)
		  $ra=Random(1,4,1)
	   Until $ra<>GUICtrlRead($in[4][0]) and $ra<>GUICtrlRead($in[8][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[16][0])  and $ra<>GUICtrlRead($in[13][0]) and $ra<>GUICtrlRead($in[14][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])  and $ra<>GUICtrlRead($in[11][0]) and $ra<>GUICtrlRead($in[12][0]) and $ra<>GUICtrlRead($in[15][0]) and $ra<>GUICtrlRead($in[16][0])
	   GUICtrlSetData($in[$i][0],$ra)
	   EndSwitch
EndFunc





   func q()
	  Exit
	  EndFunc