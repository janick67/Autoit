$re = FileRead("slawa.txt")
$p = StringInStr($re,'20px;">')+7
$k = StringInStr($re,'<',0,3,$p)
$w = StringMid($re,$p,$k-$p)
MsgBox(0,"",$w)
