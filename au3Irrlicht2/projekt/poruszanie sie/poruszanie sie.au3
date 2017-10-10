#include "au3Irrlicht2.au3"
#include "misc.au3"

_IrrStart() ;zainicjowanie silnika Irrlicht
_IrrSetWindowCaption( "Jakistytul" ) ;tytul dla okna
$postac=_IrrGetTexture("postac.bmp")
$p=_IrrGetTexture("przeszkoda.bmp")
$p2=_IrrGetTexture("przeszkoda2.bmp")
_IrrColorKeyTexture($postac, 255,255,255 )
$x=30
$y=30
$ox=0
$oy=0
WHILE _IrrRunning()
_IrrBeginScene( 0,0,0) ;rozpoczecie rysowania sceny ,nadanie t³a
_IrrDraw2DImageElement($postac, $x-$ox ,$y-$oy, 0,0,50,50, $IRR_use_ALPHA )

_IrrDraw2DImageElement($p,40-$ox,40-$oy, 0,0,10,800, $IRR_IGNORE_ALPHA) ; to nasz przedmiot z którym kolidujemy 
_IrrDraw2DImageElement($p2,40-$ox,40-$oy, 0,0,800,10, $IRR_IGNORE_ALPHA)
_IrrDraw2DImageElement($p,840-$ox,40-$oy, 0,0,10,800, $IRR_IGNORE_ALPHA)
_IrrDraw2DImageElement($p2,40-$ox,840-$oy, 0,0,800,10, $IRR_IGNORE_ALPHA)

sterowanie()
sobrazu()
_Irrendscene() ;koniec rysowania sceny
Sleep(20)
WEnd
 
 func sobrazu()
	 if $ox<=0 then $ox+=5
	if $x<=0 then $x=0
		if $ox+772>=860 then $ox-=5
	if $x>=860 then $x=860
	 EndFunc
 
func sterowanie()
	ToolTip($x&" "&$y&@LF&$ox&" "&$oy&@LF&$x-$ox&" "&$y-$oy&@LF&$ox+396)
if _IsPressed("27")=1 Then 
	 if $x-$ox>396 and $x-$ox<406 Then
		 $ox+=5
	 EndIf
	 $x+=5
EndIf
if _IsPressed("25")=1 Then
	 if $x-$ox>396 and $x-$ox<406 Then
		 $ox-=5
	 EndIf
	 $x-=5
	EndIf
if _IsPressed("28")=1 Then 
	 if $y-$oy>296 and $y-$oy<306 Then
		 $oy+=5
	 EndIf
	 $y+=5
	EndIf
if _IsPressed("26")=1 Then 
	 if $y-$oy>296 and $y-$oy<306 Then
		 $oy-=5
	 EndIf
	 $y-=5
	EndIf
EndFunc 
