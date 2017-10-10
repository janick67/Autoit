dim $Tnt_um[10]= ["Atak","Obrona","Podania","Bronienie","Kondycja","Skutecznoœæ","Szybkoœæ","Celnoœæ","Doœrodkowania","Strza³y"];Tablica przechowuj¹ca nazwy umiejêtnoœci
Global $Znt_time = 0,$Gnt,$Gnt_um1,$Gnt_um2,$Gnt_ile

func nt($um)
	$beg = TimerInit()
	Local $kod = "GET /trening_normal_ajax.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Odœwie¿a trening
	Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Trenuje wybran¹ umiejêtnoœæ
	$reb = StringStripWS(StringTrimLeft($re,StringInStr($re,@crlf&@crlf)),8);Zapisuje 2 czêœæ zapytania z usuniêtymi bia³ymi znakami do zmiennej
	if $reb = "10" Then;Je¿eli 2 czêœæ zapytania to 10 to znaczy ¿e prawid³owo wytrenowano umiejêtnoœæ
		return 1;Wytrenowano
	Else;Je¿eli nie to wypisuje w logu b³êda
;~ 		If StringInStr($re,"Twoja sesja wygas³a. Zaloguj siê ponownie.")>0 Then	loguj();Je¿eli utracono sesje to loguje ponownie
		return 0;Nie wytrenowano
	EndIf
EndFunc;nt

func nt_task()
	if nt($um1) Then $nt_ile -= 1;Trenuje 1 um i odejmuje PA je¿eli wytrenowano
	if $um2 <> -1 Then 
		if nt($um2) Then $nt_ile -= 1;Trenuje 2 um i odejmuje PA je¿eli wytrenowano
	EndIf
	if $um3 <> -1 Then 
		if nt($um3) Then $nt_ile -= 1;Trenuje 3 um i odejmuje PA je¿eli wytrenowano
	EndIf
	global $Znt_time = TimerInit();Zapisuje czas od ostatniego treningu
EndFunc;nt_task
