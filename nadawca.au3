;TCP klient
$string="sfasgtg"
TCPStartup() ;start us³ugi TCP
$socket = TCPConnect("192.168.1.101", 192) ;próbuje po³¹czyæ siê z serwerem i zapisuje nr gniazda w $socked
TCPSend($socket, string($string)) ;wysy³a wiadomoœæ do po³¹czonego gniazda
TCPCloseSocket($socket) ;zamkniêcie otwartego po³¹czenia
TCPShutdown() ;koniec us³ugi TCP