HotKeySet("{1}","q")
HotKeySet("{2}","w")
HotKeySet("{3}","e")
HotKeySet("{4}","r")
HotKeySet("{5}","t")
HotKeySet("{6}","y")
HotKeySet("{7}","u")
HotKeySet("{8}","i")
HotKeySet("{9}","o")
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <minclude.au3>
#Region ### START Koda GUI section ### Form=C:\Documents and Settings\Admin\Moje dokumenty\ja\koda\Forms\test.kxf
$f1 = GUICreate("f1", 1401, 801, 0, -25)
GUISetBkColor(0xFFFFFF)
$g1 = GUICtrlCreateGraphic(16, 16, 65, 65)
$g2 = GUICtrlCreateGraphic(610, 22, 65, 65)
$g3 = GUICtrlCreateGraphic(1217, 23, 65, 65)
$g4 = GUICtrlCreateGraphic(17, 395, 65, 65)
$g5 = GUICtrlCreateGraphic(615, 399, 65, 65)
$g6 = GUICtrlCreateGraphic(1215, 399, 65, 65)
$g7 = GUICtrlCreateGraphic(14, 714, 65, 65)
$g8 = GUICtrlCreateGraphic(614, 720, 65, 65)
$g9 = GUICtrlCreateGraphic(1217, 721, 65, 65)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
$q=1
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
			
		
	EndSwitch
	$mgp=MouseGetPos()
	spr()	
WEnd

Func q()
    GUICtrlSetBkColor($g1, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g1, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g1, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g1, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g1,  0xFFFFFF)
EndFunc

Func w()
    GUICtrlSetBkColor($g2, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g2, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g2, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g2, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g2,  0xFFFFFF)
	  EndFunc
	  
	  Func e()
    GUICtrlSetBkColor($g3, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g3, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g3, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g3, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g3,  0xFFFFFF)
	  EndFunc
	  
	  Func r()
    GUICtrlSetBkColor($g4, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g4, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g4, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g4, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g4,  0xFFFFFF)
	  EndFunc
	  
	  Func t()
    GUICtrlSetBkColor($g5, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g5, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g5, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g5, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g5,  0xFFFFFF)
	  EndFunc
	  
	  Func y()
    GUICtrlSetBkColor($g6, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g6, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g6, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g6, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g6,  0xFFFFFF)
	  EndFunc
	  
	  Func u()
    GUICtrlSetBkColor($g7, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g7, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g7, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g7, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g7,  0xFFFFFF)
	  EndFunc
	  
	  Func i()
    GUICtrlSetBkColor($g8, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g8, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g8, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g8, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g8,  0xFFFFFF)
	  EndFunc
	  
	  Func o()
    GUICtrlSetBkColor($g9, 0x000000)
	  Sleep(50)
    GUICtrlSetBkColor($g9, 0xFFFF00)
	  Sleep(50)
		 GUICtrlSetBkColor($g9, 0x0000FF)
	  Sleep(50)
	GUICtrlSetBkColor($g9, 0xFF0000)
		 Sleep(50)
		 GUICtrlSetBkColor($g9,  0xFFFFFF)
	  EndFunc
	  
func spr()
   if _IsPressed("01") and $mgp[0]>0 and $mgp[0]<100 and $mgp[1]>0 and $mgp[1]<100 Then
	  q()
	  EndIf
   EndFunc