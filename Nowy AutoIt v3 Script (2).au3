WinActivate("Saper")
Send("{F2}")
;~ Send("xyzzy{SHIFT}")
#include <array.au3>
dim $gra[82]
$xw=80
$yw=80
$px=95
$py=184
$x=$px
$y=$py
func tp()
$1 = 3590125224
$2 = 1517139728
$3 = 2684410642
$4 = 1441515216
$5 = 2846797392
$c = 2548246751
$p = 3463987069
for $i=1 to 81 
	$ch = PixelChecksum($x, $y, $x+15, $y+15) 
	Switch $ch
	Case $1
		$gra[$i]=1
	Case $2	
		$gra[$i]=2
	Case $3	
		$gra[$i]=3
	Case $4	
		$gra[$i]=4
	Case $5	
		$gra[$i]=5
	Case $c
		$gra[$i]="c"
	Case $p	
		$gra[$i]="p"
		kp($i)
		EndSwitch
$x += 16
if $x = $px+16*9 Then 
	$x=$px
	$y+=16
	endif
Next
_ArrayDisplay($gra)
EndFunc
;~ func oszustwo()
for $i=1 to 81 
	kp($i,1)
	if PixelGetColor(0,0) <> 0 Then
		kp($i)
		EndIf
Next
;~ 	EndFunc 15397619
Func kp($id,$r=0)
	$zx=int($id/9)
	if StringLen($id/9) > 1 then $zx+=1
	$zy=mod($id,9)
	if $zy=0 then $zy=9
		if $r=0 Then
	MouseClick("",$px+8+16*($zy-1),$py+8+16*($zx-1))
Else
	MouseMove($px+8+16*($zy-1),$py+8+16*($zx-1),0)
	EndIf
EndFunc
;~ tp()
