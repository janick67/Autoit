#include<Array.au3>
Dim $tnwsp[11][2]
dim $Ttrick[25][2] = [["Przewrotka","przewrotka"],["Drybling","drybling"],["Dooko�a �wiata","dookola"],["Krzy�aczek","krzyzaczek"],["Przeplatanka","przeplatanka"],["Crossover","crossover"],["No�yce","nozyce"],["Pi�tka","pietka"],["Rabona","rabona"],["Trick Zidane'a","zidanestrick"],["Wolej","wolej"],["Zw�d","zwod"],["Podcinka","podcinka"],["Przerzutka","przerzutka"],["Kiwka","kiwka"],["T�cza","tecza"],["Elastico","elastico"],["Hokus Pokus","hokus"],["X Over","xover"],["Kopni�cie skorpiona","skorpion"],["Air","air"],["Sitdown","sitdown"],["Upper","upper"],["Ground","ground"],["Special","special"]]
$re = FileRead("wiadomosc.txt")
$w = StringStripWS($re,5)
$p = StringInStr($w,'15px;">')+7
$k = StringInStr($w,'</div',0,1,$p)
$w = StringMid($w,$p,$k-$p)
MsgBox(0,"",$w)

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
Case " dobrany b��dnie (wybra�e� "
	$w2 = 0 
Case " dobrany b��dnie (ustawi�e� za ma�o, wybra�e� "
	$w2 = 1
Case " dobrany b��dnie (ustawi�e� za du�o, wybra�e� "
	$w2 = 2
Case " dobrany prawid�owo (wybra�e� "
	$w2 = 3
	EndSwitch
	$tnwsp[$i/2+0.5][1] = $w2
EndIf
	Next
	
_ArrayDisplay($tnwsp)

;~ 0 to nw
;~ 1 to za ma�o
;~ 2 to za du�o
;~ 3 to dobrze