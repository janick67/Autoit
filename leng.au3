HotKeySet("{F3}","g")
$s=1
$pow=1
While 1
   Sleep(1000)
   ConsoleWrite("s")	
   WEnd


Func g()
   $pow+=1 
   if $pow<20 Then
		 ConsoleWrite("POW   "&$pow)
		 s()
		 EndIf
   for $i=1 to 2 Step 1
	  if $pow>20 Then 
		 $pow=0
		 ExitLoop
		 EndIf
	

Next

   EndFunc
   
   Func s()
	  $s+=1
	  ConsoleWrite(" "&$s)
	  g()
	  EndFunc