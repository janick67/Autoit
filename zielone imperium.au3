HOTKEYSET("{ESC}", "stop")

$X = 510
$Y = 235
$PLUS = 39
$A = 0
$S = 0
$KONIEC = 0
Do
	$KONIEC = $KONIEC + 1
	For $Y = 235 To 664 Step +$PLUS
		MouseClick("", $X, $Y, 1, 0)
	Next
	$X = $X + 39
Until $KONIEC = 17

Func stop()
	Exit
EndFunc
