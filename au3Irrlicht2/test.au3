#include "au3Irrlicht2.au3"
#include "misc.au3"
#include "map.au3"

_IrrStart() ;zainicjowanie silnika Irrlicht
_IrrSetWindowCaption( "Jakistytul" ) ;tytul dla okna
dim $blok[30][10]
dim $mob[30][10]
dim $postac[10]

#region postac
$postac[0]=_IrrGetTexture("postac.bmp");tekstura
_IrrColorKeyTexture($postac[0], 255,255,255 )
$postac[1]=0;x
$postac[2]=0;y
$postac[3]=25;sz
$postac[4]=25;wy
$postac[5]=0;rodzaj kolizji
$postac[6]=5;predkosc
$postac[7]=0;pozycja wzglêdem postaci
#endregion

#region zmienne
$ox=0
$oy=0
#endregion
readmap("map.txt")
WHILE _IrrRunning()
_IrrBeginScene( 0,0,0) ;rozpoczecie rysowania sceny ,nadanie t³a
_IrrDraw2DImageElement($postac[0], $postac[1]-$ox ,$postac[2]-$oy, 0,0,$postac[3],$postac[4], $IRR_use_ALPHA )
rendermap() ;renderuje przeczytan¹ mape
sterowanie()
kolizja();(x,y,sz,wy,id kolizji 1 czyli zderzenie)
sobrazu()
_Irrendscene() ;koniec rysowania sceny
ToolTip($postac[1]&@LF&$postac[2]&@LF&$ox&@LF&$oy)
Sleep(20)
WEnd
 
 
Func kolizja()
	for $i=1 to $blok[0][0]
		ko($i)
		Next
	EndFunc
 
 Func ko($nr)
	 ToolTip("")
	 
	 
	 
	 if $postac[1]+$postac[3]>=$blok[$nr][1] and $postac[1]<=$blok[$nr][1]+$blok[$nr][3] and $postac[2]>=$blok[$nr][2]+$blok[$nr][4] then ;jezeli obiekt znajduje siê powy¿ej postaci
		 $blok[$nr][7]=1;góra
	 EndIf
	if $postac[1]+$postac[3]>=$blok[$nr][1] and $postac[1]<=$blok[$nr][1]+$blok[$nr][3] and $postac[2]+$postac[4]<=$blok[$nr][2] then ;jezeli obiekt znajduje siê poni¿ej postaci
		 $blok[$nr][7]=2;dó³
	 EndIf
	 if $postac[2]+$postac[4]>=$blok[$nr][2] and $postac[2]<=$blok[$nr][2]+$blok[$nr][4] and $postac[1]>=$blok[$nr][1]+$blok[$nr][3] then ;jezeli obiekt znajduje siê poprawej stronie postaci
		 $blok[$nr][7]=3;prawo
	 EndIf
	 if $postac[2]+$postac[4]>=$blok[$nr][2] and $postac[2]<=$blok[$nr][2]+$blok[$nr][4] and $postac[1]+$postac[3]<=$blok[$nr][1] then ;jezeli obiekt znajduje siê polewej stronie postaci
		 $blok[$nr][7]=4;lewo
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
	if $ox<=0 then $ox+=$postac[6]	;Obraz do 0 x
	if $postac[1]<=0 then $postac[1]=0 ;Postac do 0 x
	if $ox+772>=$map[0] then $ox-=$postac[6] ;Obraz do koñca x
	if $postac[1]>=$map[0] then $postac[1]=$map[0] ;Postac do koñca x 
		
	if $oy<=0 then $oy+=$postac[6]	;Obraz do 0 y
	if $postac[2]<=0 then $postac[2]=0 ;Postac do 0 y
	if $oy+572>=$map[1] then $oy-=$postac[6] ;Obraz do koñca y
	if $postac[2]>=$map[1] then $postac[2]=$map[1] ;Postac do koñca y
	EndFunc

func readmap($mapa)
	$map=loadmap($mapa,1)
	$blok=loadmap($mapa,2)
	$mob=loadmap($mapa,3)
	for $i=1 to $blok[0][0]
	$blok[$i][0]=_IrrGetTexture($blok[$i][0])
	Next
	EndFunc

	func rendermap()
		for $i=1 to $blok[0][0]
		_IrrDraw2DImageElement($blok[$i][0],$blok[$i][1]-$ox,$blok[$i][2]-$oy, 0,0,$blok[$i][3],$blok[$i][4],$IRR_IGNORE_ALPHA)
		Next
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
