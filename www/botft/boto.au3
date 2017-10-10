#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
$log = 1
dim $Tum[10]= ["Atak","Obrona","Podania","Bronienie","Kondycja","Skutecznoœæ","Szybkoœæ","Celnoœæ","Doœrodkowania","Strza³y"]
dim $gracz[10][2] = [["Nick"],["ID"],["Ranking"],["Poczta"],["UM"],["Euro"],["Pot"],["Forma"],["Akcje"]]
TCPStartup()
global $sesja = idsesii()
#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Form1", 344, 258, 192, 124)
$Gemail = GUICtrlCreateInput("janick67a@interia.pl", 8, 8, 121, 21)
$Gpass = GUICtrlCreateInput("janick67a", 144, 8, 121, 21,BitOR($ES_PASSWORD,$ES_AUTOHSCROLL))
$Gserwer = GUICtrlCreateCombo("5", 280, 8, 57, 21)
GUICtrlSetData(-1, "1|2|3|4|6")
$Gum = GUICtrlCreateCombo("Obrona", 8, 40, 145, 21)
GUICtrlSetData(-1, "Bronienie|Skutecznoœæ|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ")
$Gile = GUICtrlCreateInput("150", 180, 40, 50, 21, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$Gok = GUICtrlCreateButton("Trenuj", 250, 40, 75, 21, $WS_GROUP)
$Gpasek = GUICtrlCreateProgress(16, 72, 318, 17)
$Glog = GUICtrlCreateEdit("", 8, 96, 329, 153)
Dim $Form1_1_AccelTable[1][2] = [["{ENTER}", $Gok]]
GUISetAccelerators($Form1_1_AccelTable)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
$begin = 0
$ile =0

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Gok
			start()
		EndSwitch
	if int(TimerDiff($begin)/1000) >= 21 and $ile > 0 Then task($um1,$um2)
WEnd

func start()
	global $um2 = _ArraySearch($Tum,GUICtrlRead($Gum))
	global $um1 = 1
	if $um1 = $um2 Then $um2=""
			GUICtrlSetData($Gpasek,0)
			loguj(GUICtrlRead($Gemail),GUICtrlRead($Gpass),GUICtrlRead($Gserwer))
			Global $ile = GUICtrlRead($Gile)
EndFunc
		
func task($um1,$um2 = "")
				if trenuj($um1) Then $ile -= 1
			if $um2 <> "" Then 
				if trenuj($um2) Then $ile -= 1
			EndIf
			global $begin = TimerInit()
			GUICtrlSetData($Gile,$ile)
		EndFunc
		
func idsesii()
	$host = "s5.footballteam.pl"
	Local $kod = "GET / HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Connection: close" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
if $log Then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
Local $pcook = StringInStr($re,@CRLF&"Set-Cookie:")+14
Local $cook1 = StringMid($re,$pcook,StringInStr($re,";",1,1,$pcook)-$pcook)
return $cook1
	EndFunc

func slog($string)
	GUICtrlSetData($Glog,GUICtrlRead($Glog) & $string & @CRLF)
EndFunc

func trenuj($um)
Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
if $log then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
$re = StringStripWS(StringTrimLeft($re,StringInStr($re,@crlf&@crlf)),8)
if $re = "10" Then
	slog("Wytrenowano punkt umiejêtnoœci "&$Tum[$um])
	return 1
Else
	MsgBox(0,"","Jakiœ b³¹d",1)
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
if $log Then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
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
	
func reloadtop()
$kod = "GET /top_reload.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$re = StringTrimLeft($re,StringInStr($re,@crlf&@crlf))
$w = StringRegExp($re,"<a.*>(.*)</a>",1)
$gracz[0][1] = $w[0]
for $i = 2 to 9
$p = StringInStr($re,"</b>",0,$i)+4
$k = StringInStr($re,"<",0,1,$p)
$g = StringMid($re,$p,$k-$p)
$g = StringStripWS($g,8)
if $i < 9 Then
	$g = StringRegExpReplace($g,"\D","")
Else
	$k = StringInStr($g,"/")
	$g = StringLeft($g,$k-1)
	EndIf
$gracz[$i-1][1] = $g
	Next
	EndFunc