$g = "152/16123"
$k = StringInStr($g,"/")
$g2 = StringTrimLeft($g,$k)
$g = StringLeft($g,$k-1)
MsgBox(0,$g2,$g)