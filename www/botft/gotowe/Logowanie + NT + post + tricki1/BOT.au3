;Biblioteki
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include "FT_nt.au3"
#include "FT_post.au3"
#include "FT_trick.au3"
;deklaracja zmiennych tablicowych
dim $Tinfo[30][4] = [["Nick"],["ID"],["Ranking"],["Poczta"],["UM"],["Euro"],["Pot"],["Forma"],["Akcje"],["Schowek"],["S�awa"],["Pozycja"],["E-mail"],["Kraj"],["Premium"],["Klub"],["Wiek"],["Warto��"],["Atak"],["Obrona"],["Podania"],["Bronieni"],["Celno��"],["Strza�y"],["Do�rod."],["Skute."],["Kond."],["Szybk."],["Prod."],["Bank"]];Tablica przechowuj�ca dane o u�ytkowniku i GUI 0 - Nazwa informacji, 1 - Staty, 2 - Labele z tytu�em($Tinfo[0-30][0]), 3 - Labele z informacj�($Tinfo[0-30][1]) 
#Region ### START Koda GUI section ### 
$Form1 = GUICreate("Form1", 300, 65, 550, 250)
$Gemail = GUICtrlCreateInput("janick67a@interia.pl", 5, 5, 120, 20);Input z emailem
$Gpass = GUICtrlCreateInput("janick67a", 130, 5, 120, 20,BitOR($ES_PASSWORD,$ES_AUTOHSCROLL));Input z has�em
$Gserwer = GUICtrlCreateCombo("5", 260, 5, 35, 20);Wyb�r serwera
GUICtrlSetData(-1, "1|2|3|4|6|7|8"); od 1 do 8
$Gzalog = GUICtrlCreateButton("Zaloguj",240,30,60,30);Przycisk zaloguj
$GCtop = GUICtrlCreateCheckbox("Sprawdzaj top",5,28,100,15);Checkbox - �adowa� topke czyli $Tinfo 0-8
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCstaty = GUICtrlCreateCheckbox("Sprawdzaj staty",5,46,100,15);Checkbox - �adowa� dodatkowe statysty $Tinfo 9-29
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCpost = GUICtrlCreateCheckbox("Sprawdzaj poczte",110,28,100,15);Checkbox - �adowa� poczte
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCtrick = GUICtrlCreateCheckbox("Sprawdzaj tricki",110,46,100,15);Checkbox - trenowa� i sprawdza� tricki
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
GUISetState(@SW_SHOW)
Dim $Form1_1_AccelTable[1][2] = [["{ENTER}", $Gzalog]]
GUISetAccelerators($Form1_1_AccelTable)
#EndRegion ### END Koda GUI section ###
;zmienne
TCPStartup()
$Clog = 0;C zapisywa� loga(1) czy nie(0)
$Zzalog = 0;Zalogownay(1) lub nie zalogowany(0)
$Zlog = "";Zmienna przechowuj�ca zawarto�� loga
global $Zsesja = idsesji();funkcja uzyskuje id sesji

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Gzalog
			if zaloguj() Then ExitLoop;Funkcja kt�ra loguje na konto, je�eli zaloguje to wychodzi z p�tli
	EndSwitch
WEnd

start();Funkcja wykonywana tylko raz, zaraz po zalogowaniu

#Region ### START Koda GUI section ### Form=;GUI
$Form2 = GUICreate("Bot by NeTo", 420, 420, 192, 124);Tworzy okno
GUISetBkColor(0xFFFF00);Ustawia ��ty kolor jako t�o
;GUI na dolnym pasku
$GLnick = GUICtrlCreateLabel($Tinfo[0][0]&":", 0, 403,25 , 17);Label z tytu�em Nick
$Gnick = GUICtrlCreateLabel($Tinfo[0][1], 25, 403,50 , 17);Label z nickiem
$GLpostd = GUICtrlCreateLabel($Tinfo[3][0]&":", 80, 403, 60, 17);Label z tytu�em Poczta
$Gpostd = GUICtrlCreateLabel("", 142, 403, 30, 17);Label z ilo�ci� wiadomo�ci
$GLakcje = GUICtrlCreateLabel($Tinfo[8][0]&":", 180, 403, 29, 17);Label z tytu�em Akcje
$Gakcje = GUICtrlCreateLabel("", 212, 403, 54, 17);Label z ilo�ci� akcjii
$GLum = GUICtrlCreateLabel($Tinfo[4][0]&":", 287, 403, 19, 17);Label z tytu�em UM
$Gum = GUICtrlCreateLabel("", 307, 403, 55, 17);Label z ilo�ci� UM
$Glogout = GUICtrlCreateButton("Wyloguj",370,400,50,20);Przycisk wylogowywuj�c
$Glog = GUICtrlCreateEdit($Zlog,0,180,420,220);Log
;GUI zak�adki
$Tab1 = GUICtrlCreateTab(1, 0, 420, 180);Element z zak�adkami
GUICtrlSetResizing(-1, $GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
GUICtrlCreateTabItem("Info");Tworzy zak�adke nr 1
Gi();Tworzy GUI z informacjami
GUICtrlCreateTabItem("Trening");Tworzenie zakladki nr 2
Gnt();Tworzy GUI z normalnym treningiem
GUICtrlCreateTabItem("Poczta");Tworzenie zak�adki nr 3
Gpost();Tworzenie GUI z wiadomo�ciami
GUICtrlCreateTabItem("Tricki");Tworzenie  zak�adki nr 4
Gtrick();tworzenie GUI z trickami
GUICtrlCreateTabItem("Inne");Tworzenie zak�adki nr 5
$Gtk = GUICtrlCreateButton("Skorzystaj z treningu klubowego",5,25,180,20);Przycisk - Skorzystaj z treningu klubowego
$GLtk = GUICtrlCreateLabel("",190,28,40,20);Ile um mo�na wytrenowa� w treningu klubowym
$Gmp = GUICtrlCreateButton("Zap�a� menad�erowi",5,50,180,20);Przycisk - Zap�a� menagerowi
$Gpm = GUICtrlCreateButton("Skorzystaj z premi",5,75,180,20);Przycisk - Skorzystaj z premi
$Gps = GUICtrlCreateButton("Przelicz s�awe",5,100,180,20);Przycisk - Przelicz s�awe
$Gpg = GUICtrlCreateButton("Stocz pojedynek z gwiazd�",5,125,180,20);Przycisk - Stocz pojedynek z gwiazd�
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

If $Cpost = 1 Then post_get();Pobiera wiadomo�ci

While 1 
	$nMsg = GUIGetMsg()
	Switch $nMsg
	Case $GUI_EVENT_CLOSE
		Exit
	Case $Gnt
		nt_start();Funkcja wykonywana zaraz przed utworzeniem GUI
	Case $Tgpost[1][1];Poprzednia strona z wiadomo�ciami
		post_prev()
	Case $Tgpost[1][3];Nast�pna strona z wiadomo�ciami
		post_next()
	EndSwitch
	if $Zzalog = 1 then spr()
WEnd

func spr();Funkcja w kt�rej s� funckcje wykonywane co pewien czas
;~ 	if $Cstaty = 1 and int(TimerDiff($restaty_time)/1000) >= 120 then 
;~ 		loadstaty();Od�wie�a je�eli od poprzedniego od�wie�enia min�y 2 min.
;~ 		setinfo();Ustawia w GUI pobrane dane
	If $Ctop = 1 and int(TimerDiff($reload_time)/1000) >= 20 then
		loadtop();Od�wie�a je�eli od poprzedniego od�wie�enia min�o 20 sec.
		setinfo();Ustawia w GUI pobrane dane
	ElseIf $Znt_time <> 0 and int(TimerDiff($Znt_time)/1000) >= 15 Then
		nt_task()
	EndIf
EndFunc;spr

func start();Funkcja wykonywana zaraz po udanym logowaniu
	Global $Ctop = GUICtrlRead($GCtop);Zapisuje 1 lub 4
	Global $Cstaty = GUICtrlRead($GCstaty);Zapisuje 1 lub 4
	Global $Cpost = GUICtrlRead($GCpost);Zapisuje 1 lub 4
	Global $Ctrick = GUICtrlRead($GCtrick);Zapisuje 1 lub 4
	GUIDelete($Form1);Usuwa pierwsze GUI
	loadtop();�aduje podstawowe staty
;~ 	loadstaty();�aduje pozosta�e informacjie
	If $Ctrick = 1 Then
		Global $Ztrick_file = "trick_"&$Tinfo[0][1]&".ini"
		if not FileExists($Ztrick_file) Then trick_file($Ztrick_file)
	EndIf
	$Zzalog = 1
EndFunc;start

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
	$Zemail = GUICtrlRead($Gemail);Zapisuje email do zmiennej
	$Zpass = GUICtrlRead($Gpass);Zapisuje has�o do zmiennej
	$Zserwer = GUICtrlRead($Gserwer);Zapisuje nr serwera do zmiennej
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