dim $Tnt_um[10]= ["Atak","Obrona","Podania","Bronienie","Kondycja","Skuteczno��","Szybko��","Celno��","Do�rodkowania","Strza�y"];Tablica przechowuj�ca nazwy umiej�tno�ci
Global $Znt_time = 0,$Gnt,$Gnt_um1,$Gnt_um2,$Gnt_ile

func nt($um)
	$beg = TimerInit()
	Local $kod = "GET /trening_normal_ajax.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Od�wie�a trening
	Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Trenuje wybran� umiej�tno��
	$reb = StringStripWS(StringTrimLeft($re,StringInStr($re,@crlf&@crlf)),8);Zapisuje 2 cz�� zapytania z usuni�tymi bia�ymi znakami do zmiennej
	if $reb = "10" Then;Je�eli 2 cz�� zapytania to 10 to znaczy �e prawid�owo wytrenowano umiej�tno��
		return 1;Wytrenowano
	Else;Je�eli nie to wypisuje w logu b��da
;~ 		If StringInStr($re,"Twoja sesja wygas�a. Zaloguj si� ponownie.")>0 Then	loguj();Je�eli utracono sesje to loguje ponownie
		return 0;Nie wytrenowano
	EndIf
EndFunc;nt

func nt_task()
	if nt($um1) Then $nt_ile -= 1;Trenuje 1 um i odejmuje PA je�eli wytrenowano
	if $um2 <> -1 Then 
		if nt($um2) Then $nt_ile -= 1;Trenuje 2 um i odejmuje PA je�eli wytrenowano
	EndIf
	if $um3 <> -1 Then 
		if nt($um3) Then $nt_ile -= 1;Trenuje 3 um i odejmuje PA je�eli wytrenowano
	EndIf
	global $Znt_time = TimerInit();Zapisuje czas od ostatniego treningu
EndFunc;nt_task
