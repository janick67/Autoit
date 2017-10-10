HotKeySet("{`}","pokaz")
#include "FF.au3"
#include <Array.au3>


_FFStart("https://pl116.plemiona.pl/game.php?village=34543&screen=overview_villages&mode=combined",0,2)

	If _FFIsConnected() Then
dim $tabwsp[200], $tabid[200], $nowa[200]
$tabtxt = _FFTableWriteToArray(2,"index")
;_ArrayDisplay($tabtxt)

for $i = 0 to UBound($tabtxt) - 1 
	$tabwsp[$i] = StringMid($tabtxt[$i][1],StringInStr($tabtxt[$i][1],"(3")+1,7)
Next
;_ArrayDisplay($tabwsp)

$tabhtml = _FFTableWriteToArray(2,"index","html")
;_ArrayDisplay($tabhtml)

for $i = 0 to UBound($tabhtml) - 1 
	$p = StringInStr($tabhtml[$i][1],"data-id=")+9
	$tabid[$i] = StringMid($tabhtml[$i][1],$p,StringInStr($tabhtml[$i][2],'"',0,1,$p+1)-$p-1)
Next

;_ArrayDisplay($tabid)
$str=""

for $i = 2 to UBound($tabwsp) - 1 
	$str &= $tabwsp[$i]&"|"&$tabid[$i]&";"
Next

;_ArrayDisplay($nowa)

FileWrite("wioski_z_id.txt",$str)
EndIf

Func pokaz()
	if $piechota = 0 Then
	TrayTip("Konnica","Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow,5)
Else
	TrayTip("Piechota","Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow,5)
	EndIf
	EndFunc