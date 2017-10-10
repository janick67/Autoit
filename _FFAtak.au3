
	While (1)
	Sleep(500)
	if @hour = 0 and @MIN = 45 and @SEC >= 0 Then
		WinActivate("228.Trk;3")
		MouseMove(380,450,0)
		MouseClick("")
		Shutdown(64)
	EndIf
;~ 	if @hour = 23 and @MIN = 14 and @sec >= 55 Then
;~ 		WinActivate("02.Smocza jama")
;~ 		MouseMove(400,490,0)	
;~ 		MouseClick("")
;~ 	EndIf
;~ 	if @hour = 21 and @MIN = 55 and @sec >= 14 Then
;~ 		WinActivate("14.AndreaLima")
;~ 		MouseMove(400,490,0)	
;~ 		MouseClick("")
;~ 	EndIf
;~ 	if @hour = 22 and @MIN = 15 and @sec >= 0 Then
;~ 		WinActivate("28.Trk;3")
;~ 		MouseMove(400,490,0)	
;~ 		MouseClick("")
;~ 	EndIf
	WEnd