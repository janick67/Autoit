dim $Tnt_um[10]= ["Atak","Obrona","Podania","Bronienie","Kondycja","Skuteczno��","Szybko��","Celno��","Do�rodkowania","Strza�y"];Tablica przechowuj�ca nazwy umiej�tno�ci
Global $Znt_time = 0,$Gnt,$Gnt_um1,$Gnt_um2,$Gnt_ile

Func Gnt()
$GLnt_um1 = GUICtrlCreateLabel("UM 1:",5,27,35,17);Label z tytu�em do pierwszej umiej�tno�ci
$Gnt_um1 = GUICtrlCreateCombo("Obrona", 40, 25, 100, 20);Wyb�r umiej�tno�ci
GUICtrlSetData(-1, "Bronienie|Skuteczno��|Kondycja|Do�rodkowania|Podania|Atak|Strza�y|Celno��|Szybko��");Dodanie mo�liwych umiej�tno�ci
$GLnt_um2 = GUICtrlCreateLabel("UM 2:",145,27,35,17);Label z tytu�em do drugiej umiej�tno�ci
$Gnt_um2 = GUICtrlCreateCombo("Skuteczno��", 180, 25, 100, 20);Wyb�r 2 umiej�tno�ci
GUICtrlSetData(-1, "Bronienie|Obrona|Kondycja|Do�rodkowania|Podania|Atak|Strza�y|Celno��|Szybko��");Dodanie mo�liwych umiej�tno�ci
$GLnt_ile = GUICtrlCreateLabel("Ile PA z�u�y�:",290,27,65,17);Label z tytu�em do ilo�ci treningu
$Gnt_ile = GUICtrlCreateInput($Tinfo[8][1], 360, 25, 50, 20, BitOR($ES_AUTOHSCROLL,$ES_NUMBER));Input z liczb� PA kt�re maj� by� wytrenowane
$Gnt = GUICtrlCreateButton("Trenuj", 50, 50, 320, 31, $WS_GROUP);Przycisk rozpoczynaj�cy  trening 
EndFunc

func nt_start()
	Global $Znt_ile = GUICtrlRead($Gnt_ile);Ilo�� PA do wytrenowania
	global $Znt_um1 = _ArraySearch($Tnt_um,GUICtrlRead($Gnt_um1));Pierwsza umiej�tno��
	global $Znt_um2 = _ArraySearch($Tnt_um,GUICtrlRead($Gnt_um2));Druga umiej�tno��
	if $Znt_um1 = $Znt_um2 Then $Znt_um2="";Druga umiej�tno�� nie mo�e by� taka sama jak pierwsza
	global $Znt_time = 1
	slog("Rozpoczo�e� trening "&$Tnt_um[$Znt_um1]&" i "&$Tnt_um[$Znt_um2]&","&@CRLF&"przeznaczy�e� na nie "&$Znt_ile&" PA")
EndFunc

func nt($um)
	$beg = TimerInit()
	Local $kod = "GET /trening_normal_ajax.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Od�wie�a trening
	Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
	local $re = hsend($host,$kod);Trenuje wybran� umiej�tno��
	if $Clog then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF);Zapisuje w logu
	$reb = StringStripWS(StringTrimLeft($re,StringInStr($re,@crlf&@crlf)),8);Zapisuje 2 cz�� zapytania z usuni�tymi bia�ymi znakami do zmiennej
	if $reb = "10" Then;Je�eli 2 cz�� zapytania to 10 to znaczy �e prawid�owo wytrenowano umiej�tno��
		slog("Wytrenowano punkt umiej�tno�ci "&$Tnt_um[$um]&" w "&int(TimerDiff($beg))&"ms")
		return 1;Wytrenowano
	Else;Je�eli nie to wypisuje w logu b��da
		If StringInStr($re,"Nie mo�esz trenowa� jednocze�nie dw�ch tych samych umiej�tno�ci.")>0 Then
			slog("B��d: Nie mo�na trenowa� jednocze�nie dw�ch tych samych umiej�tno�ci")
		ElseIf StringInStr($re,"Twoja sesja wygas�a. Zaloguj si� ponownie.")>0 Then
			slog("B��d: koniec sesji")
			loguj();Je�eli utracono sesje to loguje ponownie
		Else
			slog("Jaki� b��d")
		EndIf
		return 0;Nie wytrenowano
	EndIf
EndFunc;nt

func nt_task()
	if nt($Znt_um1) Then $Znt_ile -= 1;Trenuje 1 um i odejmuje PA je�eli wytrenowano
	if $Znt_um2 <> "" Then 
		if nt($Znt_um2) Then $Znt_ile -= 1;Trenuje 2 um i odejmuje PA je�eli wytrenowano
	EndIf
	global $Znt_time = TimerInit();Zapisuje czas od ostatniego treningu
	GUICtrlSetData($Gnt_ile,$Znt_ile);Ustawia w inpucie ilo�� PA do wytrenowania
	WinSetTitle($Form2,"",$Znt_ile&" - Bot by NeTo");Ustawia w tytule okna ilo�� PA do wytrenowania
EndFunc;nt_task
