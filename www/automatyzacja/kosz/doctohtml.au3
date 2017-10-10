#include <Word.au3>

FileWrite("g.txt",txtinhtml(pogloszen(doctotxt("op")),"index.html"))

func txtinhtml($txt,$nhtml)
$plik=FileRead($nhtml)
$z=StringReplace($plik,"wna</h1>","wna</h1>"&@CRLF&$txt)
return($z)
EndFunc

Func doctotxt($nazwa)
$app = _WordCreate(@ScriptDir &"\"&$nazwa&".doc")
WinActivate($nazwa)
send("{ctrldown}ac{ctrlup}")
_WordQuit($app)
return ClipGet()
EndFunc

Func pogloszen($s)
$s=StringReplace($s,@CRLF,"<br>")
$s=StringReplace($s,"	","&nbsp;&nbsp;&nbsp;&nbsp;")
$center=StringInStr($s,"<br>",1,1,StringInStr($s,"<br>")+1)
$cz1=StringLeft($s,$center-1)
$cz2=StringTrimLeft($s,$center+3)
$cs='<p style="margin: 0pt; padding: 0pt; text-align: right; color: rgb(102, 102, 102); font-weight: bold;"><span class="date">'&@YEAR&" "&@MON&" "&@MDAY&'</span></p><p style="text-align: center; font-weight: bold;">'&$cz1&"</p><p>"&$cz2&"</p>"
Return $cs
EndFunc
