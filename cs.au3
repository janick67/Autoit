#include <misc.au3>
#include <array.au3>
HotKeySet("{z}","s")
HotKeySet("{f3}","f3")
HotKeySet("{f4}","f4")
HotKeySet("{f5}","f5")


$s=1
$ile=2
While 1 
	Sleep(10)
	$i=0
	while  _IsPressed(04) and $s=1
Send("{enter}")		
Sleep(200+$i*50)
		$i=+1
;~ 		for $i=1 to $ile
;~ 		MouseClick("")
;~ 		Sleep(100)
;~ 		Next
;~ 		Sleep(1000)
		WEnd
	WEnd
	
	Func f3()
$ile=3
EndFunc
	Func f4()
$ile=4
EndFunc
	Func f5()
$ile=5
EndFunc

	func s()
		$s=$s*-1
		EndFunc