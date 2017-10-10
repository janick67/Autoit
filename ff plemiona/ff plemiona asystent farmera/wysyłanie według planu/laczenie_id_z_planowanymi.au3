#include "FF.au3"
#include <Array.au3>

dim $ataki[1000][5] ; 0 - id, 1 - wsp, 2 - wspcelu, 3 - czas, 4 - typ
dim $id2[200][2]

$id = StringSplit(FileRead("wioski_z_id.txt"),";")

for $i = 1 to UBound($id)-1
		$id3 = StringSplit($id[$i],"|")
		$id2[$i-1][1] = $id3[1]&"|"&$id3[2]
		$id2[$i-1][0] = $id3[3]
	Next
	
$ataki2 = StringSplit(FileRead("ataki.txt"),";")
;_ArrayDisplay($ataki2)
for $i = 1 to UBound($ataki2)-2
		$ataki3 = StringSplit($ataki2[$i],"|")
		;_ArrayDisplay($ataki3)
		$ataki[$i-1][1] = $ataki3[1]&"|"&$ataki3[2]
		$ataki[$i-1][2] = $ataki3[3]&"|"&$ataki3[4]
		$ataki[$i-1][3] = $ataki3[5]
		$ataki[$i-1][4] = $ataki3[6]
		Next


For $i = 0 to UBound($ataki) - 1
	$int = _ArraySearch($id2,$ataki[$i][2],0,0,0,1,1,1)
	if $int <> -1 then 	$ataki[$i][0] = $id2[$int][0]
Next

$str = ""

For $i = 0 to UBound($ataki) - 1
	if ($ataki[$i][0]>2) then	$str &= $ataki[$i][0]&"|"&$ataki[$i][2]&"|"&$ataki[$i][1]&"|"&$ataki[$i][3]&"|"&$ataki[$i][4]&";"
Next

FileWrite("noweataki.txt",$str)
