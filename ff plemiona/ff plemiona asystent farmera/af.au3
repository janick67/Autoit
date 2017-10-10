HotKeySet("{`}","pokaz")
#include "FF.au3"
#include <Array.au3>


$max_wiosek = 100
$max_czas = 30 ;w minutach
$piechota = 0

$czas = TimerInit()
$suma_atakow = 0

FileWrite("log.txt","starts at "&@YEAR&"-"&@MON&"-"&@mday&" "&@hour&":"&@min&@CRLF)
_FFStart("https://pl116.plemiona.pl/game.php?village=41377&screen=am_farm&group=176122",0,2)
start()


Func Start()
	If _FFIsConnected() Then
;~ 		$string = ""
;~ 		Dim $wioski[3000][2]
;~ 		for $i = 3 to 11 step 1
;~ 			
;~ _FFOpenURL("https://pl116.plemiona.pl/game.php?village=41377&screen=am_farm&group=176122&Farm_page="&$i)
;~ $tab = _FFTableWriteToArray("plunder_list","id")
;~ for $j = 2 to UBound($tab) - 1 step 1
;~ ;$string &= StringTrimLeft(StringTrimRight(StringReplace(StringReplace($tab[$j][3],"(",""),")",""),6),1) & ";"
;~ $string &= StringMid($tab[$j][3],StringInStr($tab[$j][3],"|")-3,7) & ";"
;~ Next
;~ Next
;~ FileWrite("Wioski.txt", $string)
;~ Exit
if $piechota = 0 Then
_FFOpenURL("https://pl116.plemiona.pl/game.php?village=41377&screen=am_farm&group=176122")
_FFFormCheckBox("spear",false,0,"name")
_FFFormCheckBox("sword",false,0,"name")
_FFFormCheckBox("axe",false,0,"name")
_FFFormCheckBox("archer",false,0,"name")
_FFFormCheckBox("light",true,0,"name")
_FFFormCheckBox("marcher",true,0,"name")
_FFFormCheckBox("heavy",false,0,"name")
ConsoleWrite("Rozpoczêto wysy³anie konnych"&@CRLF)
Else
_FFOpenURL("https://pl116.plemiona.pl/game.php?village=41864&screen=am_farm&group=214890")
;~ _FFFormCheckBox("spear",true,0,"name")
;~ _FFFormCheckBox("sword",true,0,"name")
;~ _FFFormCheckBox("axe",true,0,"name")
;~ _FFFormCheckBox("archer",True,0,"name")
_FFFormCheckBox("spear",false,0,"name")
_FFFormCheckBox("sword",false,0,"name")
_FFFormCheckBox("axe",true,0,"name")
_FFFormCheckBox("archer",false,0,"name")
_FFFormCheckBox("light",false,0,"name")
_FFFormCheckBox("marcher",false,0,"name")
_FFFormCheckBox("heavy",false,0,"name")
ConsoleWrite("Rozpoczêto wysy³anie piechoty"&@CRLF)
EndIf
_FFClick("heavy","name",2)
_FFClick("heavy","name",2)

wysylaj()
Else
	FileWrite("log.txt","koniec programu "&@MON&"-"&@mday&" "&@hour&":"&@min&" bo nie po³¹czy³ siê"&@CRLF&@CRLF)
;~   MsgBox(0,"",$powod)
;~ Shutdown(32)
   Exit
	EndIf
EndFunc

Func wysylaj()
$czas = TimerInit()
$suma_atakow = 0


$html=_FFReadHTML()

if StringInStr($html,'rejestracja!') > 0 Then
	_FFClick("button_middle","class")
	_FFClick("world_button_active","class")
	start()
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
if $piechota = 1 Then
FileWrite("log.txt","koniec piechoty "&@MON&"-"&@mday&" "&@hour&":"&@min&" bo "&$powod&" wyslano "&$suma_atakow&" atakow"&@CRLF&"Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&@CRLF)
     ConsoleWrite("koniec piechoty"&@CRLF&"Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow&@CRLF)
	 TrayTip("koniec piechoty","Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow,5)
;~   MsgBox(0,"",$powod)
Shutdown(64)
   Exit
Else
   FileWrite("log.txt","koniec konnych "&@MON&"-"&@mday&" "&@hour&":"&@min&" bo "&$powod&" wyslano "&$suma_atakow&" atakow"&@CRLF&"Czas: "&Round(TimerDiff($czas)/60000)&@CRLF)
   ConsoleWrite("koniec konnych"&@CRLF&"Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow&@CRLF)
   TrayTip("koniec konnych","Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow,5)
;~ Shutdown(64)
   Exit
$piechota = 1
start()
EndIf


EndIf
EndIf

   $p=StringInStr($html,'<table id="units_home"')

   	$p = StringInStr($html,'id="spear">',0,1,$p)+11
	$k = StringInStr($html,'</t',0,1,$p)
	$spear = StringMid($html,$p,$k-$p)

    $p = StringInStr($html,'id="sword">',0,1,$p)+11
	$k = StringInStr($html,'</t',0,1,$p)
	$sword = StringMid($html,$p,$k-$p)

	$p = StringInStr($html,'id="axe">',0,1,$p)+9
	$k = StringInStr($html,'</t',0,1,$p)
	$axe = StringMid($html,$p,$k-$p)

    $p = StringInStr($html,'id="archer">',0,1,$p)+12
	$k = StringInStr($html,'</t',0,1,$p)
	$archer = StringMid($html,$p,$k-$p)

    $p = StringInStr($html,'id="light">',0,1,$p)+11
	$k = StringInStr($html,'</t',0,1,$p)
	$lk = StringMid($html,$p,$k-$p)

    $p = StringInStr($html,'id="marcher">',0,1,$p)+13
	$k = StringInStr($html,'</t',0,1,$p)
	$marcher = StringMid($html,$p,$k-$p)

    $p = StringInStr($html,'id="heavy">',0,1,$p)+11
	$k = StringInStr($html,'</t',0,1,$p)
	$heavy = StringMid($html,$p,$k-$p)

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
 if $piechota = 0 Then
	 $wojska = $lk*80 + $marcher*50 + $heavy*50
 Else
	 $wojska = $spear*25 + $sword*15 + $axe*10 + $archer*10
	EndIf

 $surowce = 0
 Do
	if $wioski[$ile][8] = 1 Then  $surowce += $wioski[$ile][5]+$wioski[$ile][6]+$wioski[$ile][7]

	$ile += 1
 Until( $surowce > $wojska or $ile >= 39)


for $i=0 to $ile
   if $wioski[$i][3] = "?" Then
	  _FFclick("farm_village_"&$wioski[$i][0]&" farm_icon farm_icon_b","class")
	  $suma_atakow += 1
	  Sleep(Random(110,1500))
	  EndIf
Next
$nowe_ataki = 0
for $i=0 to $ile
   if $wioski[$i][8] = 1 Then
	   _FFclick("farm_village_"&$wioski[$i][0]&" farm_icon farm_icon_c","class")
	   Sleep(Random(110,1500))
	   $suma_atakow += 1
	   $nowe_ataki += 1
	   EndIf
	 Next
	  _FFclick("village_switch_right","id")
	  ConsoleWrite("Nastêpna wioska, posz³o: "&$nowe_ataki&" ataków"&@CRLF)
   $juz += 1
	WEnd

EndFunc

Func pokaz()
	if $piechota = 0 Then
	TrayTip("Konnica","Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow,5)
Else
	TrayTip("Piechota","Czas: "&Round(TimerDiff($czas)/60000)&@CRLF&"Wys³anych ataków: "&$suma_atakow,5)
	EndIf
	EndFunc