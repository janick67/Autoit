$ip2="192.168.1.101"
$ip1="192.168.1.100"
$port1=192
$port2=5678
TCPStartup()
$mainsocket = TCPListen($ip1, $port1)
while 1 
	nasluch()
	WEnd

func nasluch()
	if $mainsocket = -1 then $mainsocket = TCPListen($ip1, $port1)
   $acceptedSocket = TCPAccept($mainsocket) 
   If $acceptedSocket <> -1 Then 
      $receivedData = TCPRecv($acceptedSocket, 1000)
	  Tsend(InputBox("Pytanie",$receivedData,"Nie"))
  EndIf
	EndFunc

func Tsend($text)
$socket = TCPConnect($ip2,$port2 ) ;pr�buje po��czy� si� z serwerem i zapisuje nr gniazda w $socked
 ;wysy�a wiadomo�� do po��czonego gniazda
 ConsoleWrite($socket)
TCPSend($socket, string($text))
TCPCloseSocket($socket) ;zamkni�cie otwartego po��czenia
	EndFunc