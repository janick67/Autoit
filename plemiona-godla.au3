#region ---Au3Recorder generated code Start ---
HotKeySet("{esc}","stop")
Opt("WinWaitDelay",100)
Opt("WinDetectHiddenText",1)
Opt("MouseCoordMode",0)
$czas=100
While 1
_WinWaitActivate("elo (341|387) - Plemiona - Świat 116 - Google Chrome","")
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",683,310,1)
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",683,335,1)
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",685,365,1)
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",685,381,1)
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",682,405,1)
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",688,430,1)
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",1373,433,1)
MouseClick("left",1372,398,1)
Sleep($czas)
MouseClick("left",689,334,1)
Sleep(60000)
WEnd

func stop()
	Exit
	EndFunc

#region --- Internal functions Au3Recorder Start ---
Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc
#endregion --- Internal functions Au3Recorder End ---

#endregion --- Au3Recorder generated code End ---
