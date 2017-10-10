#include "au3Irrlicht2.au3"
#include "misc.au3"
$screen_width = 800 ;szerokosc okna
$screen_height = 650 ;wysokosc okna
_IrrStart() ;zainicjowanie silnika Irrlicht
_IrrSetWindowCaption("Jakistytul" ) ;tytul dla okna

$x=250 ;pozycja x postaci
$y=500 ;pozycja y postaci
$postac=_IrrGetTexture("postac.bmp")
_IrrColorKeyTexture($postac, 255,255,255 )

$xprzeszkoda=0
$yprzeszkoda=580
$xprzeszkoda2=60
$yprzeszkoda2=500
$xprzeszkoda3=400
$yprzeszkoda3=300
$przeszkoda=_IrrGetTexture("przeszkoda.bmp") 
_IrrColorKeyTexture($przeszkoda, 255,255,255 )

$xmob=100
$ymob=100
$mob=_irrgettexture("mob.bmp")
_IrrColorKeyTexture($mob, 255,255,255)


 $ziemia=0
 
WHILE _IrrRunning()
_IrrBeginScene( 0,0,0) ;rozpoczecie rysowania sceny ,nadanie t³a
_IrrDraw2DImageElement($postac, $x ,$y, 0,0,50,50, $IRR_use_ALPHA )
_IrrDraw2DImageElement($przeszkoda, $xprzeszkoda ,$yprzeszkoda, 0,0,800,20, $IRR_IGNORE_ALPHA) ; to nasz przedmiot z którym kolidujemy 
_IrrDraw2DImageElement($przeszkoda, $xprzeszkoda2 ,$yprzeszkoda2, 0,0,20,80, $IRR_IGNORE_ALPHA) ; to nasz przedmiot z którym kolidujemy 
_IrrDraw2DImageElement($przeszkoda, $xprzeszkoda3 ,$yprzeszkoda3, 0,0,20,80, $IRR_IGNORE_ALPHA) ; to nasz przedmiot z którym kolidujemy 
_IrrDraw2DImageElement( $mob, $xmob ,$ymob, 0,0,50,50, $IRR_use_ALPHA )
AImob1()
$y+=2.5
sterowanie()
$ziemia=0
kolizja($x,$y,25,50,$xprzeszkoda,$yprzeszkoda,80,20,0)
kolizja($x,$y,25,50,$xprzeszkoda2,$yprzeszkoda2,20,80,0)
kolizja($x,$y,25,50,$xprzeszkoda3,$yprzeszkoda3,20,80,0)
kolizjamob($xmob,$ymob,25,50,$xprzeszkoda,$yprzeszkoda,100,80,0)
_Irrendscene() ;koniec rysowania sceny

Sleep(20)
WEnd
 
func sterowanie()
if _IsPressed("27")=1 Then $x+=5 ;jesli zostanie nacisniety klawisz strzalki w prawo wtedy wartoœæ $x zwiekszy sie o 5.
if _IsPressed("25")=1 Then $x-=5
;~ if _IsPressed("28")=1 Then $y+=5
if _IsPressed("26")=1 Then $y-=5;skok()
EndFunc 

func skok()
	if $ziemia=1 Then
		$y-=105
		EndIf
	EndFunc

func kolizja($b_x,$b_y,$b_s,$b_w,$p_x,$p_y,$p_s,$p_w,$id=0)
 

 
if $id=0 then
	if (($b_y+$b_w>$p_y) and (($b_x>$p_x and $b_x<$p_x+$p_w) or ($b_x+$b_s>$p_x and $b_x+$b_s<$p_x+$p_w))) and $b_y-$b_w/2<$p_y-$p_w/2 Then $y-=5;œciana górna
;~ 	if (($b_y<$p_y+$p_w) and (($b_x>$p_x and $b_x<$p_x+$p_w) or ($b_x+$b_s>$p_x and $b_x+$b_s<$p_x+$p_w))) and $b_y-$b_w/2>$p_y-$p_w/2 Then $y+=5;œciana dolna
		
;~ 	if (($b_x+$b_s>$p_x) and (($b_y>$p_y and $b_y<$p_y+$p_s) or ($b_y+$b_w>$p_y and $b_y+$b_w<$p_y+$p_s))) and $b_x+$b_s/2<$p_x+$p_s/2 Then $x-=5;œciana lewa

;~ 	

;~ 	if (($b_x<$p_x+$p_s) and (($b_y>$p_y and $b_y<$p_y+$p_s) or ($b_y+$b_w>$p_y and $b_y+$b_w<$p_y+$p_s))) and $b_x+$b_s/2>$p_x+$p_s/2 Then $x+=5;œciana prawa
;~ Select
;~ Case (($b_y+$b_w>$p_y) and (($b_x>$p_x and $b_x<$p_x+$p_w) or ($b_x+$b_s>$p_x and $b_x+$b_s<$p_x+$p_w))) and $b_y-$b_w/2<$p_y-$p_w/2
;~ 	$y-=2.5
;~ 	$ziemia=1
;~ case (($b_x<$p_x+$p_s) and (($b_y>$p_y and $b_y<$p_y+$p_s) or ($b_y+$b_w>$p_y and $b_y+$b_w<$p_y+$p_s))) and $b_x+$b_s/2>$p_x+$p_s/2
;~ 	$x+=5
;~ Case (($b_x+$b_s>$p_x) and (($b_y>$p_y and $b_y<$p_y+$p_s) or ($b_y+$b_w>$p_y and $b_y+$b_w<$p_y+$p_s))) and $b_x+$b_s/2<$p_x+$p_s/2
;~ 	$x-=5
;~ case (($b_y<$p_y+$p_w) and (($b_x>$p_x and $b_x<$p_x+$p_w) or ($b_x+$b_s>$p_x and $b_x+$b_s<$p_x+$p_w))) and $b_y-$b_w/2>$p_y-$p_w/2
;~ 	$y+=5
;~ EndSelect
EndIf

 
endfunc 

func kolizjamob($bohater_x,$bohater_y,$szer_bohater,$wys_bohater,$przeszkoda_x,$przeszkoda_y,$szer_przeszkoda,$wys_przeszkoda,$id=0)
 
if ($bohater_x + $szer_bohater > $przeszkoda_x) And ($bohater_y + $wys_bohater > $przeszkoda_y) And ($bohater_x < $przeszkoda_x + $szer_przeszkoda) And ($bohater_y < $przeszkoda_y + $wys_przeszkoda) Then
 
if $id=0 then
 
if $bohater_x>$przeszkoda_x then $xmob+=2
if $bohater_x<$przeszkoda_x then $xmob-=2
if $bohater_y>$przeszkoda_y then $ymob+=2
if $bohater_y<$przeszkoda_y then $ymob-=2
 
EndIf
endif
 
endfunc

func AImob1()
 
if $xmob<$x then $xmob+=2.5
if $ymob<$y then $ymob+=2.5
if $ymob>$y then $ymob-=2.5
if $xmob>$x then $xmob-=2.5
 
endfunc 