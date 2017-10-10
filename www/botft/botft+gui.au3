#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Form1", 344, 258, 192, 124)
$Gemail = GUICtrlCreateInput("E-mail", 8, 8, 121, 21)
$Gpass = GUICtrlCreateInput("Has³o", 144, 8, 121, 21)
$Gserwer = GUICtrlCreateCombo("5", 280, 8, 57, 21)
GUICtrlSetData(-1, "1|2|3|4|6")
$Gum = GUICtrlCreateCombo("Obrona", 8, 40, 145, 21)
GUICtrlSetData(-1, "Bronienie|Skutecznoœæ|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ")
$Gile = GUICtrlCreateInput("ile", 180, 40, 50, 21)
$Gok = GUICtrlCreateButton("Trenuj", 250, 40, 75, 21, $WS_GROUP)
$Gpasek = GUICtrlCreateProgress(16, 72, 318, 17)
$Glog = GUICtrlCreateEdit("", 8, 96, 329, 153)
Dim $Form1_1_AccelTable[1][2] = [["{ENTER}", $Gok]]
GUISetAccelerators($Form1_1_AccelTable)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Gok
			$sum=GUICtrlRead($Gum)
			Switch $sum
			Case "Atak"
				$um=0
			Case "Obrona"
				$um=1
			Case "Podania"
				$um=2
			Case "Bronienie"
				$um=3
			Case "Kondycja"
				$um=4
			Case "Skutecznoœæ"
				$um=5
			Case "Szybkoœæ"
				$um=6
			Case "Celnoœæ"
				$um=7
			Case "Doœrodkowania"
				$um=8
			Case "Strza³y"
				$um=9		
			EndSwitch
			TCPStartup()
			loguj(GUICtrlRead($Gemail),GUICtrlRead($Gpass),GUICtrlRead($Gserwer))
				slog("Zalogowano")
				$ile = GUICtrlRead($Gile)
				for $i=1 to $ile step 1
					trenuj($um)
					Sleep(15500)
				slog("Wytrenowano ju¿ "&$i&" punktów "&$sum)
				GUICtrlSetData($Gpasek,$i*100/$ile)
			Next
			slog("Zakoñczono trening")
			TCPShutdown()
	EndSwitch
WEnd

func slog($string)
	GUICtrlSetData($Glog,GUICtrlRead($Glog) & $string & @CRLF)
	EndFunc

func trenuj($um)
Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: PHPSESSID=5jfloff8683a3vp4aq130p7eo5" & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF 
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
Local $kod = "POST /newsy.php HTTP/1.1" & @CRLF & "Host: " & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Content-Length: " & stringlen($post) & @CRLF & @CRLF & $post & @CRLF
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
;~ Local $sRecv = "", $sCurrentRecv
;~ $i=1
;~ While 1
;~    $sCurrentRecv = TCPRecv($iSocket, 100)
;~    ConsoleWrite( $sCurrentRecv)
;~    If $sCurrentRecv <> "" Then 
;~ 	   $sRecv &= $sCurrentRecv
;~    Else
;~ 	   $i+=1
;~ 	   EndIf
;~ 	If StringInStr($sRecv,@CRLF&@CRLF)>0 or $i >=200 then ExitLoop 
;~    WEnd
   TCPCloseSocket($iSocket)
;~ return $sRecv
	EndFunc