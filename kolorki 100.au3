#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <minclude.au3>
#Region ### START Koda GUI section ### Form=C:\Documents and Settings\Admin\Moje dokumenty\ja\koda\Forms\test.kxf
$f1 = GUICreate("f1", 1501, 901, -10, -30)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Global $g[1000]
$k=0
$x=0
$y=0
for $i=0 to 200 Step 1
   $g[$i] = GUICtrlCreateGraphic($x, $y, 100, 100)
    $x=$x+100
   If $x=1500 Then
	  $x=0
	  $y=$y+100
	   EndIf
   Next

While 1
	zmiana()
WEnd 

func zmiana ()
$k=0xFFFF00
MouseMove(10000,10000,0)
   for $i=0 to 200 Step 1
   GUICtrlSetBkColor($g[$i],$k)
Next
$k=0x0000FF
for $i=0 to 200 Step 1
   MouseMove(10000,10000,0)
   GUICtrlSetBkColor($g[$i],$k)
Next
$k=0xFF0000
for $i=0 to 200 Step 1
   MouseMove(10000,10000,0)
   GUICtrlSetBkColor($g[$i],$k)
Next
$k=0xFFFFFF
for $i=0 to 200 Step 1
   MouseMove(10000,10000,0)
   GUICtrlSetBkColor($g[$i],$k)
Next
 $k=0x000000
for $i=0 to 200 Step 1
  MouseMove(10000,10000,0)
   GUICtrlSetBkColor($g[$i],$k)
Next
   EndFunc
