#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <minclude.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 251, 166, 192, 124)
$nr = GUICtrlCreateInput("Nr adresata", 5, 5, 116, 21)
GUICtrlSetLimit(-1, 9)
$od = GUICtrlCreateInput("Podpis", 127, 5, 117, 21)
$tresc = GUICtrlCreateEdit("Treœæ wiadomoœci", 5, 30, 240, 100)
$send = GUICtrlCreateButton("Wyslij", 5, 130, 240, 35, $WS_GROUP)
GUICtrlSetFont(-1, 14, 400, 0, "Arial Black")
GUICtrlSetColor(-1, 0x008000)
GUICtrlSetBkColor(-1, 0xFFFF00)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
$nMsg = GUIGetMsg()
Switch $nMsg
Case $GUI_EVENT_CLOSE
Exit
case $send
	$gnr=GUICtrlRead($nr)
	$god=GUICtrlRead($od)
	$gtresc=GUICtrlRead($tresc)
	MsgBox(0,"","Wiadomoœæ o treœci:"&@LF&'"'&$gtresc&@LF&"Zosta³a wys³ana na nr:"&@LF&'"'&$gnr)
	sendsms($gtresc,$gnr,$god)
	MsgBox(0,"","Wiadomoœæ o treœci:"&@LF&'"'&$gtresc&@LF&"Zosta³a wys³ana na nr:"&@LF&'"'&$gnr)
EndSwitch
WEnd
