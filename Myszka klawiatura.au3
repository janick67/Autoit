HotKeySet("{down}","down")
HotKeySet("{up}","up")
HotKeySet("{right}","right")
HotKeySet("{left}","left")
HotKeySet("{end}","end")
HotKeySet("{`}","stop")
HotKeySet("{enter}","enter")
HotKeySet("{6}","ctrldown")
HotKeySet("{7}","ctrlup")
HotKeySet("{ins}","enter2")
HotKeySet("{0}","p")
HotKeySet("{1}","q")
HotKeySet("{2}","w")
HotKeySet("{3}","e")
HotKeySet("{4}","r")
HotKeySet("{5}","t")
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>

$l=0
While 1 

	
WEnd	
	
	func down()
			$pos=MouseGetPos()
	$x=$pos[0]
	$y=$pos[1]
		$yd=$y+$l
		MouseMove($x,$yd,0)
	EndFunc
	
	func up()
				$pos=MouseGetPos()
	$x=$pos[0]
	$y=$pos[1]
		$yg=$y-$l
		MouseMove($x,$yg,0)
	EndFunc
	
	func right()
				$pos=MouseGetPos()
	$x=$pos[0]
	$y=$pos[1]
		$xr=$x+$l
		MouseMove($xr,$y,0)
	EndFunc
	
	func left()
				$pos=MouseGetPos()
	$x=$pos[0]
	$y=$pos[1]
		$xl=$x-$l
		MouseMove($xl,$y,0)
		EndFunc

Func q()
	$l=5
EndFunc

Func w()
	$l=15
EndFunc

Func e()
	$l=30
EndFunc

Func r()
	$l=60
EndFunc

Func t()
	$l=100
EndFunc

Func p()
	$l=1
EndFunc

func ctrldown()
	MouseDown("")
EndFunc

func ctrlup()
	MouseUp("")
EndFunc
	func enter()
	MouseClick("")
EndFunc

	func enter2()
	MouseClick("right")
EndFunc

	Func stop()
		$l=0
		EndFunc
	
	Func end() 
		Exit
		EndFunc
		
		
	