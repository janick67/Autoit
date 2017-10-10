$re = FileRead("top.txt")

$re = StringTrimLeft($re,StringInStr($re,@crlf&@crlf))
$w = StringRegExp($re,"<a.*>(.*)</a>",1)
if $w <> 0  Then
$gracz = $w[0]
MsgBox(0,"",$gracz)
EndIf