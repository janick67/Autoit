#region ---Au3Recorder generated code Start ---
HotKeySet("{space}","klik")
Opt("WinWaitDelay",100)
Opt("WinDetectHiddenText",1)
Opt("MouseCoordMode",0)

While(1)
	Sleep(1000)
	WEnd



func klik()
$pos = MouseGetPos()
Sleep(100)
MouseClick("left",863,317,1,0)
Mousemove($pos[0],$pos[1],0)
MouseClick("left")
Sleep(150)
MouseClick("left",850,320,1)
Sleep(100)
MouseClick("left",350,453,1)
Sleep(50)
MouseClick("left",361,445,1)
Sleep(100)
Mousemove($pos[0],$pos[1],0)
EndFunc
