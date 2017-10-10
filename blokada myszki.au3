#include <Misc.au3>
HotKeySet("x","h")
$p=-1
While 1
   Sleep(100)
   trap()   
   WEnd



func trap()
if $p>0 Then
	$l=MouseGetPos()
_MouseTrap($l[0],$l[1],$l[0],$l[1])  
   EndIf
EndFunc

while 1
wend

Func h()
if _IsPressed(43) and _IsPressed(56) and _IsPressed(59) and _IsPressed(49) Then
   $p=$p*-1
MsgBox(0,"",0,1)
  
   EndIf
EndFunc
