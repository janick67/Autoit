$re = FileRead("statrick.txt")
$p = StringInStr($re,'ter">')+5
$k = StringInStr($re,'</tab',0,1,$p)
$w = StringMid($re,$p,$k-$p)
MsgBox(0,"",$w)