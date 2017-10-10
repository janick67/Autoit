$re = FileRead("tk.txt")
$p = StringInStr($re,'20px;">')+7
$k = StringInStr($re,'<',0,1,$p)
$w = StringMid($re,$p,$k-$p)
MsgBox(0,"",$w)
