$re = FileRead("bank.txt")
MsgBox(0,"",$re)
$p = StringInStr($re,'ue="')+4
$k = StringInStr($re,'"',0,1,$p)
$w = StringMid($re,$p,$k-$p)
MsgBox(0,"",$w)
