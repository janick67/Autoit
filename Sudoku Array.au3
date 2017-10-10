#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
HotKeySet("{esc}","q")
Dim $in[17]
dim $b[4]=[0,0,0,0]
Dim $ko1[4]=[1,2,3,4]
Dim $wi1[4]=[1,2,3,4]
Dim $kw1[4]=[1,2,3,4]
Dim $ko2[4]=[1,2,3,4]
Dim $wi2[4]=[1,2,3,4]
Dim $kw2[4]=[1,2,3,4]
Dim $ko3[4]=[1,2,3,4]
Dim $wi3[4]=[1,2,3,4]
Dim $kw3[4]=[1,2,3,4]
Dim $ko4[4]=[1,2,3,4]
Dim $wi4[4]=[1,2,3,4]
Dim $kw4[4]=[1,2,3,4]
Dim $ko5[4]=[1,2,3,4]
Dim $wi5[4]=[1,2,3,4]
Dim $kw5[4]=[1,2,3,4]
Dim $ko6[4]=[1,2,3,4]
Dim $wi6[4]=[1,2,3,4]
Dim $kw6[4]=[1,2,3,4]
Dim $ko7[4]=[1,2,3,4]
Dim $wi7[4]=[1,2,3,4]
Dim $kw7[4]=[1,2,3,4]
Dim $ko8[4]=[1,2,3,4]
Dim $wi8[4]=[1,2,3,4]
Dim $kw8[4]=[1,2,3,4]
Dim $ko9[4]=[1,2,3,4]
Dim $wi9[4]=[1,2,3,4]
Dim $kw9[4]=[1,2,3,4]

$ko=0
$wi=0
$kw=0
$x=20
$y=20
$section=2
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 240, 270, 192, 124)
GUISetState(@SW_SHOW)
$MenuItem1 = GUICtrlCreateMenu("Gra")
$MenuItem3 = GUICtrlCreateMenuItem("Generuj now¹ plansze", $MenuItem1)
$MenuItem4 = GUICtrlCreateMenuItem("SprawdŸ", $MenuItem1)
$MenuItem5 = GUICtrlCreateMenuItem("Zakoñcz grê", $MenuItem1)
$MenuItem2 = GUICtrlCreateMenu("Pomoc")
$MenuItem6 = GUICtrlCreateMenuItem("Help", $MenuItem2)
$Graphic1 = GUICtrlCreateGraphic(60, 20, 2, 82)
GUICtrlSetBkColor(-1, 0x000000)
$Graphic3 = GUICtrlCreateGraphic(20, 60, 82, 2)
GUICtrlSetBkColor(-1, 0x000000)
For $i=1 to 16 Step 1
$in[$i] = GUICtrlCreateInput("", $x, $y, 20, 20,BitOR($ES_CENTER,$ES_AUTOHSCROLL))
   if $y=40 Then
   $y+=22
Else
   $y+=20
   EndIf
if $y=102 Then
   $y=20
   if $x=40 Then
   $x+=22
Else
   $x+=20
   EndIf
EndIf
Next
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
wyarray()
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		 Case $MenuItem3
			uzupelnij()
		 Case $MenuItem4
			spr()
			
	EndSwitch
	
WEnd

func wyczysc()   
   for $i=1 to 81 step 1

   Next

   uzupelnij()
   EndFunc

Func uzupelnij()
   for $i=1 to 16 step 1
   spr($i)
   Next 
   EndFunc

func po($ko = 0 , $wi = 0 , $kw = 0)
   $ki=UBound($b)
	for $i=0 to  $ki-1 step 1
		$b[$i]=0
		Next
	for $i=1 to $ki step 1
if _ArrayFindAll($ko,$i)<>-1 and _ArrayFindAll($wi,$i)<>-1 and _ArrayFindAll($kw,$i)<>-1 Then $b[$i-1]=$i
Next
$ab=_ArrayFindAll($b,0)
for $i=0 to UBound($ab)-1 step 1
	$ab=_ArrayFindAll($b,0)
_ArrayDelete($b,$ab[0])
Next
return $b
	EndFunc


func spr($i)
Switch $i
Case 1
	$b = po($ko1,$wi1,$kw1)  
	_arraydisplay($b)
	if UBound($b)=0 Then
	   MsgBox(0,"","")
		Else
$r=random(1,UBound($b),1)
$ak=_ArrayFindAll($ko1,$b[$r-1])
$aw=_ArrayFindAll($wi1,$b[$r-1])
$akw=_ArrayFindAll($kw1,$b[$r-1])
if $ak<>-1 and $aw<>-1 and $akw<>-1  Then 
	  _ArrayDelete($ko1, $ak[0])
	  _ArrayDelete($wi1, $aw[0])
	  _ArrayDelete($kw1, $akw[0])
	  GUICtrlSetData($in[$i],$b[$r-1])
	  ConsoleWrite($b[$r-1])
	  endif
  EndIf
case 2
    $b = po($ko1,$wi2,$kw1)  
	_arraydisplay($b)
	if UBound($b)<1 Then
		Else
$r=random(1,UBound($b),1)
$ak=_ArrayFindAll($ko1,$b[$r-1])
$aw=_ArrayFindAll($wi2,$b[$r-1])
$akw=_ArrayFindAll($kw1,$b[$r-1])
if $ak<>-1 and $aw<>-1 and $akw<>-1  Then 
	  _ArrayDelete($ko1, $ak[0])
	  _ArrayDelete($wi2, $aw[0])
	  _ArrayDelete($kw1, $akw[0])
	  GUICtrlSetData($in[$i],$b[$r-1])
   EndIf
   EndIf
Case 3
    $b = po($ko1,$wi3,$kw2)  
	_arraydisplay($b)
	if UBound($b)<1 Then
		Else
$r=random(1,UBound($b),1)
$ak=_ArrayFindAll($ko1,$b[$r-1])
$aw=_ArrayFindAll($wi3,$b[$r-1])
$akw=_ArrayFindAll($kw2,$b[$r-1])
if $ak<>-1 and $aw<>-1 and $akw<>-1  Then 
	  _ArrayDelete($ko1, $ak[0])
	  _ArrayDelete($wi3, $aw[0])
	  _ArrayDelete($kw2, $akw[0])
	  GUICtrlSetData($in[$i],$b[$r-1])
   EndIf
EndIf
Case 4
       $b = po($ko1,$wi4,$kw2)  
	   _arraydisplay($b)
	if UBound($b)<1 Then
		Else
$r=random(1,UBound($b),1)
$ak=_ArrayFindAll($ko1,$b[$r-1])
$aw=_ArrayFindAll($wi4,$b[$r-1])
$akw=_ArrayFindAll($kw2,$b[$r-1])
if $ak<>-1 and $aw<>-1 and $akw<>-1  Then 
	  _ArrayDelete($ko1, $ak[0])
	  _ArrayDelete($wi4, $aw[0])
	  _ArrayDelete($kw2, $akw[0])
	  GUICtrlSetData($in[$i],$b[$r-1])
   EndIf
EndIf
case 5
       $b = po($ko2,$wi1,$kw1)  
	   _arraydisplay($b)
	if UBound($b)<1 Then
		Else
$r=random(1,UBound($b),1)
$ak=_ArrayFindAll($ko2,$b[$r-1])
$aw=_ArrayFindAll($wi1,$b[$r-1])
$akw=_ArrayFindAll($kw1,$b[$r-1])
if $ak<>-1 and $aw<>-1 and $akw<>-1  Then 
	  _ArrayDelete($ko2, $ak[0])
	  _ArrayDelete($wi1, $aw[0])
	  _ArrayDelete($kw1, $akw[0])
	  GUICtrlSetData($in[$i],$b[$r-1])
   EndIf
   EndIf
EndSwitch
EndFunc

func wyarray()
 
EndFunc

   func q()
	  Exit
	  EndFunc