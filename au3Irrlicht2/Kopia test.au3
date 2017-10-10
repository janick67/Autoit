#include "au3Irrlicht2.au3"
#include "misc.au3"
$screen_width = 800 ;szerokosc okna
$screen_height = 650 ;wysokosc okna
_IrrStart() ;zainicjowanie silnika Irrlicht
_IrrSetWindowCaption( "Jakistytul" ) ;tytul dla okna
dim $m[20][5]
dim $p[20][5]
$postac=_IrrGetTexture("postac.bmp");
$p[1][0]=_IrrGetTexture("przeszkoda.bmp");
$m[1][0]=_irrgettexture("mob.bmp")
_IrrColorKeyTexture($postac, 255,255,255 )
_IrrColorKeyTexture($m[1][0], 255,255,255 )

$x=100 ;pozycja x postaci
$y=100 ;pozycja y postaci
$m[1][1]=400
$m[1][2]=400
$p[1][1]=200
$p[1][2]=200
$p[2][1]=60
$p[2][2]=200
$p[3][1]=200
$p[3][2]=200
$ko=0


WHILE _IrrRunning()
_IrrBeginScene( 0,0,0) ;rozpoczecie rysowania sceny ,nadanie t³a
_IrrDraw2DImageElement( $postac, $x ,$y, 0,0,25,25, $IRR_use_ALPHA ) ;to nasza postac
_IrrDraw2DImageElement( $p[1][0], $p[1][1] ,$p[1][1], 0,0,100,100, $IRR_IGNORE_ALPHA ) ; to nasz przedmiot z którym kolidujemy
_IrrDraw2DImageElement( $p[1][0], $p[2][1] ,$p[2][1], 0,0,10,600, $IRR_IGNORE_ALPHA )
_IrrDraw2DImageElement( $p[1][0], $p[1][1] ,$p[1][1], 0,0,100,100, $IRR_IGNORE_ALPHA )
_IrrDraw2DImageElement( $p[1][0], $p[1][1] ,$p[1][1], 0,0,100,100, $IRR_IGNORE_ALPHA )
_IrrDraw2DImageElement( $p[1][0], $p[1][1] ,$p[1][1], 0,0,100,100, $IRR_IGNORE_ALPHA )
_IrrDraw2DImageElement( $m[1][0], $m[1][1] ,$m[1][2], 0,0,50,50, $IRR_use_ALPHA )
$rme=_IrrGetAbsoluteMousePosition()
ToolTip($rme[0]&@LF&$rme[1])
_Irrendscene() ;koniec rysowania sceny
AImob1()
kolizja($x,$y,25,25,1,200,200,100,100,0)

sterowanie()
Sleep(1)
WEnd

func sterowanie()
if _IsPressed("27")=1 Then
	if $ko=0 Then
	$x+=5
EndIf
	if $ko=1 Then
		if $x+5>=$p[$ko][1] Then
		$ko=0
		$x+=5
	EndIf
		EndIf
	endif
if _IsPressed("25")=1 Then 
		if $ko=0 Then
	$x-=5 
EndIf
	if $ko=1 Then
		if $x-5<=$p[$ko][1] Then
		$ko=0
		$x-=5
	EndIf
		EndIf
	endif
if _IsPressed("28")=1 Then 
		if $ko=0 Then
	$y+=5 
EndIf
	if $ko=1 Then
		if $y+5>=$p[$ko][2] Then
		$ko=0
		$y+=5
	EndIf
		EndIf
	endif
if _IsPressed("26")=1 Then 
	if $ko=0 Then
	$y-=5 
EndIf
	if $ko=1 Then
		if $y-5<=$p[$ko][2] Then
		$ko=0
		$y-=5
	EndIf
		EndIf
	endif
EndFunc


func kolizja($bohater_x,$bohater_y,$szer_bohater,$wys_bohater,$nr,$przeszkoda_x,$przeszkoda_y,$szer_przeszkoda,$wys_przeszkoda,$id=0)

if ($bohater_x + $szer_bohater > $przeszkoda_x) And ($bohater_y + $wys_bohater > $przeszkoda_y) And ($bohater_x < $przeszkoda_x + $szer_przeszkoda) And ($bohater_y < $przeszkoda_y + $wys_przeszkoda) Then

if $id=0 then

if $bohater_x>$przeszkoda_x then
	$x+=5
	$ko=$nr
	EndIf
if $bohater_x<$przeszkoda_x then 
	$x-=5
	$ko=$nr
	EndIf
if $bohater_y>$przeszkoda_y then
	$y+=5
	$ko=$nr
	EndIf
if $bohater_y<$przeszkoda_y then
	$y-=5	
	$ko=$nr
	EndIf

EndIf
Endif

endfunc



func AImob1()
if $m[1][1]<$x then $m[1][1]+=1
if $m[1][2]<$y then $m[1][2]+=1
if $m[1][2]>$y then $m[1][2]-=1
if $m[1][1]>$x then $m[1][1]-=1
	EndFunc
