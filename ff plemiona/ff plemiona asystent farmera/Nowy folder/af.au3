#include "FF.au3"
#include <Array.au3>

$max_wiosek = 60
$max_czas = 20 ;w minutach

_FFStart("https://pl116.plemiona.pl/game.php?village=41377&village=41377&screen=am_farm&group=176122",0,2)

FileWrite("log.txt","starts at "&@YEAR&"-"&@MON&"-"&@mday&" "&@hour&":"&@min&@CRLF)
$czas = TimerInit()
$suma_atakow = 0
If _FFIsConnected() Then
	
$html=_FFReadHTML()

if StringInStr($html,'rejestracja!') > 0 Then
	_FFClick("button_middle","class")
	_FFClick("world_button_active","class")
	_FFOpenURL("https://pl116.plemiona.pl/game.php?village=41377&village=41377&screen=am_farm&group=176122")
EndIf

	dim $wioski[110][9]
	$juz = 1
While 1
	$html=_FFReadHTML()
	

	if $juz  > 1 Then
		
if $juz > $max_wiosek+10 or StringInStr($html,'alt="Do pierwszej') > 0 or StringInStr($html,'arrowRightGrey') > 0 or  StringInStr($html,'ochrona') > 0  or StringInStr($html,'plunder_list') = 0 or TimerDiff($czas)/60000 > $max_czas Then
	$powod = ""
	if $juz > $max_wiosek+10 Then $powod = "zrobilo "&$juz&" wiosek"
	if StringInStr($html,'alt="Do pierwszej') > 0 then $powod = "Skonczyly sie wioski (do pierwszej)"
	if StringInStr($html,'arrowRightGrey') > 0	then $powod = "Skonczyly sie wioski (szara strzalka)"
	if StringInStr($html,'ochrona') > 0 Then $powod = "wykryto slowo ochrona na stronie"
	if StringInStr($html,'plunder_list') = 0  then $powod = "nie znaleziono tabelki z poprzednich atakow"
	if TimerDiff($czas)/60000 > 15 Then $powod = "uplynal czas "&$max_czas&" min"
FileWrite("log.txt","ends at "&@MON&"-"&@mday&" "&@hour&":"&@min&" bo "&$powod&" wyslano "&$suma_atakow&" atakow"&@CRLF&@CRLF)
   MsgBox(0,"",$powod)
;~ Shutdown(64)
   Exit
   EndIf
EndIf

   $p=StringInStr($html,'<table id="units_home"')

	$p = StringInStr($html,'id="axe">',0,1,$p)+9
	$k = StringInStr($html,'</t',0,1,$p)
	$axe = StringMid($html,$p,$k-$p)

    $p = StringInStr($html,'id="light">',0,1,$p)+11
	$k = StringInStr($html,'</t',0,1,$p)
	$lk = StringMid($html,$p,$k-$p)

    $p = StringInStr($html,'id="marcher">',0,1,$p)+13
	$k = StringInStr($html,'</t',0,1,$p)
	$marcher = StringMid($html,$p,$k-$p)


	$p=StringInStr($html,'<table id="plunder_list"')
	$p = StringInStr($html,'<tr',0,1,$p)+1
	for $i=0 to 40
	$p = StringInStr($html,'<tr',0,1,$p)
	$k = StringInStr($html,'</tr',0,1,$p)
$p3 = $p

	$kod = StringMid($html,$p,$k-$p)

	$p = StringInStr($html,'_',0,1,$p)+1
	$k = StringInStr($html,'"',0,1,$p)
	$wioski[$i][0] = StringMid($html,$p,$k-$p) ;id wioski

	$p = StringInStr($html,'dots/',0,1,$p)+5
	$k = StringInStr($html,'.',0,1,$p)
	$wioski[$i][1] = StringMid($html,$p,$k-$p) ;straty, green yelow red

	if $wioski[$i][1] <> "red" and $wioski[$i][1] <> "blue" and $wioski[$i][1] <> "red_blue" Then
	$p = StringInStr($html,'loot/',0,1,$p)+5
	$k = StringInStr($html,'.',0,1,$p)
	$wioski[$i][2] = StringMid($html,$p,$k-$p) ;pe³ny ³up - 1, nie pe³ny - 0
   Else
	$p = StringInStr($html,'<td',0,1,$p)+3
 EndIf

 $p2 = $p
 $html2 = $html
$p = $p3

    $html = StringReplace($html,'<span class="grey">.</span>',"")
	$p = StringInStr($html,'Drewno"',0,1,$p)
	$p = StringInStr($html,'res"',0,1,$p)+5
    $k = StringInStr($html,'<',0,1,$p)
	$wioski[$i][5] = StringMid($html,$p,$k-$p)

   	$p = StringInStr($html,'Glina"',0,1,$p)
	$p = StringInStr($html,'res"',0,1,$p)+5
    $k = StringInStr($html,'<',0,1,$p)
	$wioski[$i][6] = StringMid($html,$p,$k-$p)

   $p = StringInStr($html,'elazo"',0,1,$p)
	$p = StringInStr($html,'res"',0,1,$p)+5
    $k = StringInStr($html,'<',0,1,$p)
	$wioski[$i][7] = StringMid($html,$p,$k-$p)

$p = $p2
$html = $html2

	$p = StringInStr($html,'<td',0,4,$p)+3
	$p = StringInStr($html,'>',0,1,$p)+1
	$k = StringInStr($html,'<',0,1,$p)
	$wioski[$i][3] = StringMid($html,$p,$k-$p) ;murek w wiosce

	$p = StringInStr($html,'<td>',0,1,$p)+4
	$k = StringInStr($html,'<',0,1,$p)
	$wioski[$i][4] = StringMid($html,$p,$k-$p) ;odleg³oœæ
	
	if $wioski[$i][3] = "?" Then
		$wioski[$i][5] = 0
		$wioski[$i][6] = 0
		$wioski[$i][7] = 0
		EndIf
 Next

for $i=0 to 40
if $wioski[$i][5]+$wioski[$i][6]+$wioski[$i][7] > 21*1.19^$wioski[$i][3]*80 Then
   $wioski[$i][8] = 1
Else
   $wioski[$i][8] = 0
   EndIf
   Next

 $ile = 0
 $wojska = $axe*10 + $lk*80 + $marcher*50
 $surowce = 0
 Do
	if $wioski[$ile][8] = 1 Then  $surowce += $wioski[$ile][5]+$wioski[$ile][6]+$wioski[$ile][7]

	$ile += 1
	Until( $surowce > $wojska or $ile >= 39)

for $i=0 to $ile
   if $wioski[$i][8] = 1 Then 
	   _FFclick("farm_village_"&$wioski[$i][0]&" farm_icon farm_icon_c","class")
	   Sleep(Random(110,1500))
	   $suma_atakow += 1
	   EndIf
	 Next
	  _FFclick("village_switch_right","id") 
   $juz += 1
	WEnd
EndIf

