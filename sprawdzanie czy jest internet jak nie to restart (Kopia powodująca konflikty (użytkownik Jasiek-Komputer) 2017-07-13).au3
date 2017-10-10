$i =0 
while 1
	$i += 1
$ping = Ping("8.8.8.8") ;s¹ to serwery DNS google : )
If @error Then
sleep(50000)
$ping = Ping("8.8.8.8") ;s¹ to serwery DNS google : )
If @error Then
	FileWrite("log.txt",@hour)
	Shutdown(64)
	EndIf
EndIf
Sleep(1000)
if $i = 2000 then 
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	send("{volume_down}")
	EndIf
WEnd