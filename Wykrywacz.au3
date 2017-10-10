$sk=PixelChecksum(470, 702, 970, 705)
$i=2
$c=0
While 1
   Sleep(1000)
   if $sk<>PixelChecksum(470, 702, 970, 705) then 
	  $i+=1
	  $ssm=(((@HOUR*60)+@MIN)*60)+@SEC-$c
	  FileWrite("wykry.txt",@LF&((Mod($ssm,3600)-Mod(Mod($ssm,3600),60))/60)&":"&(Mod($ssm,3600)-(Mod($ssm,3600)-Mod(Mod($ssm,3600),60))))
	  $c=(((@HOUR*60)+@MIN)*60)+@SEC
	  $sk=PixelChecksum(470, 702, 970, 705)
	  EndIf
   WEnd
   
   func b($o)
for $z=1 to $o step 1
	  Beep(1000,100)
Sleep(300)
	Next
	  EndFunc