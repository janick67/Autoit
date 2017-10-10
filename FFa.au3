#Include <Array.au3>
#Include <FF.au3>
_FFstart( "http://s5.footballteam.pl/newsy.php")
Sleep(1000)
If _FFConnect() Then
	$i=31
	FileDelete ( "text.txt" )
FileWrite("text.txt",_FFReadText($i))
_FFWindowClose()
for $i=0 to 100
$ak=FileReadLine("text.txt",$i)
if StringInStr ( $ak, "Nick:") Then 
	$nick=StringTrimLeft($ak,6)
	$rank=StringTrimLeft(FileReadLine("text.txt",$i+2),9)
	$poczta=StringTrimLeft(FileReadLine("text.txt",$i+3),8)
	$um=StringTrimLeft(FileReadLine("text.txt",$i+4),4)
	$eu=StringTrimLeft(FileReadLine("text.txt",$i+5),6)
	$pot=StringTrimLeft(FileReadLine("text.txt",$i+6),6)
	$forma=StringTrimLeft(FileReadLine("text.txt",$i+7),7)
	$akcje=StringTrimLeft(FileReadLine("text.txt",$i+8),7)
	$i=100
	EndIf	
Next
MsgBox(0,"","nick: "&$nick&@LF&"rank: "&$rank&@LF&"poczta: "&$poczta&@LF&"um: "&$um&@lf&"euro: "&$eu&@LF&"potencja³: "&$pot&@LF&"forma: "&$forma&@LF&"akcje: "&$akcje)
	EndIf


;~ 4 5 6 7 12 13 14 15 20 21 22 23 28 29 30 31