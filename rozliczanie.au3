#include <array.au3>
;~ for $i=2 to 20
;~ 	send("$p["&$i&"]={Enter}")
;~ 	Next
$plik="temail.ini"
dim $kod[3000]
dim $p [3000]

ustarej(wkodu($mes))
func czpliku($plik)
for $i=1 to IniRead($plik,"Kod",0,0)
	if IniRead($plik,"Kod",$i,0) = "" Then
		for $x=$i to IniRead($plik,"Kod",0,0)
			if IniRead($plik,"Kod",$x,0)<>"" Then
				$x=IniRead($plik,"Kod",0,0)
				IniWrite($plik,"Kod",$i,IniRead($plik,"Kod",$x,""))
				IniWrite($plik,"Kod",$x,"")
				IniWrite($plik,"Kod",0,IniRead($plik,"Kod",0,0)-1)
				EndIf
			Next
		EndIf
	Next
EndFunc

func wkodu($mes)
	for $i=1 to $mes[0]
	$zs=StringInStr($mes[$i]," ",1,1)
	$kod[$i]=StringTrimLeft($mes[$i],$zs)
Next
$kod[0]=$mes[0]
return $kod
	EndFunc
	
func ustarej($mes)
for $i=1 to IniRead($plik,"Kod",0,0)
	
	for $x=1 to $mes[0]
		 if IniRead($plik,"Kod",$i,"") = $mes[$x] then $p[$i]+=1
	Next
	
Next
_ArrayDisplay($p)
for $i=1 to IniRead($plik,"Kod",0,0)
	if $p[$i]<1 then IniWrite($plik,"Kod",$i,"")
	Next
	czpliku($plik)
EndFunc


func sznowej($mes)

	for $i=1 to $mes[0]
		for $x=1 to IniRead($plik,"Kody",0,"")
			if StringMid($mes[$i],3,20) = IniRead($plik,"Kody",$x,"") Then $mes[$i]=0
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