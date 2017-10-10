dim $Tnt_um[10]= ["Atak","Obrona","Podania","Bronienie","Kondycja","Skutecznoœæ","Szybkoœæ","Celnoœæ","Doœrodkowania","Strza³y"];Tablica przechowuj¹ca nazwy umiejêtnoœci
Global $Znt_time = 0,$Gnt,$Gnt_um1,$Gnt_um2,$Gnt_ile

Func Gnt()
$GLnt_um1 = GUICtrlCreateLabel("UM 1:",5,27,35,17);Label z tytu³em do pierwszej umiejêtnoœci
$Gnt_um1 = GUICtrlCreateCombo("Obrona", 40, 25, 100, 20);Wybór umiejêtnoœci
GUICtrlSetData(-1, "Bronienie|Skutecznoœæ|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ");Dodanie mo¿liwych umiejêtnoœci
$GLnt_um2 = GUICtrlCreateLabel("UM 2:",145,27,35,17);Label z tytu³em do drugiej umiejêtnoœci
$Gnt_um2 = GUICtrlCreateCombo("Skutecznoœæ", 180, 25, 100, 20);Wybór 2 umiejêtnoœci
GUICtrlSetData(-1, "Bronienie|Obrona|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ");Dodanie mo¿liwych umiejêtnoœci
$GLnt_ile = GUICtrlCreateLabel("Ile PA z³u¿yæ:",290,27,65,17);Label z tytu³em do iloœci treningu
$Gnt_ile = GUICtrlCreateInput($Tinfo[8][1], 360, 25, 50, 20, BitOR($ES_AUTOHSCROLL,$ES_NUMBER));Input z liczb¹ PA które maj¹ byæ wytrenowane
$Gnt = GUICtrlCreateButton("Trenuj", 50, 50, 320, 31, $WS_GROUP);Przycisk rozpoczynaj¹cy  trening 
EndFunc

func nt_start()
	Global $Znt_ile = GUICtrlRead($Gnt_ile);Iloœæ PA do wytrenowania
	global $Znt_um1 = _ArraySearch($Tnt_um,GUICtrlRead($Gnt_um1));Pierwsza umiejêtnoœæ
	global $Znt_um2 = _ArraySearch($Tnt_um,GUICtrlRead($Gnt_um2));Druga umiejêtnoœæ
	if $Znt_um1 = $Znt_um2 Then $Znt_um2="";Druga umiejêtnoœæ nie mo¿e byæ taka sama jak pierwsza
	global $Znt_time = 1
	slog("Rozpoczo³eœ trening "&$Tnt_um[$Znt_um1]&" i "&$Tnt_um[$Znt_um2]&","&@CRLF&"przeznaczy³eœ na nie "&$Znt_ile&" PA")
EndFunc

func nt($um)
	$beg = TimerInit()
	Local $kod = "GET /trening_normal_ajax.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Odœwie¿a trening
	Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Trenuje wybran¹ umiejêtnoœæ
	if $Clog then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF);Zapisuje w logu
	$reb = StringStripWS(StringTrimLeft($re,StringInStr($re,@crlf&@crlf)),8);Zapisuje 2 czêœæ zapytania z usuniêtymi bia³ymi znakami do zmiennej
	if $reb = "10" Then;Je¿eli 2 czêœæ zapytania to 10 to znaczy ¿e prawid³owo wytrenowano umiejêtnoœæ
		slog("Wytrenowano punkt umiejêtnoœci "&$Tnt_um[$um]&" w "&int(TimerDiff($beg))&"ms")
		return 1;Wytrenowano
	Else;Je¿eli nie to wypisuje w logu b³êda
		If StringInStr($re,"Nie mo¿esz trenowaæ jednocze¶nie dwóch tych samych umiejêtno¶ci.")>0 Then
			slog("B³¹d: Nie mo¿na trenowaæ jednoczeœnie dwóch tych samych umiejêtnoœci")
		ElseIf StringInStr($re,"Twoja sesja wygas³a. Zaloguj siê ponownie.")>0 Then
			slog("B³¹d: koniec sesji")
			loguj();Je¿eli utracono sesje to loguje ponownie
		Else
			slog("Jakiœ b³¹d")
		EndIf
		return 0;Nie wytrenowano
	EndIf
EndFunc;nt

func nt_task()
	if nt($Znt_um1) Then $Znt_ile -= 1;Trenuje 1 um i odejmuje PA je¿eli wytrenowano
	if $Znt_um2 <> "" Then 
		if nt($Znt_um2) Then $Znt_ile -= 1;Trenuje 2 um i odejmuje PA je¿eli wytrenowano
	EndIf
	global $Znt_time = TimerInit();Zapisuje czas od ostatniego treningu
	GUICtrlSetData($Gnt_ile,$Znt_ile);Ustawia w inpucie iloœæ PA do wytrenowania
	WinSetTitle($Form2,"",$Znt_ile&" - Bot by NeTo");Ustawia w tytule okna iloœæ PA do wytrenowania
EndFunc;nt_task
