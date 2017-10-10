#include<Array.au3>
Dim $tnwsp[11][2]
Dim $twsp[11]
dim $Ttrick[25][2] = [["Przewrotka","przewrotka"],["Drybling","drybling"],["Dooko³a œwiata","dookola"],["Krzy¿aczek","krzyzaczek"],["Przeplatanka","przeplatanka"],["Crossover","crossover"],["No¿yce","nozyce"],["Piêtka","pietka"],["Rabona","rabona"],["Trick Zidane'a","zidanestrick"],["Wolej","wolej"],["Zwód","zwod"],["Podcinka","podcinka"],["Przerzutka","przerzutka"],["Kiwka","kiwka"],["Têcza","tecza"],["Elastico","elastico"],["Hokus Pokus","hokus"],["X Over","xover"],["Kopniêcie skorpiona","skorpion"],["Air","air"],["Sitdown","sitdown"],["Upper","upper"],["Ground","ground"],["Special","special"]]


func trickw($id, $poziom)
	Local $dos, $ws, $l, $trick
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0]
	for $i = 1 to $poziom
		$dos = IniRead("trick.ini",$trick&";"&$poziom,$i,"")
		$ws = StringSplit($dos,";",2)
		$l = int(UBound($ws)/2-0.5)
		$twsp[$i] = $ws[$l]
	Next
	$twsp[0] = $poziom
	Return $twsp
	EndFunc

func tricku($id, $poziom = 11)
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0]
	for $ii = 1 to $poziom - 1
		for $iii = 1 to $ii
			IniWrite("trick.ini",$trick&";"&$ii,$iii,"")
		Next
	Next
EndFunc

Func trickl($id, $poziom, $wsp, $liczba, $opcja = 0)
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0]
	Local $dos = IniRead("trick.ini",$trick&";"&$poziom,$wsp,"")
	Local $ws = StringSplit($dos,";",2)
	Local $ml = _ArrayFindAll($ws,$liczba)
	$ml = $ml[0]
	Switch $opcja
	Case 0
		_ArrayDelete($ws,$ml)
	Case 1
		for $i = 1 to $ml+1
		Local $mld = _ArrayFindAll($ws,$i)
		if $mld <> -1 Then _ArrayDelete($ws,$mld[0])
		Next
	case 2
		for $i = $ml+1 to 10
		local $mld = _ArrayFindAll($ws,$i)
		if $mld <> -1 Then _ArrayDelete($ws,$mld[0])
		Next
	case 3
		for $i = 1 to 10
		Local $mld = _ArrayFindAll($ws,$i)
		if $mld <> -1 and $i <> $liczba Then _ArrayDelete($ws,$mld[0])
		Next
	EndSwitch
	$dos = ""
	for $i = 0 to UBound($ws)-1
		$dos &= $ws[$i]&";"
	Next
	$dos = stringleft($dos,stringlen($dos)-1)
	IniWrite("trick.ini",$trick&";"&$poziom,$wsp,$dos)
EndFunc

func trickread($postid)
$re = FileRead("wiadomosc.txt")
$w = StringStripWS($re,5)
$p = StringInStr($w,'15px;">')+7
$k = StringInStr($w,'</div',0,1,$p)
$w = StringMid($w,$p,$k-$p)

$p = StringInStr($w,'<b>',0,1)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$tnwsp[0][0] = $w2
$p = StringInStr($w,'<b>',0,2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$w2 = StringReplace($w2,".","")
$tnwsp[0][1] = $w2

for $i = 1 to $tnwsp[0][1]*2
$p = StringInStr($w,'<b>',0,$i+2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
if StringIsInt($i/2) Then $tnwsp[$i/2][0] = $w2
if StringIsFloat($i/2) Then
$p = StringInStr($w,'</b>',0,1,$p)+4
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
Switch $w2
Case " dobrany b³êdnie (wybra³e¶ "
	$w2 = 0 
Case " dobrany b³êdnie (ustawi³e¶ za ma³o, wybra³e¶ "
	$w2 = 1
Case " dobrany b³êdnie (ustawi³e¶ za du¿o, wybra³e¶ "
	$w2 = 2
Case " dobrany prawid³owo (wybra³e¶ "
	$w2 = 3
	EndSwitch
	$tnwsp[$i/2+0.5][1] = $w2
EndIf
	Next	
Return $tnwsp
EndFunc

for $i = 1 to 25
	for $ii = 1 to 10
		for $iii = 1 to $ii
			$w = ""
			for $iiii = 1 to 10
				$w &= $iiii&";"
			Next
			$w = stringleft($w,stringlen($w)-1)
			IniWrite("trick.ini",$Ttrick[$i-1][0]&";"&$ii,$iii,$w)
		Next
	Next
Next

;~ tricku(1)
;~ tricku(2)
;~ tricku(3)
;~ tricku(4)
;~ tricku(5)
;~ tricku(6)
;~ tricku(7,9)
;~ tricku(8,2)
;~ trickw(1,6)
