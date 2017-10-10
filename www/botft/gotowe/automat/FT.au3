dim $Tinfo[30][4] = [["Nick"],["ID"],["Ranking"],["Poczta"],["UM"],["Euro"],["Pot"],["Forma"],["Akcje"],["Schowek"],["S³awa"],["Pozycja"],["E-mail"],["Kraj"],["Premium"],["Klub"],["Wiek"],["Wartoœæ"],["Atak"],["Obrona"],["Podania"],["Bronieni"],["Celnoœæ"],["Strza³y"],["Doœrod."],["Skute."],["Kond."],["Szybk."],["Prod."],["Bank"]];Tablica przechowuj¹ca dane o u¿ytkowniku i GUI 0 - Nazwa informacji, 1 - Staty, 2 - Labele z tytu³em($Tinfo[0-30][0]), 3 - Labele z informacj¹($Tinfo[0-30][1]) 
Global $Ztrick_combo = ""
func spr();Funkcja w której s¹ funckcje wykonywane co pewien czas
If $Znt_time <> 0 and int(TimerDiff($Znt_time)/1000) >= 15 Then
		nt_task();Normalny trening
		spr()
		EndIf
	If $Ctrick = 1 and IniRead($Ztrick_file,"Poziom","Ile",0) < 3 IniRead($Ztrick_file,"ostatni","trick","") <> "" and IniRead($Ztrick_file,"ostatni","czas","") <> "" and TimerDiff(IniRead($Ztrick_file,"ostatni","czas",""))/60000 >= IniRead($Ztrick_file,"ostatni","poziom",10)*5 Then
		FileWrite("t.ini","[Ustawienia]"&@CRLF&"Nick="&$Tinfo[0][1]&@CRLF&"Email="&$Zemail&@CRLF&"Pass="&$Zpass&@CRLF&"Serw="&$Zserwer&@crlf&"Trick="&IniRead($Ztrick_file,"ostatni","trick",""));Nauka ostatniego tricku
		RunWait("trick.exe")
		$re = FileRead("t.ini")
		FileDelete("t.ini")
		spr()
	EndIf
EndFunc;spr

func loguj($email, $pass, $nrserwera = 5);Loguje na konto
$beg = TimerInit()
global $host = "s"&$nrserwera&".footballteam.pl";Zapisuje hosta do zmiennej
Local $post= "email="&StringReplace($email,"@","%40")&"&pass="&$pass&"&serwer=http%3A%2F%2Fs"&$nrserwera&".footballteam.pl%2Fstatystyki.php";przygotowuje kod do przes³ania metod¹ POST
Local $kod = "POST /newsy.php HTTP/1.1" & @CRLF & "Host: " & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Content-Type: application/x-www-form-urlencoded"& @CRLF & "Content-Length: " & stringlen($post) & @CRLF & @CRLF & $post & @CRLF;Zapisuje nag³ówek i kod do zmiennej
local $re = hsend($host,$kod);Wys³anie zapytania i zapisanie odpowiedzi do zmiennnej
if StringInStr($re, "Podane dane s± niepoprawne.") > 0 Then;Je¿eli dane s¹ nie prawid³owe to:
	MsgBox(0,"","SprawdŸ dane i spróbuj jeszcze raz")
	return 0
Else
	return 1
EndIf
EndFunc;loguj

func idsesji();Funkcja uzyskuje id sesji
Local $beg = TimerInit()
$host = "s5.footballteam.pl"
Local $kod = "GET / HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Connection: close" & @CRLF & @CRLF;Zapisanie zapytania gotowego do wys³ania
local $re = hsend($host,$kod);Wys³anie zapytania i zapisanie odpowiedzi do zmiennnej
Local $pcook = StringInStr($re,@CRLF&"Set-Cookie:")+14;Zapisuje nr pierwszej litery id sesji do zmiennej
Local $cook1 = StringMid($re,$pcook,StringInStr($re,";",1,1,$pcook)-$pcook);Zapisuje id sesji do zmiennej
return $cook1;Zwraca id sesji
	EndFunc;idsesji
	
func hsend($host, $dane);funkcja wysy³a zapytanie do serwera
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po³¹czenie z serwerem
If $iSocket = -1 Then;Je¿eli nie po³¹czono z serwerem to:
   TCPCloseSocket($iSocket);Zamknij po³¹czenie
   Exit
EndIf
Local $BytesSent = TCPSend($iSocket, $dane);Wys³anie zapytania
If $BytesSent = 0 Then Exit
Local $sRecv = "", $i=1, $sCRecv;Zadeklarowanie zmiennych
do 
   $sCRecv = TCPRecv($iSocket, 500);Zapisanie zwróconych danych do zmiennej
   If $sCRecv <> "" Then;Je¿eli zwrócono cokolwiek to:
	   $sRecv &= $sCRecv;dopisz do istniej¹cej zmiennej
   Else;Je¿eli zwrócono pusty string to:
	   $i+=1;Licz puste zwroty
	   EndIf
	Until $i >=200;Je¿eli 200x zwrócono pusty string to zakoñcz pêtle
   TCPCloseSocket($iSocket);Zamknij po³¹czenie
return $sRecv;Zwróæ string zwrócony przez serwer
	EndFunc;hsend
	
func loadtop();Funkcja ³aduje top do tablicy
Local $beg = TimerInit()
$kod = "GET /top_reload.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie 
$re = hsend($host,$kod);Wys³anie
$re = StringTrimLeft($re,StringInStr($re,@crlf&@crlf));Obciêcie nag³ówka
$w = StringRegExp($re,"<a.*>(.*)</a>",1);Znalezienie Nicku
if $w <> 0  Then $Tinfo[0][1] = $w[0];Zapisanie Nicku do tablicy
for $i = 2 to 9;Pêtla zapisuj¹ca dane do tablicy,2 - ID, 3 - Ranking, 4- Poczta, 5- UM, 6 - Euro, 7 - Pot, 8 - Forma, 9 - Akcje
$p = StringInStr($re,"</b>",0,$i)+4;Pocz¹tek fragmentu
$k = StringInStr($re,"<",0,1,$p);Koniec fragmentu
$g = StringMid($re,$p,$k-$p);Wyciêcie odpowiedniego fragmentu
$g = StringStripWS($g,8);Usuniêcie bia³ych znaków
if $i = 9 Then ;Je¿eli akcje to:
	$k = StringInStr($g,"/");ZnajdŸ koniec akcji a pocz¹tek schowka
	$Tinfo[9][1] = StringTrimLeft($g,$k);Wytnij iloœæ akcji w schowku i zapisz do Tablicy(schowek)
	$g = StringLeft($g,$k-1);Wytnij iloœæ akcji
EndIf
$Tinfo[$i-1][1] = $g;Zapisz do tablicy
	Next
global $reload_time = TimerInit();Zapisz do zmiennej czas od ostatniego odœwie¿enia
	EndFunc
	
Func loadstaty();£aduje pozosta³e informacjie
Local $beg = TimerInit()
$kod = "GET /statystyki.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
$re = hsend($host,$kod);Wys³anie
;S³awa
$p3 = StringInStr($re,'S³awa: <b style="color: gold;">',0,1)+31
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
;Wartoœæ
$p = StringInStr($re,"zon):</b></td><td>",0,1)+18
$k = StringInStr($re,'<',0,1,$p)
$Tinfo[17][1]=StringMid($re,$p,$k-$p)
;Umiejêtnoœci
$p = StringInStr($re,'cellspacing="0">',0,1)+17
$k = StringInStr($re,'</table>',0,3,$p)
$w2 = StringMid($re,$p,$k-$p);Wytnij tabele z umiejêtnoœciami
$w2 = StringStripWS($w2,8);Usuñ bia³e znaki
for $i = 18 to 28 
$p = StringInStr($w2,'</b></td><td>',0,$i-17)+13
$k = StringInStr($w2,'<',0,1,$p)
$Tinfo[$i][1]=StringMid($w2,$p,$k-$p);Zapisz umiejêtnoœci do tablicy
Next

$kod = "GET /bank.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF;Przygotowanie
$re = hsend($host,$kod);Wys³anie
$p = StringInStr($re,'ue="')+4;Pocz¹tek
$k = StringInStr($re,'"',0,1,$p);Koniec
$Tinfo[29][1] = StringMid($re,$p,$k-$p);Zapisuje iloœæ kasy w banku do zmiennej
slog("Odœwie¿ono staty w "&int(TimerDiff($beg))&"ms");Pisze w logu
global $restaty_time = TimerInit();Czas od ostatniego odœwie¿enia
	EndFunc
	
func lvl_get();Wczytanie poziomów do tablicy
Global $Ztrick_combol
for $i = 0 to 24;Trick
	$Ttrick[$i][2] = IniRead($Ztrick_file,"Poziom",$Ttrick[$i][0],"1");Czyta z pliku lvl tricku
next
EndFunc;trick_lvl_get