while 1
$ping = Ping("8.8.8.8") ;s¹ to serwery DNS google : )
If @error Then
sleep(50000)
$ping = Ping("8.8.8.8") ;s¹ to serwery DNS google : )
If @error Then
	Shutdown(2)
	EndIf
EndIf
Sleep(1000)
WEnd