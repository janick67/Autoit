HotKeySet("{down}","down")
HotKeySet("{esc}","stop")
HotKeySet("{up}","up")
HotKeySet("{right}","right")
HotKeySet("{left}","left")
HotKeySet("{`}","pauza")

#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
$wg=Random(1,31,1)
$sg=Random(1,22,1)
$w=$wg*10
$s=$sg*10
$pauza=0
$s1=120
$w1=170
$s2=-20
$w2=-20
$s3=-20
$w3=-20
$s4=-20
$w4=-20
$s5=-20
$w5=-20
$s6=-20
$w6=-20
$s7=-20
$w7=-20
$s8=-20
$w8=-20
$s9=-20
$w9=-20
$s10=-20
$w10=-20
$s11=-20
$w11=-20
$s12=-20
$w12=-20
$s13=-20
$w13=-20
$s14=-20
$w14=-20
$s15=-20
$w15=-20
$s16=-20
$w16=-20
$s17=-20
$w17=-20
$s18=-20
$w18=-20
$s19=-20
$w19=-20
$s20=-20
$w20=-20
$s21=-20
$w21=-20
$s22=-20
$w22=-20
$s23=-20
$w23=-20
$s24=-20
$w24=-20
$s25=-20
$w25=-20
$s26=-20
$w26=-20
$s27=-20
$w27=-20
$s28=-20
$w28=-20
$s29=-20
$w29=-20
$s30=-20
$w30=-20
$p=1 
$F = GUICreate("Gra - W¹¿", 350, 250)
$g1 = GUICtrlCreateButton("",$w1,$s1,10,10)
$g2 = GUICtrlCreateButton("",$w2,$s2,10,10)
$g3 = GUICtrlCreateButton("",$w3,$s3,10,10)
$g4 = GUICtrlCreateButton("",$w4,$s4,10,10)
$g5 = GUICtrlCreateButton("",$w5,$s5,10,10)
$g6 = GUICtrlCreateButton("",$w6,$s6,10,10)
$g7 = GUICtrlCreateButton("",$w7,$s7,10,10)
$g8 = GUICtrlCreateButton("",$w8,$s8,10,10)
$g9 = GUICtrlCreateButton("",$w9,$s9,10,10)
$g10 = GUICtrlCreateButton("",$w10,$s10,10,10)
$g11 = GUICtrlCreateButton("",$w11,$s11,10,10)
$g12 = GUICtrlCreateButton("",$w12,$s12,10,10)
$g13 = GUICtrlCreateButton("",$w13,$s13,10,10)
$g14 = GUICtrlCreateButton("",$w14,$s14,10,10)
$g15 = GUICtrlCreateButton("",$w15,$s15,10,10)
$g16 = GUICtrlCreateButton("",$w16,$s16,10,10)
$g17 = GUICtrlCreateButton("",$w17,$s17,10,10)
$g18 = GUICtrlCreateButton("",$w18,$s18,10,10)
$g19 = GUICtrlCreateButton("",$w19,$s19,10,10)
$g20 = GUICtrlCreateButton("",$w20,$s20,10,10)
$g21 = GUICtrlCreateButton("",$w21,$s21,10,10)
$g22 = GUICtrlCreateButton("",$w22,$s22,10,10)
$g23 = GUICtrlCreateButton("",$w23,$s23,10,10)
$g24 = GUICtrlCreateButton("",$w24,$s24,10,10)
$g25 = GUICtrlCreateButton("",$w25,$s25,10,10)
$g26 = GUICtrlCreateButton("",$w26,$s26,10,10)
$g27 = GUICtrlCreateButton("",$w27,$s27,10,10)
$g28 = GUICtrlCreateButton("",$w28,$s28,10,10)
$g29 = GUICtrlCreateButton("",$w29,$s29,10,10)
$g30 = GUICtrlCreateButton("",$w30,$s30,10,10)
$o= GUICtrlCreateButton("",$w,$s,10,10)
$k=0
GUISetState(@SW_SHOW)
GUICtrlSetBkColor($g1,0xff0000)
GUICtrlSetBkColor($g2,0xff0000)
GUICtrlSetBkColor($g3,0xff0000)
GUICtrlSetBkColor($g4,0xff0000)
GUICtrlSetBkColor($g5,0xff0000)
GUICtrlSetBkColor($g6,0xff0000)
GUICtrlSetBkColor($g7,0xff0000)
GUICtrlSetBkColor($g8,0xff0000)
GUICtrlSetBkColor($g9,0xff0000)
GUICtrlSetBkColor($g10,0xff0000)
GUICtrlSetBkColor($g11,0xff0000)
GUICtrlSetBkColor($g12,0xff0000)
GUICtrlSetBkColor($g13,0xff0000)
GUICtrlSetBkColor($g14,0xff0000)
GUICtrlSetBkColor($g15,0xff0000)
GUICtrlSetBkColor($g16,0xff0000)
GUICtrlSetBkColor($g17,0xff0000)
GUICtrlSetBkColor($g18,0xff0000)
GUICtrlSetBkColor($g19,0xff0000)
GUICtrlSetBkColor($g20,0xff0000)
GUICtrlSetBkColor($g21,0xff0000)
GUICtrlSetBkColor($g22,0xff0000)
GUICtrlSetBkColor($g23,0xff0000)
GUICtrlSetBkColor($g24,0xff0000)
GUICtrlSetBkColor($g25,0xff0000)
GUICtrlSetBkColor($g26,0xff0000)
GUICtrlSetBkColor($g27,0xff0000)
GUICtrlSetBkColor($g28,0xff0000)
GUICtrlSetBkColor($g29,0xff0000)
GUICtrlSetBkColor($g30,0xff0000)
GUICtrlSetBkColor($o,0x00FF00)   
while 1
	if $pauza=1 Then
		MsgBox(0,"","naciœnij ~ aby wróciæ")
		EndIf
	g()
	$sw1=$s1&$w1
	$sw2=$s2&$w2
	$sw3=$s3&$w3
	$sw4=$s4&$w4
	$sw5=$s5&$w5
	$sw6=$s6&$w6
	$sw7=$s7&$w7
	$sw8=$s8&$w8
	$sw9=$s9&$w9
	$sw10=$s10&$w10
	$sw11=$s11&$w11
	$sw12=$s12&$w12
	$sw13=$s13&$w13
	$sw14=$s14&$w14
	$sw15=$s15&$w15
	$sw16=$s16&$w16
	$sw17=$s17&$w17
	$sw18=$s18&$w18
	$sw19=$s19&$w19
	$sw20=$s20&$w20
	$sw21=$s21&$w21
	$sw22=$s22&$w22
	$sw23=$s23&$w23
	$sw24=$s24&$w24
	$sw25=$s25&$w25
	$sw26=$s26&$w26
	$sw27=$s27&$w27
	$sw28=$s28&$w28
	$sw29=$s29&$w29
	$sw30=$s30&$w30
$Msg = GUIGetMsg()
   if $Msg=$GUI_EVENT_CLOSE then exit  
	   if $sw1=$sw3 or $sw1=$sw4 or $sw1=$sw5 or $sw1=$sw6 or $sw1=$sw7 or $sw1=$sw8 or $sw1=$sw9 or $sw1=$sw10 or $sw1=$sw11 or $sw1=$sw12 or $sw1=$sw13 or $sw1=$sw14 or $sw1=$sw15 or $sw1=$sw16 or $sw1=$sw17 or $sw1=$sw18 or $sw1=$sw19 or $sw1=$sw20 or $sw1=$sw21 or $sw1=$sw22 or $sw1=$sw23 or $sw1=$sw24 or $sw1=$sw25 or $sw1=$sw26 or $sw1=$sw27 or $sw1=$sw28 or $sw1=$sw29 or $sw1=$sw30 or $s1<0 or $w1<0 then 
		   MsgBox(0,"",$p)
		Exit
		   EndIf
		if $w=$w1 and $s=$s1 Then
		owoc()
	EndIf
	if $pauza=0 Then
	Switch $k
	case 1
		Sleep(100)

		$s1=$s1+10
	case 2
		Sleep(100)

		$s1=$s1-10
	Case 3
		Sleep(100)

		$w1=$w1-10
	case 4
		Sleep(100)

		$w1=$w1+10
	EndSwitch
	EndIf
	GUICtrlSetPos($g1,$w1,$s1,10,10)
	GUICtrlSetPos($g2,$w2,$s2,10,10)
	GUICtrlSetPos($g3,$w3,$s3,10,10)
	GUICtrlSetPos($g4,$w4,$s4,10,10)
	GUICtrlSetPos($g5,$w5,$s5,10,10)
	GUICtrlSetPos($g6,$w6,$s6,10,10)
	GUICtrlSetPos($g7,$w7,$s7,10,10)
	GUICtrlSetPos($g8,$w8,$s8,10,10)
	GUICtrlSetPos($g9,$w9,$s9,10,10)
	GUICtrlSetPos($g10,$w10,$s10,10,10)
	GUICtrlSetPos($g11,$w11,$s11,10,10)
	GUICtrlSetPos($g12,$w12,$s12,10,10)
	GUICtrlSetPos($g13,$w13,$s13,10,10)
	GUICtrlSetPos($g14,$w14,$s14,10,10)
	GUICtrlSetPos($g15,$w15,$s15,10,10)
	GUICtrlSetPos($g16,$w16,$s16,10,10)
	GUICtrlSetPos($g17,$w17,$s17,10,10)
	GUICtrlSetPos($g18,$w18,$s18,10,10)
	GUICtrlSetPos($g19,$w19,$s19,10,10)
	GUICtrlSetPos($g20,$w20,$s20,10,10)
	GUICtrlSetPos($g21,$w21,$s21,10,10)
	GUICtrlSetPos($g22,$w22,$s22,10,10)
	GUICtrlSetPos($g23,$w23,$s23,10,10)
	GUICtrlSetPos($g24,$w24,$s24,10,10)
	GUICtrlSetPos($g25,$w25,$s25,10,10)
	GUICtrlSetPos($g26,$w26,$s26,10,10)
	GUICtrlSetPos($g27,$w27,$s27,10,10)
	GUICtrlSetPos($g28,$w28,$s28,10,10)
	GUICtrlSetPos($g29,$w29,$s29,10,10)
	GUICtrlSetPos($g30,$w30,$s30,10,10)
	WEnd
	Func down()
		$k=1
	EndFunc
	Func up()
		$k=2
EndFunc
Func left()
		$k=3
EndFunc
Func right()
		$k=4
	EndFunc
	
	Func owoc()
$wg=Random(1,31,1)
$sg=Random(1,22,1)
$w=$wg*10
$s=$sg*10
GUICtrlSetPos($o,$w,$s,10,10)
$p=$p+1
$l = GUICtrlCreateLabel($p, 8, 224, 36, 17)
g()
		EndFunc
	
	func g()
if $p>29 Then
		$s30=$s29
		$w30=$w29 
Send("{Numlock}")
Send("{Capslock}")
Send("{Scrolllock}")
		EndIf
if $p>28 then
		$s29=$s28
		$w29=$w28
		EndIf
if $p>27 then
		$s28=$s27
		$w28=$w27
		EndIf
if $p>26 Then
		$s27=$s26
		$w27=$w26 
		EndIf
if $p>25 then
		$s26=$s25
		$w26=$w25
		EndIf
if $p>24 then
		$s25=$s24
		$w25=$w24
		EndIf
if $p>23 Then
		$s24=$s23
		$w24=$w23 
		EndIf
if $p>22 then
		$s23=$s22
		$w23=$w22
		EndIf
if $p>21 then
		$s22=$s21
		$w22=$w21
		EndIf
if $p>20 then
		$s21=$s20
		$w21=$w20
		EndIf		
if $p>19 Then
		$s20=$s19
		$w20=$w19 
		EndIf
if $p>18 then
		$s19=$s18
		$w19=$w18
		EndIf
if $p>17 then
		$s18=$s17
		$w18=$w17
		EndIf
if $p>16 Then
		$s17=$s16
		$w17=$w16 
		EndIf
if $p>15 then
		$s16=$s15
		$w16=$w15
		EndIf
if $p>14 then
		$s15=$s14
		$w15=$w14
		EndIf
if $p>13 Then
		$s14=$s13
		$w14=$w13 
		EndIf
if $p>12 then
		$s13=$s12
		$w13=$w12
		EndIf
if $p>11 then
		$s12=$s11
		$w12=$w11
		EndIf
if $p>10 then
		$s11=$s10
		$w11=$w10
		EndIf
if $p>9 Then
		$s10=$s9
		$w10=$w9 
		EndIf
if $p>8 then
		$s9=$s8
		$w9=$w8
		EndIf
if $p>7 then
		$s8=$s7
		$w8=$w7
		EndIf
if $p>6 Then
		$s7=$s6
		$w7=$w6 
		EndIf
if $p>5 then
		$s6=$s5
		$w6=$w5
		EndIf
if $p>4 then
		$s5=$s4
		$w5=$w4
		EndIf
if $p>3 Then
		$s4=$s3
		$w4=$w3 
		EndIf
if $p>2 then
		$s3=$s2
		$w3=$w2
		EndIf
if $p>1 then
		$s2=$s1
		$w2=$w1
		EndIf
	EndFunc
	 
	Func pauza()
	If $pauza=0 Then
		$pauza=1
	Else
		$pauza=0
		Send ("{enter}")
	EndIf
	EndFunc
	 
	Func stop()
		Exit
	EndFunc
	
	
