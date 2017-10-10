#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 292, 101, 563, 363)
GUISetBkColor(0xFFFFFF)
$Button1 = GUICtrlCreateButton("", 141, 40, 8, 8, $WS_GROUP)
GUICtrlSetBkColor(-1, 0xFF0000)
$g1 = GUICtrlCreateGraphic(20, 5, 30, 10)
$g2 = GUICtrlCreateGraphic(50, 15, 10, 30)
$g3 = GUICtrlCreateGraphic(10, 15, 10, 30)
$g4 = GUICtrlCreateGraphic(19, 46, 30, 10)
$g5 = GUICtrlCreateGraphic(49, 56, 10, 30)
$g6 = GUICtrlCreateGraphic(9, 56, 10, 30)
$g7 = GUICtrlCreateGraphic(20, 87, 30, 10)
$g8 = GUICtrlCreateGraphic(87, 5, 30, 10)
$g9 = GUICtrlCreateGraphic(117, 15, 10, 30)
$g10 = GUICtrlCreateGraphic(77, 15, 10, 30)
$g11 = GUICtrlCreateGraphic(86, 46, 30, 10)
$g12 = GUICtrlCreateGraphic(116, 56, 10, 30)
$g13 = GUICtrlCreateGraphic(76, 56, 10, 30)
$g14 = GUICtrlCreateGraphic(83, 87, 30, 10)
$g15 = GUICtrlCreateGraphic(271, 15, 10, 30)
$g16 = GUICtrlCreateGraphic(241, 5, 30, 10)
$g17 = GUICtrlCreateGraphic(231, 15, 10, 30)
$g18 = GUICtrlCreateGraphic(241, 45, 30, 10)
$g19 = GUICtrlCreateGraphic(241, 86, 30, 10)
$g20 = GUICtrlCreateGraphic(271, 55, 10, 30)
$g21 = GUICtrlCreateGraphic(231, 55, 10, 30)
$g22 = GUICtrlCreateGraphic(204, 55, 10, 30)
$g23 = GUICtrlCreateGraphic(174, 86, 30, 10)
$g24 = GUICtrlCreateGraphic(164, 55, 10, 30)
$g25 = GUICtrlCreateGraphic(174, 45, 30, 10)
$g26 = GUICtrlCreateGraphic(205, 14, 10, 30)
$g27 = GUICtrlCreateGraphic(175, 4, 30, 10)
$g28 = GUICtrlCreateGraphic(165, 14, 10, 30)
$Button2 = GUICtrlCreateButton("", 141, 56, 8, 8, $WS_GROUP)
GUICtrlSetBkColor(-1, 0xFF0000)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
While 1
$nMsg = GUIGetMsg()
Switch $nMsg
Case $GUI_EVENT_CLOSE
Exit
EndSwitch
WEnd
