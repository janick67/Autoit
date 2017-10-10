#include<Array.au3>
dim $gracz[10][2] = [["Nick"],["ID"],["Ranking"],["Poczta"],["UM"],["Euro"],["Pot"],["Forma"],["Akcje"]]
$re = FileRead("top.txt")
$re = StringTrimLeft($re,StringInStr($re,@crlf&@crlf))
$w = StringRegExp($re,"<a.*>(.*)</a>",1)
$gracz[0][1] = $w[0]
for $i = 2 to 9
$p = StringInStr($re,"</b>",0,$i)+4
$k = StringInStr($re,"<",0,1,$p)
$g = StringMid($re,$p,$k-$p)
$g = StringStripWS($g,8)
if $i < 9 Then
	$g = StringRegExpReplace($g,"\D","")
Else
	$k = StringInStr($g,"/")
	$g = StringLeft($g,$k-1)
	EndIf
$gracz[$i-1][1] = $g
	Next