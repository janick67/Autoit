$re = FileRead("statrick.txt")
$p = StringInStr($re,'ter">')+5
$k = StringInStr($re,'</tab',0,1,$p)
$w = StringMid($re,$p,$k-$p)
$w = StringStripWS($w,8)
MsgBox(0,"",$w)
for $i = 4 to 76
$p = StringInStr($w,'</td><td>',0,$i)+9
$k = StringInStr($w,'</td><td>',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
if StringIsInt(($i-1)/3) then 
	Next