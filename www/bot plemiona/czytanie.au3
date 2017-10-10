TCPStartup()
global $sesja = idsesii()
loguj("janick67a@interia.pl","janick67a",5)

;~ $kod = "GET /top_reload.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$kod = "GET /poczta_ajax.php?Step=Read&id=45618815 HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
;~ $kod = "POST /akcje_schowek.php?v=wyc HTTP/1.1" & @CRLF & "Host: s5.footballteam.pl" & @CRLF & "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" & @CRLF & "Content-Length: 9" & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF & "wycofaj=1" & @CRLF
;~ MsgBox(0,"",$kod)
MsgBox(0,"",hsend($host,$kod))
;~ FileWrite("2.txt",hsend($host,$kod))
			
func idsesii()
	$host = "s5.footballteam.pl"
	Local $kod = "GET / HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Connection: close" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
FileWrite("2log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
Local $pcook = StringInStr($re,@CRLF&"Set-Cookie:")+14
Local $cook1 = StringMid($re,$pcook,StringInStr($re,";",1,1,$pcook)-$pcook)
return $cook1
	EndFunc
	
func trenuj($um)
Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
FileWrite("2log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
$re = StringStripWS(StringTrimLeft($re,StringInStr($re,@crlf&@crlf)),8)
if $re = "10" Then
	slog("Wytrenowano punkt umiejêtnoœci "&$Tum[$um])
	return 1
Else
	MsgBox(0,"","Jakiœ b³¹d")
	return 0
EndIf
	EndFunc

func loguj($email, $pass, $nrserwera = 5)
if $email = "" or $pass = "" Then return "Podaj email i has³o!"
	global $host = "s"&$nrserwera&".footballteam.pl"
Local $post="email="&StringReplace($email,"@","%40")&"&pass="&$pass&"&serwer=http%3A%2F%2Fs"&$nrserwera&".footballteam.pl%2Fstatystyki.php"
Local $kod = "POST /newsy.php HTTP/1.1" & @CRLF & "Host: " & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Content-Type: application/x-www-form-urlencoded"& @CRLF & "Content-Length: " & stringlen($post) & @CRLF & @CRLF & $post & @CRLF
local $re = hsend($host,$kod)
Local $k = StringInStr($re,@crlf)
FileWrite("2log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
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
Local $i=1
While 1
   $sCurrentRecv = TCPRecv($iSocket, 100)
   If $sCurrentRecv <> "" Then 
	   $sRecv &= $sCurrentRecv
   Else
	   $i+=1
	   EndIf
	If  $i >=200 then ExitLoop 
   WEnd
   TCPCloseSocket($iSocket)
return $sRecv
	EndFunc