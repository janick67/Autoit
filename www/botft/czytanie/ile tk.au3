$re = FileRead("wtk.txt")
MsgBox(0,"",$re)
$p = StringInStr($re,'<b>')+3
$k = StringInStr($re,' UM',0,1,$p)
$w = StringMid($re,$p,$k-$p)
MsgBox(0,"",$w)
