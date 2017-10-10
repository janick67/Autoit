#include "au3Irrlicht2.au3"
#include "misc.au3"

_IrrStart() ;zainicjowanie silnika Irrlicht
_IrrSetWindowCaption( "Jakistytul" ) ;tytul dla okna
dim $blok[20][10]
dim $postac[10]

#region postac
$postac[0]=_IrrGetTexture("postac.bmp");tekstura
_IrrColorKeyTexture($postac[0], 255,255,255 )
$postac[1]=30;x
$postac[2]=30;y
$postac[3]=25;sz
$postac[4]=25;wy
$postac[5]=0;rodzaj kolizji
$postac[6]=5;predkosc
$postac[7]=0;pozycja wzglêdem postaci
#endregion

#region bloki
$blok[1][0]=_IrrGetTexture("przeszkoda.bmp")
$blok[1][1]=200
$blok[1][2]=200
$blok[1][3]=100
$blok[1][4]=100
$blok[1][5]=1
$blok[1][6]=0
$blok[1][7]=0;pozycja wzgledem postaci 1-up,2-down,3-right,4-left
#endregion

#region zmienne
$ox=0
$oy=0
#endregion

WHILE _IrrRunning()
_IrrBeginScene( 0,0,0) ;rozpoczecie rysowania sceny ,nadanie t³a
_IrrDraw2DImageElement($postac[0], $postac[1]-$ox ,$postac[2]-$oy, 0,0,$postac[3],$postac[4], $IRR_use_ALPHA )
_IrrDraw2DImageElement($blok[1][0],$blok[1][1]-$ox,$blok[1][2]-$oy, 0,0,$blok[1][3],$blok[1][4], $IRR_IGNORE_ALPHA) ; to nasz przedmiot z którym kolidujemy 

sterowanie()
ko(1);(x,y,sz,wy,id kolizji 1 czyli zderzenie)
sobrazu()
_Irrendscene() ;koniec rysowania sceny
Sleep(20)
WEnd
 
 
 
 Func ko($nr)
	 ToolTip("")
	 
	 
	 
	 if $postac[1]+$postac[3]>=$blok[$nr][1] and $postac[1]<=$blok[$nr][1]+$blok[$nr][3] and $postac[2]>=$blok[$nr][2]+$blok[$nr][4] then ;jezeli obiekt znajduje siê powy¿ej postaci
		 $blok[$nr][7]=1;góra
		 ToolTip("Góra")
	 EndIf
	if $postac[1]+$postac[3]>=$blok[$nr][1] and $postac[1]<=$blok[$nr][1]+$blok[$nr][3] and $postac[2]+$postac[4]<=$blok[$nr][2] then ;jezeli obiekt znajduje siê poni¿ej postaci
		 $blok[$nr][7]=2;dó³
		 ToolTip("Dó³")
	 EndIf
	 if $postac[2]+$postac[4]>=$blok[$nr][2] and $postac[2]<=$blok[$nr][2]+$blok[$nr][4] and $postac[1]>=$blok[$nr][1]+$blok[$nr][3] then ;jezeli obiekt znajduje siê poprawej stronie postaci
		 $blok[$nr][7]=3;prawo
		 ToolTip("Prawo")
	 EndIf
	 if $postac[2]+$postac[4]>=$blok[$nr][2] and $postac[2]<=$blok[$nr][2]+$blok[$nr][4] and $postac[1]+$postac[3]<=$blok[$nr][1] then ;jezeli obiekt znajduje siê polewej stronie postaci
		 $blok[$nr][7]=4;lewo
		 ToolTip("Lewo")
	 EndIf
	 
	 if ($postac[1]+$postac[3]>$blok[$nr][1] and $postac[1]<$blok[$nr][1]+$blok[$nr][3]) and ($postac[2]+$postac[4]>$blok[$nr][2] and $postac[2]<$blok[$nr][2]+$blok[$nr][4]) then
		 Switch $blok[$nr][7]
		 Case 1
			 $postac[2]+=$postac[6]
		 Case 2
			 $postac[2]-=$postac[6]
		 Case 3
			 $postac[1]+=$postac[6]
		 Case 4
			 $postac[1]-=$postac[6]			 
		EndSwitch
	 EndIf
	
	 EndFunc
 
 func sobrazu()
	 if $ox<=0 then $ox+=$postac[6]	
	if $postac[1]<=0 then $postac[1]=0
		
	 EndFunc
 
func sterowanie()
if _IsPressed("27")=1 Then 
	 if $postac[1]-$ox>396 and $postac[1]-$ox<406 Then
		 $ox+=$postac[6]	
	 EndIf
	 $postac[1]+=$postac[6]	
EndIf
if _IsPressed("25")=1 Then
	 if $postac[1]-$ox>396 and $postac[1]-$ox<406 Then
		 $ox-=$postac[6]	
	 EndIf
	 $postac[1]-=$postac[6]	
	EndIf
if _IsPressed("28")=1 Then 
	 if $postac[2]-$oy>296 and $postac[2]-$oy<306 Then
		 $oy+=$postac[6]	
	 EndIf
	 $postac[2]+=$postac[6]	
	EndIf
if _IsPressed("26")=1 Then 
	 if $postac[2]-$oy>296 and $postac[2]-$oy<306 Then
		 $oy-=$postac[6]	
	 EndIf
	 $postac[2]-=$postac[6]	
	EndIf
EndFunc 
