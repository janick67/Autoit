$IP=192
TCPStartup() 
$mainsocket = TCPListen("192.168.1.101", 192) 

While 1 
   $acceptedSocket = TCPAccept($mainsocket) 
   If $acceptedSocket <> -1 Then 
      $receivedData = TCPRecv($acceptedSocket, 1000)
	  MsgBox(0,"Serwer",$receivedData) 
   EndIf
WEnd