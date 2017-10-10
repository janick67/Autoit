HotKeySet("{TAB}","klik")
HotKeySet("{s}","S")
HotKeySet("{w}","W")
HotKeySet("{d}","D")
HotKeySet("{a}","A")
HotKeySet("{c}","c")
HotKeySet("{v}","v")
HotKeySet("{b}","b")
HotKeySet("{n}","n")
HotKeySet("{`}","tyl")


While 1
	Sleep(100000)
WEnd


Func tyl()
	$pos=MouseGetPos()
	InputBox("","",$pos[0]&","&$pos[1])
EndFunc

Func klik()
	$pos=MouseGetPos()
	MouseClick("")
EndFunc

Func S()
	$pos=MouseGetPos()
	$pos[1]+=5
	MouseMove($pos[0],$pos[1],0)
EndFunc

Func W()
$pos=MouseGetPos()
	$pos[1]-=5
	MouseMove($pos[0],$pos[1],0)
EndFunc

Func D()
		$pos=MouseGetPos()
	$pos[0]+=5
	MouseMove($pos[0],$pos[1],0)
EndFunc

Func A()
		$pos=MouseGetPos()
	$pos[0]-=5
	MouseMove($pos[0],$pos[1],0)
EndFunc

func c()
	MouseMove(750,538,0)
EndFunc

func v()
	MouseMove(902,666,0)
EndFunc

func b()
	MouseMove(690,572,0)
EndFunc

func n()
	MouseMove(309,335,0)
	EndFunc