TCPStartup()
$host = "s5.footballteam.pl"
$browser = "Mozilla/5.0 (Windows NT 5.1; rv:21.0) Gecko/20100101 Firefox/21.0"
$accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
$lang = "pl,en-us;q=0.7,en;q=0.3"
$encod = "gzip, deflate"
$connect = "keep-alive"
$cachec = "max-age=0"
$ckod = ""
$ckod &= "Host:" & $host & @CRLF
$ckod &= "User-Agent:" & $browser & @CRLF
$ckod &= "Accept:" & $accept & @CRLF
$ckod &= "Accept-Language:" & $lang & @CRLF
$ckod &= "Accept-Encoding:" & $encod & @CRLF
$ckod &= "Connection:" & $connect & @CRLF
;~ $ckod &= "Cache-Control:" & $cachec & @CRLF

$kod = "POST /newsy.php HTTP/1.1" & @CRLF &$ckod
$kod &= "Cookie: PHPSESSID=ajjonlf6u1oac78kp7or968ps5"&@CRLF
$post = "email=janick67a%40interia.pl&pass=janick67a&serwer=http%3A%2F%2Fs5.footballteam.pl%2Fstatystyki.php"
$kod &= "Content-Length:"&stringlen($post)&@CRLF
$kod &= $post&@CRLF&@CRLF
$kod = FileRead("1.txt")
MsgBox(0,"",$kod)
$re = hsend($host,$kod)
$head = StringInStr($re,@CRLF&@CRLF)
$head = StringLeft($re,$head)
$pcook = StringInStr($re,@CRLF&"Set-Cookie:")+14
$kcook = StringInStr($re,";",1,1,$pcook)
$cook1 = StringMid($re,$pcook,$kcook-$pcook)
MsgBox(0,"",$re)
TCPShutdown()

func hsend($host, $dane)
	
$sName_To_IP = TCPNameToIP($host)
$iSocket = TCPConnect($sName_To_IP, 80)
If $iSocket = -1 Then
   TCPCloseSocket($iSocket)
   Exit
EndIf
Local $BytesSent = TCPSend($iSocket, $dane)
If $BytesSent = 0 Then Exit
Local $sRecv = "", $sCurrentRecv
$i=1
While 1
   $sCurrentRecv = TCPRecv($iSocket, 16)
   If @error <> 0 or $i >= 1000 Then ExitLoop
   If $sCurrentRecv <> "" Then 
	   $sRecv &= $sCurrentRecv
   Else
	   $i+=1
	   EndIf
   WEnd
return $sRecv
TCPCloseSocket($iSocket)
	EndFunc