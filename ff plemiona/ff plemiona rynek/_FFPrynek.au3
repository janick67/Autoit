#include <FF.au3>
#include <Array.au3>
#include <smtp.au3>



_FFStart("https://pl118.plemiona.pl/game.php?village=9703&screen=market&mode=exchange",0,2)
If _FFIsConnected() Then
;~ 	_FFClick("button_middle","class")
;~ 	_FFClick("world_button_active","class")
	
;~ 	_FFOpenURL("https://pl118.plemiona.pl/game.php?village=9703&screen=market&mode=exchange")
	$minwood = 500
	$minrock = 500
	$miniron = 550
	$maxwood = 1000
	$maxrock = 1000
	$maxiron = 1000
	$alertcz = 0
	$alert = 0
	$bwood = 0
	$brock = 0
	$biron = 2330 
	$msg = ""
	while 1
		Sleep(5000)
	$html=_FFReadHTML()
	$p=StringInStr($html,'<span id="wood"')
	$p=stringinstr($html,">",0,1,$p)+1
	$rwood = StringMid($html,$p,StringInStr($html,"<",0,1,$p)-$p) ;moja iloœæ
		$p=StringInStr($html,'<span id="stone"')
	$p=stringinstr($html,">",0,1,$p)+1
	$rrock = StringMid($html,$p,StringInStr($html,"<",0,1,$p)-$p) ;moja iloœæ
		$p=StringInStr($html,'<span id="iron"')
	$p=stringinstr($html,">",0,1,$p)+1
	$riron = StringMid($html,$p,StringInStr($html,"<",0,1,$p)-$p) ;moja iloœæ
	$p=StringInStr($html,'premium-exchange-sep">')
	$p=stringinstr($html,">",0,2,$p)+2
	$wood = StringMid($html,$p,StringInStr($html,"<",0,1,$p)-$p) ;kurs na rynku
	$p=StringInStr($html,'premium-exchange-sep">',0,4)
	$p=stringinstr($html,">",0,2,$p)+2
	$rock = StringMid($html,$p,StringInStr($html,"<",0,1,$p)-$p)
	$p=StringInStr($html,'premium-exchange-sep">',0,7)
	$p=stringinstr($html,">",0,2,$p)+2
	$iron = StringMid($html,$p,StringInStr($html,"<",0,1,$p)-$p)
	if $bwood = 0 Then $bwood = $wood
	if $brock = 0 Then $brock = $rock
if $biron = 0 Then $biron = $iron	
	if $wood < $minwood and $bwood > $wood and $wood > 1 and $rwood > $wood Then
		$ile = $rwood - $wood
		if $ile > 0 Then
		_FFSetValue($ile,"sell_wood","name")
		_FFclick("btn-premium-exchange-buy","class")
		WinActivate("Wioska")
		Sleep(700)
		send ("{enter}")
		Sleep(700)
		send ("{enter}")
		ContinueLoop
		EndIf
;~ 		_FFclick("btn-confirm-yes","class")
;~ 		$msg &= "Uda³o siê sprzedaæ "&$ile&" drewna w kursie "&$wood 
$msg &= "Wyj¹tkowo niski kurs drewna "&$wood
if $wood < 300 Then alarm()
if $alertcz = 0 Then
$alert = 1
$alertcz = TimerInit()
endif
	EndIf
	if $rock < $minrock and $brock > $rock and $rock > 1  and $rrock > $rock Then
		$ile = $rrock - $rock
		if $ile > 0 Then
		_FFSetValue($ile,"sell_stone","name")
		_FFclick("btn-premium-exchange-buy","class")
		WinActivate("Wioska")
		Sleep(700)
		send ("{enter}")
		Sleep(700)
		send ("{enter}")
		ContinueLoop
		EndIf
;~ 		_FFclick("btn-confirm-yes","class")
;~ 		$msg &= @CRLF&"Uda³o siê sprzedaæ "&$ile&" gliny w kursie "&$rock
$msg &= "Wyj¹tkowo niski kurs gliny "&$rock
if $rock < 300 Then alarm()
if $alertcz = 0 Then
$alert = 1
$alertcz = TimerInit()
endif
EndIf
;~ if 1 = 1 Then
	if $iron < $miniron and $biron > $iron and $iron > 1  and $riron > $iron Then
		$ile = $riron - $iron
		if $ile > 0 Then
 		_FFSetValue($ile,"sell_iron","name")
		_FFclick("btn-premium-exchange-buy","class")
		WinActivate("Wioska janic")
		Sleep(700)
		send ("{enter}")
				Sleep(700)
		send ("{enter}")
		ContinueLoop
		EndIf
;~ 		Sleep(500)
;~ 		_FFclick("btn-confirm-yes","class")
;~ 		$msg &= @CRLF&"Uda³o siê sprzedaæ "&$ile&" ¿elaza w kursie "&$iron
$msg &= "Wyj¹tkowo niski kurs ¿elaza "&$iron
if $iron < 300 Then alarm()
if $alertcz = 0 Then
$alert = 1
$alertcz = TimerInit()
endif
	EndIf
	
		if $wood > $maxwood and $bwood < $wood Then
$msg &= "Wyj¹tkowo wysoki kurs drewna "&$wood
;~ if $alertcz = 0 Then
;~ $alert = 1
;~ $alertcz = TimerInit()
;~ endif
	EndIf
	if $rock > $maxrock and $brock < $rock Then
$msg &= "Wyj¹tkowo wysoki kurs gliny "&$rock
;~ if $alertcz = 0 Then
;~ $alert = 1
;~ $alertcz = TimerInit()
;~ endif
EndIf
	if $iron > $maxiron and $biron < $iron Then
$msg &= "Wyj¹tkowo wysoki kurs ¿elaza "&$iron
;~ if $alertcz = 0 Then
;~ $alert = 1
;~ $alertcz = TimerInit()
;~ endif
	EndIf
	
	if $bwood <> $wood and $wood > 1 Then
		FileWrite("drewno.txt",$wood&";"&@YEAR&"-"&@MON&"-"&@MDAY&" "&@HOUR&":"&@MIN&@CRLF)
		$bwood = $wood
		EndIf
	if $brock <> $rock and $rock > 1 Then
		FileWrite("glina.txt",$rock&";"&@YEAR&"-"&@MON&"-"&@MDAY&" "&@HOUR&":"&@MIN&@CRLF)
		$brock = $rock
		EndIf
	if $biron <> $iron and $iron > 1 Then
		FileWrite("zelazo.txt",$iron&";"&@YEAR&"-"&@MON&"-"&@MDAY&" "&@HOUR&":"&@MIN&@CRLF)
		$biron = $iron
		EndIf
	
	if $wood < 1 then
		Beep()
		$msg&= "b³¹d"
		EndIf
	
	if $msg <> "" Then
;~ 		MsgBox(0,"",$msg,10)
TrayTip("", $msg, 5)
		
		if $alert = 1 Then
			$Body = $msg
$Subject = "surowce"
$rc = _INetSmtpMailCom($SmtpServer, $FromName, $FromAddress, $ToAddress, $Subject, $Body, $AttachFiles, $CcAddress, $BccAddress, $Importance, $Username, $Password, $IPPort, $ssl)
$alert = 0
EndIf
if TimerDiff($alertcz) > 30*60*1000 Then $timercz = 0
		EndIf
		$msg = ""
	WEnd
Else
	MsgBox(0,"Error:", "Can't connect to FireFox!")
EndIf

func alarm()
Beep(2000,400)
Beep(2000,400)
Beep(2000,400)
Beep(500,800)
Beep(2000,400)
Beep(2000,400)
Beep(2000,400)
	EndFunc
;~ $aLinks = _FFLinksGetAll()
;~ 	_ArrayDisplay($aLinks)