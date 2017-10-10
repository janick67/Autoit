#include <test.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 476, 347, 192, 124)
$Label1 = GUICtrlCreateLabel("Elo", 184, 8, 47, 36)
GUICtrlSetFont(-1, 20, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0xFF0000)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
$nMsg = GUIGetMsg()
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd
