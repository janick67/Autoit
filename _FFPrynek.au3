#include <FF.au3>
#include <Array.au3>

_FFStart("http://plemiona.pl",0,2)
If _FFIsConnected() Then
	_FFClick("button_middle","class")
	_FFClick("world_button_active","class")
	
	_FFOpenURL("https://pl98.plemiona.pl/game.php?village=19937&screen=market&mode=exchange")
	$mwood = 300
	$mrock = 300
	$miron = 300
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
	if $wood < $mwood Then
		$ile = $rwood - $wood
		_FFSetValue($ile,"sell_wood","name")
		_FFclick("btn-premium-exchange-buy","class")
		_FFclick("btn-confirm-yes","class")
		$msg &= "Uda³o siê sprzedaæ "&$ile&" drewna w kursie "&$wood 
	EndIf
	if $rock < $mrock Then
		$ile = $rrock - $rock
		_FFSetValue($ile,"sell_stone","name")
		_FFclick("btn-premium-exchange-buy","class")
		_FFclick("btn-confirm-yes","class")
		$msg &= @CRLF&"Uda³o siê sprzedaæ "&$ile&" gliny w kursie "&$rock
	EndIf
	if $iron < $miron Then
		$ile = $riron - $iron
		_FFSetValue($ile,"sell_iron","name")
		_FFclick("btn-premium-exchange-buy","class")
		_FFclick("btn-confirm-yes","class")
		$msg &= @CRLF&"Uda³o siê sprzedaæ "&$ile&" ¿elaza w kursie "&$iron
	EndIf
	if $msg <> "" Then
		MsgBox(0,"",$msg)
		$msg = ""
		EndIf
	WEnd
Else
	MsgBox(0,"Error:", "Can't connect to FireFox!")
EndIf

;~ $aLinks = _FFLinksGetAll()
;~ 	_ArrayDisplay($aLinks)