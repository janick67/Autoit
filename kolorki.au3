#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <minclude.au3>
#Region ### START Koda GUI section ### Form=C:\Documents and Settings\Admin\Moje dokumenty\ja\koda\Forms\test.kxf
$f1 = GUICreate("f1", 1501, 901, -10, -30)
GUISetState(@SW_hide)
#EndRegion ### END Koda GUI section ###
Global $g[1473]
$x=0
$y=0
$i2=-490
$i3=-981
$i4=-1472
for $i=0 to 1472 Step 1
   $g[$i] = GUICtrlCreateLabel("",$x, $y, 30, 30)
    $x=$x+30
   If $x=1470 Then
	  $x=0
	  $y=$y+30
	   EndIf
	Next
	GUISetState(@SW_SHOW)
   
while 1
   $x=0
   $y=0
su(MouseGetPos())
 WEnd
 
 
 func su($mgp)
	if _IsPressed("01") Then
	  Select 
	  case $mgp[0]<300 and $mgp[1]<300 
		 q()
	  case $mgp[0]<600 and $mgp[1]<300 
	   w()
	   case $mgp[0]<900 and $mgp[1]<300 
	   e()
	   case $mgp[0]<1200 and $mgp[1]<300 
	   r()
	   case $mgp[0]<1500 and $mgp[1]<300 
	   t()
	  case $mgp[0]<300 and $mgp[1]<600 
		y()
	  case $mgp[0]<600 and $mgp[1]<600 
	   MsgBox(0,"",7)
	   case $mgp[0]<900 and $mgp[1]<600 
	   MsgBox(0,"",8)
	   case $mgp[0]<1200 and $mgp[1]<600 
	   MsgBox(0,"",9)
	   case $mgp[0]<1500 and $mgp[1]<600 
	   MsgBox(0,"",10)
	  case $mgp[0]<300 and $mgp[1]<900 
		 MsgBox(0,"",11)
	  case $mgp[0]<600 and $mgp[1]<900 
	   MsgBox(0,"",12)
	   case $mgp[0]<900 and $mgp[1]<900 
	   MsgBox(0,"",13)
	   case $mgp[0]<1200 and $mgp[1]<900 
	   MsgBox(0,"",14)
	   case $mgp[0]<1500 and $mgp[1]<900 
	   MsgBox(0,"",15)
	  	EndSelect
	EndIf
	EndFunc
 
 func s()
	for $i=0 to 1472 step 1 
	   if  and $mgp[0]>$x and $mgp[0]<$x+30 and $mgp[1]>$y and $mgp[1]<$y+30 Then GUICtrlSetBkColor($g[$i], 0xFF0000)
	      $x=$x+30
   If $x=1470 Then
	  $x=0
	  $y=$y+30
	   EndIf
		 Next
	EndFunc

 

	