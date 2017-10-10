#include <misc.au3>

Sleep(1000)
;~ MouseMove(1091,385) ;Atak
;~ Sleep(500)
;~ MouseMove(1091,407) ;Obrona
;~ Sleep(500)
;~ MouseMove(1091,429) ;Podania
;~ Sleep(500)
;~ MouseMove(1091,451) ;Bronienie
;~ Sleep(500)
;~ MouseMove(1091,473) ;Kondycja
;~ Sleep(500)
;~ MouseMove(1091,495) ;Skutecznoœæ
;~ Sleep(500)
;~ MouseMove(1091,517) ;Szybkoœæ
;~ Sleep(500)
;~ MouseMove(1091,539) ;Celnoœæ
;~ Sleep(500)
;~ MouseMove(1091,561) ;Doœrodkowania
;~ Sleep(500)
;~ MouseMove(1091,583) ;Strza³y
$k=26/2
$cz=TimerInit()
$mowa=0
for $i=1 to $k 
	$c=Int(TimerDiff($cz)/1000)
;~ 	MsgBox(0,"","w³¹cz zak³adkê",1)
	WinActivate("Football Team 2 -")
;~ 	send("{Home}")
ToolTip("Ju¿ bylo: "&$i&" oko³o "&$c&"s"&@LF&"Zosta³o jeszcze: "&$k-$i&" oko³o "&($k*21)-$c&"s")
MouseClick("",1091,473)
Sleep(200)
Mouseclick("",1091,495)
if $mowa=1 and Mod($k-$i, 10)=0 Then	
	SoundSetWaveVolume(100)
	SoundPlay(@DesktopDir&"/Liczby/pozostalo.wav",1)
	if 1=1 Then SoundPlay(@DesktopDir&"/Liczby/"&$k-$i&".wav",1)
	if $k<>$K and $k-$i<100 Then 
		SoundPlay(@DesktopDir&"/Liczby/"&Int(($k-$i)/10)&".wav",1)
		SoundPlay(@DesktopDir&"/Liczby/"&Mod($k-$i, 10)&".wav",1)
	EndIf
EndIf
Sleep(20000)
	Next
	
;~ While 1
;~ 	if _IsPressed(01) Then 
;~ 	$m=MouseGetPos()
;~ 		ConsoleWrite(@LF&"1X:"&$m[0]&@LF&"1Y:"&$m[1])
;~ 		Sleep(1000)
;~ 	EndIf
;~ WEnd