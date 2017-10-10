dim $Tinfo[30][4] = [["Nick"],["ID"],["Ranking"],["Poczta"],["UM"],["Euro"],["Pot"],["Forma"],["Akcje"],["Schowek"],["S�awa"],["Pozycja"],["E-mail"],["Kraj"],["Premium"],["Klub"],["Wiek"],["Warto��"],["Atak"],["Obrona"],["Podania"],["Bronieni"],["Celno��"],["Strza�y"],["Do�rod."],["Skute."],["Kond."],["Szybk."],["Prod."],["Bank"]];Tablica przechowuj�ca dane o u�ytkowniku i GUI 0 - Nazwa informacji, 1 - Staty, 2 - Labele z tytu�em($Tinfo[0-30][0]), 3 - Labele z informacj�($Tinfo[0-30][1]) 
Global $Ztrick_combo = ""

func spr();Funkcja w kt�rej s� funckcje wykonywane co pewien czas
	if $Cstaty = 1 and int(TimerDiff($restaty_time)/1000) >= 120 then 
		loadstaty();Od�wie�a je�eli od poprzedniego od�wie�enia min�y 2 min.
		setinfo();Ustawia w GUI pobrane dane
		EndIf
	If $Ctop = 1 and int(TimerDiff($reload_time)/1000) >= 20 then
		loadtop();Od�wie�a je�eli od poprzedniego od�wie�enia min�o 20 sec.
		setinfo();Ustawia w GUI pobrane dane
	EndIf
	If $Znt_time <> 0 and int(TimerDiff($Znt_time)/1000) >= 15 Then	nt_task();Normalny trening
		
	If $Ctrick = 1 and IniRead($Ztrick_file,"Poziom","Ile",0) < 3 and IniRead($Ztrick_file,"ostatni","trick","") <> "" and IniRead($Ztrick_file,"ostatni","czas","") <> "" and TimerDiff(IniRead($Ztrick_file,"ostatni","czas",""))/60000 >= IniRead($Ztrick_file,"ostatni","poziom",10)*5 Then
		FileWrite("t.ini","[Ustawienia]"&@CRLF&"Nick="&$Tinfo[0][1]&@CRLF&"Email="&$Zemail&@CRLF&"Pass="&$Zpass&@CRLF&"Serw="&$Zserwer&@crlf&"Trick="&IniRead($Ztrick_file,"ostatni","trick",""));Nauka ostatniego tricku
		RunWait("trick.exe")
		$re = FileRead("t.ini")
		FileDelete("t.ini")
		slog("Rozpocz�to trening tricku "&IniRead($Ztrick_file,"ostatni","trick",""))
	EndIf
EndFunc;spr

func start();Funkcja wykonywana zaraz po udanym logowaniu
	Global $Ctop = GUICtrlRead($GCtop);Zapisuje 1 lub 4
	Global $Cstaty = GUICtrlRead($GCstaty);Zapisuje 1 lub 4
	Global $Cpost = GUICtrlRead($GCpost);Zapisuje 1 lub 4
	Global $Ctrick = GUICtrlRead($GCtrick);Zapisuje 1 lub 4
	GUIDelete($Form1);Usuwa pierwsze GUI
	loadtop();�aduje podstawowe staty
	loadstaty();�aduje pozosta�e informacjie
	Global $Ztrick_file = "trick_"&$Tinfo[0][1]&".ini"
	if $Ctrick = 1 then lvl_get()
	$Zzalog = 1
EndFunc;start

func start2();Funkcja po stworzeniu GUI
	If $Cpost = 1 Then post_get();Pobiera wiadomo�ci
	If $Ctrick = 1 Then
		if IniRead($Ztrick_file,"ostatni","trick","") <> "" and MsgBox(4,IniRead($Ztrick_file,"ostatni","trick",""),"Kontynuuowa� nauke tricku?") = 7 then
			IniWrite($Ztrick_file,"ostatni","trick","")
			IniWrite($Ztrick_file,"ostatni","czas","")
			IniWrite($Ztrick_file,"ostatni","poziom","")
			EndIf
	EndIf
	GUICtrlSetData($GLtask_tk,"+"&task_iletk());Tk
EndFunc

Func setinfo();Ustawia w GUI dane z tablicy
For $i=0 to 29
	GUICtrlSetData($Tinfo[$i][3],$Tinfo[$i][1]);Ustawia labele z wszystkimi informacjami
Next
;Dolny pasek
GUICtrlSetData($Gnick,$Tinfo[0][1]);Nick
GUICtrlSetData($Gum,$Tinfo[4][1]);Um
GUICtrlSetData($Gpostd,$Tinfo[3][1]);Wiadomo�ci
GUICtrlSetData($Gakcje,$Tinfo[8][1]);Akcje
EndFunc;setinfo

func zaloguj();Funckcja loguje do konta wykonywana po klikni�ciu przycisku zaloguj
	Global $Zemail = GUICtrlRead($Gemail);Zapisuje email do zmiennej
	Global $Zpass = GUICtrlRead($Gpass);Zapisuje has�o do zmiennej
	Global $Zserwer = GUICtrlRead($Gserwer);Zapisuje nr serwera do zmiennej
	if $Zemail = "" or $Zpass = "" Then MsgBox(0,"","Podaj email i has�o!")
	if loguj($Zemail,$Zpass,$Zserwer) Then return 1;Je�eli zalogowano to przerywa pierwsze GUI
	return 0;Zwraca 0 czyli kontynuuje pierwsze GUI
EndFunc;zaloguj

func loguj($email, $pass, $nrserwera = 5);Loguje na konto
$beg = TimerInit()
global $host = "s"&$nrserwera&".footballteam.pl";Zapisuje hosta do zmiennej
Local $post= "email="&StringReplace($email,"@","%40")&"&pass="&$pass&"&serwer=http%3A%2F%2Fs"&$nrserwera&".footballteam.pl%2Fstatystyki.php";przygotowuje kod do przes�ania metod� POST
Local $kod = "POST /newsy.php HTTP/1.1" & @CRLF & "Host: " & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Content-Type: application/x-www-form-urlencoded"& @CRLF & "Content-Length: " & stringlen($post) & @CRLF & @CRLF & $post & @CRLF;Zapisuje nag��wek i kod do zmiennej
local $re = hsend($host,$kod);Wys�anie zapytania i zapisanie odpowiedzi do zmiennnej
if $Clog Then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF);Zapisuje dzia�anie do pliku je�eli log jest w��czony
if StringInStr($re, "Podane dane s� niepoprawne.") > 0 Then;Je�eli dane s� nie prawid�owe to:
	MsgBox(0,"","Sprawd� dane i spr�buj jeszcze raz")
	return 0
Else
	slog("Zalogowano w "&int(TimerDiff($beg))&"ms");Zapisuje w logu
	return 1
EndIf
EndFunc;loguj

func idsesji();Funkcja uzyskuje id sesji
Local $beg = TimerInit()
$host = "s5.footballteam.pl"
Local $kod = "GET / HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Connection: close" & @CRLF & @CRLF;Zapisanie zapytania gotowego do wys�ania
local $re = hsend($host,$kod);Wys�anie zapytania i zapisanie odpowiedzi do zmiennnej
if $Clog Then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF);Zapisuje dzia�anie do pliku je�eli log jest w��czony
Local $pcook = StringInStr($re,@CRLF&"Set-Cookie:")+14;Zapisuje nr pierwszej litery id sesji do zmiennej
Local $cook1 = StringMid($re,$pcook,StringInStr($re,";",1,1,$pcook)-$pcook);Zapisuje id sesji do zmiennej
slog("Uzyskano id sesji w "&int(TimerDiff($beg))&"ms");Zapisuje w logu
return $cook1;Zwraca id sesji
	EndFunc;idsesji
	
func slog($string);funkcja pisz�ca podany string do loga
	$Zlog = @HOUR & ":" & @MIN & ":" & @SEC & " " & $string & @CRLF & $Zlog
	if $Zzalog = 1 Then	GUICtrlSetData($Glog,$Zlog);Dodaj na pocz�tku loga podany string
EndFunc;slog
	
func Gi();funkcja tworz�ca GUI z informacjami
	$t = 23;Odleg�o�� od g�ry pierwszego elementu w 1 kolumnie
	$l = 5;Odleg�o�� Tytu�u od lewej(0-10)
	$d = 50;$l+$d = Odleg�o�� Informacji od lewej(0-10)
	for $i = 0 to 28;P�tla tworz�ca GUI
	if $i = 11 Then;Przej�cie do dr�giej kolumny(11 element�w w 1(od 0 do 10),8 element�w w 2(11-18))
		$t = 23;Odleg�o�� od g�ry pierwszego elementu w 2 kolumnie(11-18)
		$l = 150;Odleg�o�� Tytu�u od g�ry w 2 kolumnie(11-18)
		$d = 45;$l+$d = Odleg�o�� Informacji od lewej w 2 kolumnie(11-18)
	ElseIf $i = 18 Then;Wy�wietlenie banku na ko�cu 2 kolumny
	$Tinfo[29][2] = GUICtrlCreateLabel($Tinfo[29][0]&":",$l,$t,100,17);Label z Tytu�em na ko�cu 2 kolumny
	$Tinfo[29][3] = GUICtrlCreateLabel($Tinfo[29][1],$l+$d,$t,100,17);Label z Informacji� na ko�cu 2 kolumny
		$t = 23;Odleg�o�� od g�ry pierwszego elementu w 3 kolumnie(19-28)
		$l = 305;Odleg�o�� Tytu�u od g�ry w 3 kolumnie(19-28)
		$d = 45;$l+$d = Odleg�o�� Informacji od lewej w 3 kolumnie(19-28)
	EndIf
	$Tinfo[$i][2] = GUICtrlCreateLabel($Tinfo[$i][0]&":",$l,$t,100,17);Tytu�
	$Tinfo[$i][3] = GUICtrlCreateLabel($Tinfo[$i][1],$l+$d,$t,100,17);Informacja
	$t+=14;Kolejny wiersz w kolumnach
	Next
EndFunc;Gi

func hsend($host, $dane);funkcja wysy�a zapytanie do serwera
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po��czenie z serwerem
If $iSocket = -1 Then;Je�eli nie po��czono z serwerem to:
   TCPCloseSocket($iSocket);Zamknij po��czenie
   Exit
EndIf
Local $BytesSent = TCPSend($iSocket, $dane);Wys�anie zapytania
If $BytesSent = 0 Then Exit
Local $sRecv = "", $i=1, $sCRecv;Zadeklarowanie zmiennych
do 
   $sCRecv = TCPRecv($iSocket, 500);Zapisanie zwr�conych danych do zmiennej
   If $sCRecv <> "" Then;Je�eli zwr�cono cokolwiek to:
	   $sRecv &= $sCRecv;dopisz do istniej�cej zmiennej
   Else;Je�eli zwr�cono pusty string to:
	   $i+=1;Licz puste zwroty
	   EndIf
	Until $i >=200;Je�eli 200x zwr�cono pusty string to zako�cz p�tle
   TCPCloseSocket($iSocket);Zamknij po��czenie
return $sRecv;Zwr�� string zwr�cony przez serwer
	EndFunc;hsend
	
func loadtop();Funkcja �aduje top do tablicy
Local $beg = TimerInit()
$kod = "GET /top_reload.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie 
$re = hsend($host,$kod);Wys�anie
$re = StringTrimLeft($re,StringInStr($re,@crlf&@crlf));Obci�cie nag��wka
$w = StringRegExp($re,"<a.*>(.*)</a>",1);Znalezienie Nicku
if $w <> 0  Then $Tinfo[0][1] = $w[0];Zapisanie Nicku do tablicy
for $i = 2 to 9;P�tla zapisuj�ca dane do tablicy,2 - ID, 3 - Ranking, 4- Poczta, 5- UM, 6 - Euro, 7 - Pot, 8 - Forma, 9 - Akcje
$p = StringInStr($re,"</b>",0,$i)+4;Pocz�tek fragmentu
$k = StringInStr($re,"<",0,1,$p);Koniec fragmentu
$g = StringMid($re,$p,$k-$p);Wyci�cie odpowiedniego fragmentu
$g = StringStripWS($g,8);Usuni�cie bia�ych znak�w
if $i = 9 Then ;Je�eli akcje to:
	$k = StringInStr($g,"/");Znajd� koniec akcji a pocz�tek schowka
	$Tinfo[9][1] = StringTrimLeft($g,$k);Wytnij ilo�� akcji w schowku i zapisz do Tablicy(schowek)
	$g = StringLeft($g,$k-1);Wytnij ilo�� akcji
EndIf
$Tinfo[$i-1][1] = $g;Zapisz do tablicy
	Next
slog("Od�wie�ono top w "&int(TimerDiff($beg))&"ms");Zapisz do loga
global $reload_time = TimerInit();Zapisz do zmiennej czas od ostatniego od�wie�enia
	EndFunc
	
Func loadstaty();�aduje pozosta�e informacjie
Local $beg = TimerInit()
$kod = "GET /statystyki.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
$re = hsend($host,$kod);Wys�anie
;S�awa
$p3 = StringInStr($re,'S�awa: <b style="color: gold;">',0,1)+31
$k3 = StringInStr($re,'<',0,1,$p3)
$Tinfo[10][1] = StringMid($re,$p3,$k3-$p3)
;Pozycja
$p = StringInStr($re,'25px;">',0,1)+7
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[11][1]=StringMid($re,$p,$k-$p)
;E-mail
$p = StringInStr($re,'E-mail:</b></td><td>',0,1)+20
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[12][1]=StringMid($re,$p,$k-$p)
;Kraj
$p = StringInStr($re,'width="15" /> ',0,1)+14
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[13][1]=StringMid($re,$p,$k-$p)
;Premium
$p = StringInStr($re,'Premium:</b></td><td>',0,1)+21
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[14][1]=StringMid($re,$p,$k-$p)
;Klub
$p = StringInStr($re,"'player_box')",0,4)+15
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[15][1]=StringMid($re,$p,$k-$p)
;Wiek
$p = StringInStr($re,"nika:</b></td><td>",0,1)+18
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[16][1]=StringMid($re,$p,$k-$p)
;Warto��
$p = StringInStr($re,"zon):</b></td><td>",0,1)+18
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[17][1]=StringMid($re,$p,$k-$p)
;Umiej�tno�ci
$p = StringInStr($re,'cellspacing="0">',0,1)+17
$k = StringInStr($re,'</table>',0,3,$p)
$w2 = StringMid($re,$p,$k-$p);Wytnij tabele z umiej�tno�ciami
$w2 = StringStripWS($w2,8);Usu� bia�e znaki
for $i = 18 to 28 
$p = StringInStr($w2,'</b></td><td>',0,$i-17)+13
$k = StringInStr($w2,'<',0,1,$p)
$Tinfo[$i][1]=StringMid($w2,$p,$k-$p);Zapisz umiej�tno�ci do tablicy
Next

$kod = "GET /bank.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
$re = hsend($host,$kod);Wys�anie
$p = StringInStr($re,'ue="')+4;Pocz�tek
$k = StringInStr($re,'"',0,1,$p);Koniec
$Tinfo[29][1] = StringMid($re,$p,$k-$p);Zapisuje ilo�� kasy w banku do zmiennej
slog("Od�wie�ono staty w "&int(TimerDiff($beg))&"ms");Pisze w logu
global $restaty_time = TimerInit();Czas od ostatniego od�wie�enia
	EndFunc
	
func lvl_get();Wczytanie poziom�w do tablicy
Global $Ztrick_combol
for $i = 0 to 24;Trick
	$Ttrick[$i][2] = IniRead($Ztrick_file,"Poziom",$Ttrick[$i][0],"1");Czyta z pliku lvl tricku
next

for $i=0 to 24;Tricki
	if $Ttrick[$i][2] <> "Max" Then;Je�eli jeszcze nie uko�czono tricku to dopisuje go do listy
	$Ztrick_combol &= "|"&$Ttrick[$i][0]
	EndIf
Next

$Ztrick_combol = StringTrimLeft($Ztrick_combol,1);Odcina pierwszy znak

EndFunc;trick_lvl_get