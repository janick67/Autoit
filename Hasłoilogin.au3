#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=
$l = GUICreate("Logowanie", 233, 39, 192, 124)
$glogin = GUICtrlCreateInput("login", 8, 10, 75, 21)
$ghaslo = GUICtrlCreateInput("haslo", 96, 10, 75, 21)
$ok = GUICtrlCreateButton("ok", 184, 10, 43, 20, $WS_GROUP)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

$i=0
$haslo="jan"
$login="jana"
$h=0
$l=0
 $msg=GUIGetMsg() 

While 1
	$msg=GUIGetMsg()
logo()
WEnd


func nowe()
IniWrite("a.eve","dane","haslo"&$i,$haslo[$i])
IniWrite("a.eve","dane","login"&$i,$login[$i])
EndFunc

Func wczy()
$haslo[$i]=IniRead("a.eve","dane","haslo"&$i,"")
$login[$i]=IniRead("a.eve","dane","login"&$i,"")
	EndFunc
	
Func logo()
	if $msg=$ok then
		$l=GUICtrlRead($glogin)
		$h=GUICtrlRead($ghaslo)
		$msg=0
		sprawdzanie()
		EndIf
EndFunc
func sprawdzanie()
If $haslo=$h and $login=$l Then 
MsgBox(0,"","sukces",0.5)
$msg=$GUI_EVENT_CLOSE
GUISetState(@SW_HIDE)

Else
MsgBox(0,"","spróbuj ponownie",0.5)
logo()
EndIf
	EndFunc