#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
dim $kw[10][1000]
$Form1 = GUICreate("Form1", 601, 401, 192, 124)
$x=5
$y=5
for $i=0 to 500
	$kw[0][$i]=GUICtrlCreateGraphic($x, $y, 5, 5)
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetBkColor(-1, 0xFF0000)
$x+=6
	Next


GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd
