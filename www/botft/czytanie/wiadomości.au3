#include<Array.au3>

dim $post[100][5]
$re = FileRead("wiadomosci.txt")
$re = StringStripWS($re,5)
$re = StringReplace($re,@cr,"")
MsgBox(0,"",$re)
for $i=1 to 99
$p = StringInStr($re,'name="',0,$i)+6
$k = StringInStr($re,'"',0,1,$p)
$post[$i][0]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'<td>',0,1,$k)+4
$k2 = StringInStr($re,'<',0,1,$p)
$post[$i][1]=StringMid($re,$p,$k2-$p)
$p = StringInStr($re,'td >',0,1,$k)+4
$k = StringInStr($re,'<',0,1,$p)
$post[$i][2]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'<td>',0,1,$k)+4
$k = StringInStr($re,'</td>',0,1,$p)
$temat = StringMid($re,$p,$k-$p)
$p = StringInStr($re,'<b>',0,1)+3
$k = StringInStr($re,'</b>',0,1,$p)
$post[$i][3]=StringMid($re,$p,$k-$p)
if StringInStr($temat,"<b>") Then
	$post[$i][4] = 1
Else
	$post[$i][4] = 0
EndIf
if StringInStr($post[$i][0],".")>0 Then
$post[0][0] = $i-1
$post[$i][0] = ""
$post[$i][1] = ""
$post[$i][2] = ""
$post[$i][3] = ""
$post[$i][4] = ""
ExitLoop
EndIf
Next

;~ for $i=1 to 99
;~ $p = StringInStr($re,'name="',0,$i)+6
;~ $k = StringInStr($re,'"',0,1,$p)
;~ $post[$i][1]=StringMid($re,$p,$k-$p)
;~ if StringInStr($post[$i][1],".")>0 Then
;~ $post[0][1] = $i-1
;~ $post[$i][1] = ""
;~ ExitLoop
;~ EndIf
;~ Next

_ArrayDisplay($post)