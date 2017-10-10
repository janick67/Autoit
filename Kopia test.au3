;~ $s="Mój string"

;~ MsgBox(0,"",StringLeft($s,1))

;~ $i=1
;~ while $i>0
;~ 	$i+=1
;~  	MsgBox(0,"",$i)
;~ 	if $i=5 Then $i=-1
;~ 		
;~ 	WEnd


#include <array.au3>
#include <_pop3.au3>
 #include <minclude.au3>
Global $MyPopServer = "poczta.interia.pl"
Global $MyLogin = "janick67a@interia.pl"
Global $MyPasswd = "janick67a"
	 _pop3Connect($MyPopServer, $MyLogin, $MyPasswd,110)
If @error Then
MsgBox(0, "Error", "Unable to connect to " & $MyPopServer & @CR & @error)
Exit
Else
ConsoleWrite("Connected to server pop3 " & $MyPopServer & @CR)
EndIf

$reset=0
Local $uidlP = _Pop3Uidl()
_ArrayDisplay($uidlP)
_ArrayDisplay(sznowej($uidlP))



func sznowej($mes)
	$dou=""
	for $i=1 to $mes[0]
		for $x=1 to IniRead("eamil.ini","Kody",0,"")
			if StringMid($mes[$i],3,20) = IniRead("eamil.ini","Kody",$x,"") Then $mes[$i]=0
		Next
	Next
	
	for $i=0 to	$mes[0]
		if $mes[$i]=0 then
			_ArrayDelete($mes,$i)
			$mes[0]-=1
		endif
	Next
	Return $mes
EndFunc
