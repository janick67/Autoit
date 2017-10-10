#include<Array.au3>
dim $gracz[29][2] = [["Nick"],["ID"],["Ranking"],["Poczta"],["UM"],["Euro"],["Pot"],["Forma"],["Akcje"],["Akcje w schowku"],["S³awa"],["Pozycja"],["E-mail"],["Narodowoœæ"],["Premium"],["Klub"],["Wiek"],["Wartoœæ"],["Atak"],["Obrona"],["Podania"],["Bronieni"],["Celnoœæ"],["Strza³y"],["Doœrodkowania"],["Skutecznoœæ"],["Kondycja"],["Szybkoœæ"],["Produkcja"]]
$re = FileRead("staty.txt")

$p3 = StringInStr($re,'S³awa: <b style="color: gold;">',0,1)+31
$k3 = StringInStr($re,'<',0,1,$p3)
$gracz[10][1] = StringMid($re,$p3,$k3-$p3)

$p = StringInStr($re,'25px;">',0,1)+7
$k = StringInStr($re,'<',0,1,$p)
$gracz[11][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'E-mail:</b></td><td>',0,1)+20
$k = StringInStr($re,'<',0,1,$p)
$gracz[12][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'width="15" /> ',0,1)+14
$k = StringInStr($re,'<',0,1,$p)
$gracz[13][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'Premium:</b></td><td>',0,1)+21
$k = StringInStr($re,'<',0,1,$p)
$gracz[14][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,"'player_box')",0,4)+15
$k = StringInStr($re,'<',0,1,$p)
$gracz[15][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,"nika:</b></td><td>",0,1)+18
$k = StringInStr($re,'<',0,1,$p)
$gracz[16][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,"zon):</b></td><td>",0,1)+18
$k = StringInStr($re,'<',0,1,$p)
$gracz[17][1]=StringMid($re,$p,$k-$p)

$p = StringInStr($re,'cellspacing="0">',0,1)+17
$k = StringInStr($re,'</table>',0,3,$p)
$w2 = StringMid($re,$p,$k-$p)
$w2 = StringStripWS($w2,8)
for $i = 18 to 28 
$p = StringInStr($w2,'</b></td><td>',0,$i-17)+13
$k = StringInStr($w2,'<',0,1,$p)
$gracz[$i][1]=StringMid($w2,$p,$k-$p)
Next
_ArrayDisplay($gracz)