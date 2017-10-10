#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\ja\cal.kxf
$cal = GUICreate("Kalkulator", 250, 212, 355, 189, -1, 0)
$Button1 = GUICtrlCreateButton("=", 208, 166, 32, 25)
GUICtrlSetColor(-1, 0xFF0000)
$Button2 = GUICtrlCreateButton("+", 169, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button3 = GUICtrlCreateButton(",", 130, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button4 = GUICtrlCreateButton("+/-", 92, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button5 = GUICtrlCreateButton("0", 52, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button6 = GUICtrlCreateButton("M+", 10, 166, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button7 = GUICtrlCreateButton("1/x", 208, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button8 = GUICtrlCreateButton("-", 169, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button9 = GUICtrlCreateButton("3", 130, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button10 = GUICtrlCreateButton("2", 92, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button11 = GUICtrlCreateButton("1", 52, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button12 = GUICtrlCreateButton("MS", 10, 134, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button13 = GUICtrlCreateButton("MR", 10, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button14 = GUICtrlCreateButton("MC", 10, 68, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button15 = GUICtrlCreateButton("4", 52, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button16 = GUICtrlCreateButton("7", 52, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button17 = GUICtrlCreateButton("6", 130, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button18 = GUICtrlCreateButton("5", 92, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button19 = GUICtrlCreateButton("*", 169, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button20 = GUICtrlCreateButton("9", 130, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button21 = GUICtrlCreateButton("%", 208, 102, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button22 = GUICtrlCreateButton("sqrt", 208, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button23 = GUICtrlCreateButton("/", 169, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button24 = GUICtrlCreateButton("8", 92, 70, 32, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0x0000FF)
$Button25 = GUICtrlCreateButton("CE", 115, 36, 60, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button26 = GUICtrlCreateButton("C", 180, 36, 60, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Button27 = GUICtrlCreateButton("Backspace", 50, 36, 60, 25, $WS_GROUP)
GUICtrlSetColor(-1, 0xFF0000)
$Label1 = GUICtrlCreateInput("0,", 16, 0, 225, 21, BitOR($ES_RIGHT,$ES_AUTOHSCROLL))
$Label2 = GUICtrlCreateLabel("", 13, 36, 25, 25, -1, $WS_EX_CLIENTEDGE)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Label1
	EndSwitch
WEnd
