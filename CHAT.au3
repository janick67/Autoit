$ip2=IniRead("CHAT.ini","ip",2,"192.168.1.101")
$ip1=IniRead("CHAT.ini","ip",1,"192.168.1.101")
$port1=IniRead("CHAT.ini","port",1,191)
$port2=IniRead("CHAT.ini","port",2,192)
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$GZIP = GUICreate("CHAT1", 340, 230, 192, 124)
$GIP = GUICtrlCreateInput("", 0, 0, 40, 20)
$GPORT = GUICtrlCreateInput("", 40, 0, 40, 20)
$GZIP = GUICtrlCreateButton("Zmieñ", 80, 0, 40, 20, $WS_GROUP)
$GLIP = GUICtrlCreateLabel($ip2&":"&$port2, 120, 3, 200, 20)
$GW = GUICtrlCreateInput("", 0, 210, 270, 20)
$GS = GUICtrlCreateButton("Wyslij", 270, 210, 70, 20, $WS_GROUP)
$GE = GUICtrlCreateEdit("", 0, 20, 340, 190)
GUICtrlSetData(-1, "")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
TCPStartup()
$mainsocket = TCPListen($ip1, $port1)
While 1
nasluch()
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		case $GZIP
			if GUICtrlRead($GIP) <> "" then $ip2=TCPNameToIP(GUICtrlRead($GIP))
			if GUICtrlRead($GPORT) <> "" Then $port2=GUICtrlRead($GPORT)
			GUICtrlSetData($GLIP,$ip2&":"&$port2)
			GUICtrlSetData($GIP,"")
			GUICtrlSetData($GPORT,"")
		case $GS
			$text=GUICtrlRead($GW)
			GUICtrlSetData($GE,GUICtrlRead($GE)&@HOUR&":"&@MIN&":"&@SEC&"<"&$text&@CRLF)
			GUICtrlSetData($GW,"")
			Tsend($text)
EndSwitch
WEnd
func nasluch()
	if $mainsocket = -1 then $mainsocket = TCPListen($ip1, $port1)
   $acceptedSocket = TCPAccept($mainsocket) 
   If $acceptedSocket <> -1 Then 
      $receivedData = TCPRecv($acceptedSocket, 1000)
	  GUICtrlSetData($GE,GUICtrlRead($GE)&@HOUR&":"&@MIN&":"&@SEC&">"&$receivedData&@CRLF)
  EndIf
	EndFunc

func Tsend($text)
$socket = TCPConnect($ip2,$port2 ) ;próbuje po³¹czyæ siê z serwerem i zapisuje nr gniazda w $socked
if $socket <> -1 then GUICtrlSetData($GE,GUICtrlRead($GE)&@HOUR&":"&@MIN&":"&@SEC&"="&"Conect to "&$ip2&":"&$port2&@CRLF)
TCPSend($socket, string($text)) ;wysy³a wiadomoœæ do po³¹czonego gniazda
TCPCloseSocket($socket) ;zamkniêcie otwartego po³¹czenia
	EndFunc
