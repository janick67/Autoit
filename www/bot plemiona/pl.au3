TCPStartup()
$host = "www.plemiona.pl"

$kod = "GET / HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
MsgBox(0,"",$re)

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