HotKeySet("{`}","pokaz")
#include "FF.au3"
#include <Array.au3>

dim $ataki[14][7] ; 0 - id, 1 - wsp_x, 2 - wsp_y, 3 - wspcelu_x, 4 - wspcelu_y, 5 - czas, 6 - typ

;Wczytanie listy ------------------------------------------------------
$tab = StringSplit(FileRead("ataki.txt"),";")

for $i = 1 to UBound($tab) - 1 
	$temp = StringSplit($tab[$i],"|")
	for $j = 1 to UBound($temp) - 1
		$ataki[$i-1][$j-1] = $temp[$j]
		Next
	Next
	
;	_ArrayDisplay($ataki)
;Wczytanie listy ------------------------------------------------------ koniec
_ArraySort($ataki,0,0,0,5)
_ArrayDisplay($ataki)
_FFStart("https://pl116.plemiona.pl/game.php?village=36896&screen=place",0,2)
;-------------------------------ladowanie i ustawianie fejka---------------------
dim $jedn[12][3] ;0 - ilosc w wiosce, 1 - miejsca w zagrodzie, 2 - do wyslania

;-------------------------------ladowanie i ustawianie fejka---------------------koniec



$iat = 0

If _FFIsConnected() Then
While 1
	$break = 1
	;ToolTip("Pierwsza petla "&(por_czas(($ataki[$iat][5]))/(-1000)))
	If por_czas($ataki[$iat][5])/(-1000) < 60 then
		Sleep(Random(1100,10000))
		ToolTip("nie ruszaj")
		_FFOpenURL("https://pl116.plemiona.pl/game.php?village="&$ataki[$iat][0]&"&screen=place")
		;MsgBox(0,"",$ataki[$iat][0])
		$html=_FFReadHTML()
		if StringInStr($html,'rejestracja!') > 0 Then
			_FFClick("button_middle","class")
			_FFClick("world_button_active","class")
			_FFOpenURL("https://pl116.plemiona.pl/game.php?village="&$ataki[$iat][0]&"&screen=place")
			$html=_FFReadHTML()
		EndIf
		if  StringInStr($html,'ochrona') > 0 Then
for $i = 0 to 100
Send("{volume_up}")
Next
for $i = 0 to 20
Send("{volume_down}")
Next
SoundPlay("alarm.mp3",0)
			MsgBox(0,"","bot kliknij ok jak odblokujesz")
			_FFOpenURL("https://pl116.plemiona.pl/game.php?village="&$ataki[$iat][0]&"&screen=place")
			$html=_FFReadHTML()
		EndIf
		wczyt_jedn($html)
		While $break
			;ToolTip("Druga petla "&(por_czas(($ataki[$iat][5]))/(-1000)))
			If por_czas($ataki[$iat][5])/(-1000) < 20 Then
				wybierz_jedn($ataki[$iat][6])
				ustaw()
				While $break
					If por_czas($ataki[$iat][5])+1500+228 >= 0 then
						;_FFClick("troop_confirm_go","id"
						_FFFormSubmit()
						ToolTip("")
						;MsgBox(0,"","")
						$iat += 1
						$break = 0
					EndIf
				WEnd
			EndIf
		Sleep(500)
		WEnd
	EndIf
	Sleep(2000)
WEnd
EndIf

func wybierz_jedn($typ)
	for $i = 0 to 11
		$jedn[$i][2] = 0 
	Next
	
	If $typ = 0 Then
	$poziom = 620
	if $jedn[8][0] > 0 Then
		if $jedn[8][0] >= 9 Then 
			$jedn[8][2] = 9
		Else 
			$jedn[8][2] = $jedn[8][0]
		EndIf
	EndIf
	
		
	if $jedn[9][0] > 0 Then
	if $jedn[9][0] >= 9 Then 
			$jedn[9][2] = 9
		Else 
			$jedn[9][2] = $jedn[9][0]
		EndIf
	EndIf
	
		
	$poziom -= $jedn[9][2] * $jedn[9][1] + $jedn[8][2] * $jedn[8][1]
	$i = 0
	Do
		if $jedn[$i][0]*$jedn[$i][1] > $poziom Then 
			$jedn[$i][2] = Ceiling($poziom/$jedn[$i][1])
		Else 
			$jedn[$i][2] = $jedn[$i][0]
		EndIf
		
			$poziom -= $jedn[$i][2] * $jedn[$i][1]
			$i+=1
	Until $i >= 8 or $poziom < 0
		
		for $i = 0 to 11 
			$jedn[$i][2] = $jedn[$i][0] - $jedn[$i][2]
		Next
		$jedn[11][2] = 1
Else
	$poziom = 504
	if $jedn[8][0] > 0 Then
		if $jedn[8][0] >= 9 Then 
			$jedn[8][2] = 3
		Else 
			$jedn[8][2] = Ceiling($jedn[8][0]/3)
		EndIf
	EndIf
	
		
	if $jedn[9][0] > 0 Then
	if $jedn[9][0] >= 9 Then 
			$jedn[9][2] = 3
		Else 
			$jedn[9][2] = Ceiling($jedn[9][0]/3)
		EndIf
	EndIf
	
		
	$poziom -= $jedn[9][2] * $jedn[9][1] + $jedn[8][2] * $jedn[8][1]
	$i = 0
	Do
		ConsoleWrite($i&" "&$poziom&@CRLF)
		if $jedn[$i][0]*$jedn[$i][1] > $poziom Then 
			$jedn[$i][2] = Ceiling($poziom/$jedn[$i][1])
		Else 
			$jedn[$i][2] = $jedn[$i][0]
		EndIf
		
			$poziom -= $jedn[$i][2] * $jedn[$i][1]
			$i+=1
		Until $i >= 8 or $poziom < 0
		$jedn[11][2] = 1
	EndIf
EndFunc


func ustaw()
	;_ArrayDisplay($jedn)
	_FFSetValue($jedn[0][2],"unit_input_spear","id")
	_FFSetValue($jedn[1][2],"unit_input_sword","id")
	_FFSetValue($jedn[2][2],"unit_input_axe","id")
	_FFSetValue($jedn[3][2],"unit_input_archer","id")
	_FFSetValue(5,"unit_input_spy","id")
	_FFSetValue($jedn[5][2],"unit_input_light","id")
	_FFSetValue($jedn[6][2],"unit_input_marcher","id")
	_FFSetValue($jedn[7][2],"unit_input_heavy","id")
	_FFSetValue($jedn[8][2],"unit_input_ram","id")
	_FFSetValue($jedn[9][2],"unit_input_catapult","id")
	_FFSetValue($jedn[10][2],"unit_input_knight","id")
	_FFSetValue($jedn[11][2],"unit_input_snob","id")
	
	_FFSetValue($ataki[$iat][3]&"|"&$ataki[$iat][4],"target-input-field","class");wspolrzedne celu jako parametr
	Sleep(Random(10,500))
	_FFClick("target_attack","id")
	EndFunc

	func wczyt_jedn($html)

	$p = StringInStr($html,'id="unit_input_spear"') ;pikinier
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[0][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_sword"') ;miecz
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[1][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_axe"') ;topor
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[2][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_archer"') ;luk
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[3][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_spy') ;zwiad
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[4][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_light"') ;lk
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[5][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_marcher"') ;konny luk
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[6][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_heavy"') ;ciezka
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[7][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_ram"') ;tarany
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[8][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_catapult"') ;katapulty
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[9][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_knight"')
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[10][0] = StringMid($html,$p,$k-$p)
	
	$p = StringInStr($html,'id="unit_input_snob"')
	$p = StringInStr($html,'count="',0,1,$p)+7
	$k = StringInStr($html,'"',0,1,$p)
	$jedn[11][0] = StringMid($html,$p,$k-$p)
	
	$jedn[0][1] = 1
	$jedn[1][1] = 1
	$jedn[2][1] = 1
	$jedn[3][1] = 1
	$jedn[4][1] = 2
	$jedn[5][1] = 4
	$jedn[6][1] = 5
	$jedn[7][1] = 6
	$jedn[8][1] = 5
	$jedn[9][1] = 8
EndFunc

func por_czas($czas, $miesiac = @MON, $dzien = @MDAY, $godz = @HOUR, $min = @MIN, $sec = @SEC, $msec = @MSEC)
	dim $tczas[6]
	$tab = StringSplit($czas," ")
	;_ArrayDisplay($tab)
	$temp = StringSplit(StringReplace($tab[1],"::",":"),":") ;zast¹pienie :: przy milisekundach na pojedynczy
	;_ArrayDisplay($temp)
	$tczas[0] = $temp[1]
	$tczas[1] = $temp[2]
	$tczas[2] = $temp[3]
	$tczas[3] = $temp[4]
	$temp = StringSplit($tab[2],"-")
	$tczas[4] = $temp[1]
	$tczas[5] = $temp[2]
	;_ArrayDisplay($tczas)
	$czas1 = ((((((((($tczas[4]*30)+$tczas[5])*24)+$tczas[0])*60)+$tczas[1])*60)+$tczas[2])*1000)+$tczas[3]
		;            (miesiac do dni + dzien) do h + h)   do min + min)  do sec + sec)   do msec + msec
	$czas2 = ((((((((($miesiac*30)+$dzien)*24)+$godz)*60)+$min)*60)+$sec)*1000)+$msec
	$dif = $czas2 - $czas1
	Return $dif
	EndFunc


Func pokaz()
	TrayTip("Nastepny za",por_czas($ataki[$iat][5])/(-60000),5)
	EndFunc