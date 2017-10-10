Dim $blok[200][7]
Dim $mob[30][7]
Dim $map[3]
Func loadmap($file,$t)
$m=FileRead($file)
$i=0
Switch $t
case 1
do
$i+=1
$kp=StringInStr($m,"#map",1,$i)
if $kp<>0 Then
$m=StringMid($m,$kp+5,StringInStr($m,");",1,$i)-$kp-5) ;wycina tekst z nawiasu
$ii=0
do
$kp=StringInStr($m,",")-1 ;szuka przecinka
$map[$ii]=StringLeft($m,$kp) ;czyta i zapisuje pierwsza wartosc
$m=StringTrimLeft($m,$kp+1) ;tworzy string z reszty
$ii+=1
Until StringInStr($m,",")=0
$map[$ii]=$m
	EndIf
Until $kp=0
Return $map
case 2
$i=0
do
$i+=1
$kp=StringInStr($m,"#blok",1,$i)
if $kp<>0 Then
	$m2=$m
$m2=StringMid($m2,$kp+6,StringInStr($m2,");",1,1,$kp)-$kp-6) ;wycina tekst z nawiasu
$ii=0
do
$kp=StringInStr($m2,",")-1 ;szuka przecinka
$blok[$i][$ii]=StringLeft($m2,$kp) ;czyta i zapisuje pierwsza wartosc
$m2=StringTrimLeft($m2,$kp+1) ;tworzy string z reszty
$ii+=1
Until StringInStr($m2,",")=0
$blok[$i][$ii]=$m2
$blok[0][0]=$i
	EndIf
Until $kp=0
Return $blok
case 3
	$i=0
do
$i+=1
$kp=StringInStr($m,"#mob",1,$i)
if $kp<>0 Then
	$m2=$m
$m2=StringMid($m2,$kp+5,StringInStr($m2,");",1,1,$kp)-$kp-5) ;wycina tekst z nawiasu
$ii=0
do
$kp=StringInStr($m2,",")-1 ;szuka przecinka
$mob[$i][$ii]=StringLeft($m2,$kp) ;czyta i zapisuje pierwsza wartosc
$m2=StringTrimLeft($m2,$kp+1) ;tworzy string z reszty
$ii+=1
Until StringInStr($m2,",")=0
$mob[$i][$ii]=$m2
$mob[0][0]=$i
	EndIf
Until $kp=0
Return $mob
	EndSwitch
EndFunc