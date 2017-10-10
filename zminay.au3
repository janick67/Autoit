#include <minclude.au3>
#Include <Array.au3>
HotKeySet("{p}","p")
Sleep(1000)
$x=100
$y=100
$i=0
Dim $k[113]
dim $b[113]
While 1 
   g()
   $x=100
   $y=100
   s()
   $x=100
   $y=100
   WEnd
   
func r()
   $x1=$x-50
   $y1=$y-50
   MouseMove($x1,$y1,0)
   EndFunc

   func p()
	  Exit
   _ArrayDisplay($b)
     for $i=0 to 111 step 1
	   _ArrayDelete($b,0)
	Next
	dim $b[113]
   EndFunc
   
   func s() 
	 for $i=0 to 111 step 1
		 if   $k[$i]<>PixelChecksum($x-100,$y-100,$x,$y,1) Then 
			$b[$i]=$i
	
		r()
			EndIf
	  $x=$x+100
   If $x=1400 Then
	  $x=0
	  $y=$y+100
	   EndIf
		Next
	  EndFunc
   
   
   
   
   
   func g()
	 for $i=0 to 111 step 1
	  $k[$i]=PixelChecksum($x-100,$y-100,$x,$y,1)
	  $x=$x+100
   If $x=1400 Then
	  $x=0
	  $y=$y+100
	  EndIf
	  Next
	  EndFunc