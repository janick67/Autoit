#include <FF.au3>
#include <Array.au3>

_FFStart("http://plemiona.pl",0,2)
If _FFIsConnected() Then
	$i=0
	_FFClick("button_middle","class")
	_FFClick("world_button_active","class")
	_FFOpenURL("https://pl92.plemiona.pl/game.php?village=67589&screen=overview_villages&mode=combined&group=263334&")
	$html=_FFReadHTML()
	FileWrite("plik.html",$html)
;~ 	for $i = 0 to UBound($wioski)
;~ 	_FFOpenURL("https://pl92.plemiona.pl/game.php?village=n"&$wioski[$i]&"&screen=am_farm")
;~ 	$j=0
;~ 	while 1
;~ 	$html=_FFReadHTML()
;~ 	$p=StringInStr($html,"am_widget_Farm")
;~ 	$html = StringMid($html,$p,StringInStr($html,"</table>",0,1,$p)-$p)
;~ 	$p = StringInStr($html,"<tr",0,2)
;~ 	$tr = StringMid($html,$p,StringInStr($html,"</tr>",0,1,$p)-$p)
;~ 	If StringInStr($tr,"farm_icon_c farm_icon_disabled")>0 or $j = 15 Then
;~ 		ToolTip("next")
;~ 					ExitLoop
;~ 	EndIf
;~ 	$j +=1
;~ _FFLinkClick(137,"index")


;~ 	WEnd
;~ 	Next
Else
	MsgBox(0,"Error:", "Can't connect to FireFox!")
EndIf

;~ $aLinks = _FFLinksGetAll()
;~ 	_ArrayDisplay($aLinks)