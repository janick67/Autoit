$s=FileRead("op.txt")
$s=StringReplace($s,@CRLF,"<br>")
$s=StringReplace($s,"	","&nbsp;&nbsp;&nbsp;&nbsp;")
$center=StringInStr($s,"<br>",1,1,StringInStr($s,"<br>")+1)
$cz1=StringLeft($s,$center-1)
$cz2=StringTrimLeft($s,$center+3)
$cs='<p style="margin: 0pt; padding: 0pt; text-align: right; color: rgb(102, 102, 102); font-weight: bold;"><span class="date">'&@YEAR&" "&@MON&" "&@MDAY&'</span></p><p style="text-align: center; font-weight: bold;">'&$cz1&"</p><p>"&$cz2&"</p>"
FileWrite("op2.txt",$cs)
