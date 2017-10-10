TCPStartup()
$sesja = "PHPSESSID=5jfloff8683a3vp4aq130p7eo56"

MsgBox(0,"",loguj("janick67a@interia.pl","janick67a"))
MsgBox(0,"",trenuj(7))
TCPShutdown()

func trenuj($um)
Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: PHPSESSID=5jfloff8683a3vp4aq130p7eo56" & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
Local $k = StringInStr($re,@crlf)
$re = StringLeft($re, $k)
if StringInStr($re, "OK") > 0 Then
	return "Wytrenowano"
Else
	return "Nie uda³o siê wytrenowaæ"
EndIf
	EndFunc

func loguj($email, $pass, $nrserwera = 5)
if $email = "" or $pass = "" Then return "Podaj email i has³o!"
	global $host = "s"&$nrserwera&".footballteam.pl"
Local $post="email="&StringReplace($email,"@","%40")&"&pass="&$pass&"&serwer=http%3A%2F%2Fs"&$nrserwera&".footballteam.pl%2Fstatystyki.php"
Local $kod = "POST /newsy.php HTTP/1.1" & @CRLF & "Host: " & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Cache-Control: max-age=0" & @CRLF & "Content-Length: " & stringlen($post) & @CRLF & @CRLF & $post & @CRLF
local $re = hsend($host,$kod)
Local $k = StringInStr($re,@crlf)
$re = StringLeft($re, $k)
if StringInStr($re, "OK") > 0 Then
	return "Zalogowano"
Else
	return "Nie uda³o siê zalogowaæ"
EndIf
	EndFunc
	
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
   $sCurrentRecv = TCPRecv($iSocket, 100)
   ConsoleWrite( $sCurrentRecv)
   If $sCurrentRecv <> "" Then 
	   $sRecv &= $sCurrentRecv
   Else
	   $i+=1
   EndIf
   
	If $i >=200 then ExitLoop 
   WEnd
   TCPCloseSocket($iSocket)
return $sRecv
	EndFunc