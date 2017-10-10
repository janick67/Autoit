AutoItSetOption("WinTitleMatchMode",2)
$jeden = 0
$dwa = 0
$trzy = 0 
$cztery = 0
While 1
	if @hour = 14 and @min > 37 and $jeden = 0 Then
		WinActivate("Chrome")
         MouseClick	("",300,50)
		 Sleep(200)
		 Send("https://pl116.plemiona.pl/game.php?village=46265&screen=place&target=49773{enter}")
		 Sleep(5000)
		 MouseClick	("",870,585)
		 Sleep(500)
		 MouseClick	("",700,600)
		 Sleep(500)
		 MouseClick	("",350,590)
		 $jeden = 2
	 EndIf
	 
	 	if @hour = 14 and @min > 31 and $dwa = 0 Then
			WinActivate("Chrome")
         MouseClick	("",300,50)
		 Sleep(200)
		 Send("https://pl116.plemiona.pl/game.php?village=37100&screen=place&target=36277{enter}")
		 Sleep(5000)
		 MouseClick	("",870,585)
		 Sleep(500)
		 MouseClick	("",700,600)
		 Sleep(500)
		 MouseClick	("",350,590)
		 $dwa= 2
	 EndIf
;~ 	 	 	
			if @hour = 15 and @min > 4 and $trzy = 0 Then
		WinActivate("Chrome")
         MouseClick	("",300,50)
		 Sleep(200)
		 Send("https://pl116.plemiona.pl/game.php?village=32340&screen=place&target=32713{enter}")
		 Sleep(5000)
		 MouseClick	("",870,585)
		 Sleep(500)
		 MouseClick	("",700,600)
		 Sleep(500)
		 MouseClick	("",350,590)
		 $trzy= 2
	 EndIf
;~ 	 			
;~ 		if @hour = 4 and @min > 20 and $cztery = 0 Then
;~          MouseClick	("",300,50)
;~ 		 Sleep(200)
;~ 		 Send("https://pl116.plemiona.pl/game.php?village=32340&screen=place&target=32713{enter}")
;~ 		 Sleep(5000)
;~ 		 MouseClick	("",870,585)
;~ 		 Sleep(500)
;~ 		 MouseClick	("",700,600)
;~ 		 Sleep(500)
;~ 		 MouseClick	("",350,590)
;~ 		 $cztery= 2
;~ 	 EndIf
	 
	 	if @hour = 16 and @min > 1 Then
		WinActivate("Chrome")
         MouseClick	("",300,50)
		 Sleep(500)
		 Send("https://pl116.plemiona.pl/game.php?village=40749&screen=place&target=48500{enter}")
		 Sleep(5000)
		 MouseClick	("",870,585)
		 Sleep(500)
		 MouseClick	("",700,600)
		 Sleep(500)
		 MouseClick	("",350,590)
		 Exit
	 EndIf
	 Sleep(5000)
	WEnd