;TCP klient
$string="sfasgtg"
TCPStartup() ;start us�ugi TCP
$socket = TCPConnect("192.168.1.101", 192) ;pr�buje po��czy� si� z serwerem i zapisuje nr gniazda w $socked
TCPSend($socket, string($string)) ;wysy�a wiadomo�� do po��czonego gniazda
TCPCloseSocket($socket) ;zamkni�cie otwartego po��czenia
TCPShutdown() ;koniec us�ugi TCP