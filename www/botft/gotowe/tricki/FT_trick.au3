#include<Array.au3>
Dim $Ttrick[25][3] = [["Przewrotka","przewrotka"],["Drybling","drybling"],["Dooko³a œwiata","dookola"],["Krzy¿aczek","krzyzaczek"],["Przeplatanka","przeplatanka"],["Crossover","crossover"],["No¿yce","nozyce"],["Piêtka","pietka"],["Rabona","rabona"],["Trick Zidanea","zidanestrick"],["Wolej","wolej"],["Zwód","zwod"],["Podcinka","podcinka"],["Przerzutka","przerzutka"],["Kiwka","kiwka"],["Têcza","tecza"],["Elastico","elastico"],["Hokus Pokus","hokus"],["X Over","xover"],["Kopniêcie skorpiona","skorpion"],["Air","air"],["Sitdown","sitdown"],["Upper","upper"],["Ground","ground"],["Special","special"]];Dane tricków 0 - pe³na nazwa, 1 - skrócona nazwa, 2 - poziom
dim $Tpost[13][5];Wiadomoœci 0 - id, 1 - data, 2 - autor, 3 - temat, 4 - przeczytane(0) lub nie(1)

func trick_idsesji();Funkcja uzyskuje id sesji
$host = "s5.footballteam.pl"
Local $kod = "GET / HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Connection: close" & @CRLF & @CRLF;Zapisanie zapytania gotowego do wys³ania
local $re = hsend($host,$kod);Wys³anie zapytania i zapisanie odpowiedzi do zmiennnej
Local $pcook = StringInStr($re,@CRLF&"Set-Cookie:")+14;Zapisuje nr pierwszej litery id sesji do zmiennej
Local $cook1 = StringMid($re,$pcook,StringInStr($re,";",1,1,$pcook)-$pcook);Zapisuje id sesji do zmiennej
return $cook1;Zwraca id sesji
	EndFunc;idsesji
	
func trick_loguj($email, $pass, $nrserwera);Loguje na konto
global $host = "s"&$nrserwera&".footballteam.pl";Zapisuje hosta do zmiennej
Local $post= "email="&StringReplace($email,"@","%40")&"&pass="&$pass&"&serwer=http%3A%2F%2Fs"&$nrserwera&".footballteam.pl%2Fstatystyki.php";przygotowuje kod do przes³ania metod¹ POST
Local $kod = "POST /newsy.php HTTP/1.1" & @CRLF & "Host: " & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Content-Type: application/x-www-form-urlencoded"& @CRLF & "Content-Length: " & stringlen($post) & @CRLF & @CRLF & $post & @CRLF;Zapisuje nag³ówek i kod do zmiennej
trick_hsend($host,$kod);Wys³anie zapytania i zapisanie odpowiedzi do zmiennnej
EndFunc;loguj

func trick_post_get()
	local $ile = $Tpost[0][0]
	$kod = "GET /poczta_ajax.php?Step=Recive HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
	$re = hsend($host,$kod);Strona z wiadomoœciami
	$re = StringStripWS($re,5);Usuwa podwójne bia³e znaki
	$re = StringReplace($re,@cr,"");Usuwa znaki nowej lini
	for $i=1 to 12;Pobiera 10 wiadomoœci
	;Id
	$p = StringInStr($re,'name="',0,$i)+6
	$k = StringInStr($re,'"',0,1,$p)
	$Tpost[$i][0]=StringMid($re,$p,$k-$p)
	;Data
	$p = StringInStr($re,'<td>',0,1,$k)+4
	$k2 = StringInStr($re,'<',0,1,$p)
	$Tpost[$i][1]=StringMid($re,$p,$k2-$p)
	;Autor
	$p = StringInStr($re,'td >',0,1,$k)+4
	$k = StringInStr($re,'<',0,1,$p)
	$Tpost[$i][2]=StringMid($re,$p,$k-$p)
	;Temat
	$p = StringInStr($re,'<td>',0,1,$k)+4
	$k = StringInStr($re,'</td>',0,1,$p)
	$temat = StringMid($re,$p,$k-$p);Temat ze znacznikami <b>
	$Tpost[$i][3] = $temat
	if StringInStr($temat,"<b>") Then;Je¿eli temat nie by³ jeszcze przeczytany to:
		$Tpost[$i][4] = 1;Zapisz do tablicy ¿e nie by³
		$p = StringInStr($temat,'<b>',0,1)+3
		$k = StringInStr($temat,'<',0,1,$p)
		$temat = StringMid($temat,$p,$k-$p)
		$Tpost[$i][3] = $temat;Zapisuje temat bez znaczników <b>
	Else
		$Tpost[$i][4] = 0;Wiadomoœæ by³a ju¿ przeczytana
	EndIf
	if StringInStr($Tpost[$i][0],".")>0 Then;Je¿eli nie znaleziona id to skasuj info o ostatniej zapisanej wiadomoœci
		$Tpost[0][0] = $i-1;Ile jest wiadomoœci
		$Tpost[$i][0] = ""
		$Tpost[$i][1] = ""
		$Tpost[$i][2] = ""
		$Tpost[$i][3] = ""
		$Tpost[$i][4] = ""
		ExitLoop
	Else
		$Tpost[0][0]=10
	EndIf
Next
EndFunc;post_get
	
func trick_hsend($host, $dane);funkcja wysy³a zapytanie do serwera
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po³¹czenie z serwerem
If $iSocket = -1 Then;Je¿eli nie po³¹czono z serwerem to:
   TCPCloseSocket($iSocket);Zamknij po³¹czenie
   FileWrite("log.txt","Nie po³¹czono"&@crlf)
   Exit
EndIf
Local $BytesSent = TCPSend($iSocket, $dane);Wys³anie zapytania
If $BytesSent = 0 Then
	FileWrite("log.txt","Nie wys³ano danych"&@crlf)
	Exit
	EndIf
	EndFunc;hsend

func trick_file($Ztrick_file)
	for $i = 0 to 24;Tricki
		IniWrite($Ztrick_file,"Poziom",$Ttrick[$i][0],1)
		for $ii = 1 to 10;Poziomy
			for $iii = 1 to $ii;Wspó³czynniki(iloœæ w zale¿noœci od poziomu)
				$w = "";Zmienna ze wspó³rzêdnymi
				for $iiii = 1 to 10
					$w &= $iiii&";";1;2;3...
				Next
				$w = stringleft($w,stringlen($w)-1);Obcina ostatni znak czyli ;
				IniWrite($Ztrick_file,$Ttrick[$i][0]&";"&$ii,$iii,$w);Zapisuje do pliku
			Next
		Next
	Next
EndFunc;trick_file

func trick_lvl_down()
	$kod = "GET /trening_ajax.php?v=tricki HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
	$re = hsend($host,$kod);Strona z trickami
	$p = StringInStr($re,'ter">')+5
	$k = StringInStr($re,'</tab',0,1,$p)
	$w = StringMid($re,$p,$k-$p)
	$w = StringStripWS($w,8);Usuniêcie bia³ych znaków
	for $i = 4 to 76
	$p = StringInStr($w,'</td><td>',0,$i)+9
	$k = StringInStr($w,'</td><td>',0,1,$p)
	$w2 = StringMid($w,$p,$k-$p);Wyci¹ga poziomy ze strony
	if StringIsInt(($i-1)/3) then;Co 3
		if $w2 <> "Max" Then;Je¿eli ukoñczono któryœ poziom to zapisuje to do pliku
			trick_lvl(($i-1)/3,$w2)
		Elseif $w2 = "Max" Then;Je¿eli maksymalny poziom to zapisuje to do pliku
			trick_lvl(($i-1)/3,11)
		EndIf
		EndIf
	Next
	$p = StringInStr($re,'nauczy³e¶ siê ')+14
	$k = StringInStr($re,'/',0,1,$p)
	$dzis = int(StringMid($re,$p,$k-$p))
	IniWrite($Ztrick_file,"Poziom","Ile",$dzis)
EndFunc

func trick_lvl($id, $poziom = 11);Zapisuje do pliku który poziom ju¿ ukoñczono
	local $trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0];$trick ma byæ nazw¹ tricku
	for $ii = 1 to $poziom - 1;Usuwa wszystkie poni¿ej tego poziomu
		for $iii = 1 to $ii;Wspó³czynniki
			IniWrite($Ztrick_file,$trick&";"&$ii,$iii,"-");Przy zakoñczonych daje -
		Next
	Next
	if $poziom = 11 then $poziom = "Max"
	IniWrite($Ztrick_file,"Poziom",$trick,$poziom);Zapisuje poziom
EndFunc;tricku

func trick_lvl_get();Wczytanie poziomów do tablicy
for $i = 0 to 24;Trick
	$Ttrick[$i][2] = IniRead($Ztrick_file,"Poziom",$Ttrick[$i][0],"1");Czyta z pliku lvl tricku
next
EndFunc;trick_lvl_get

func trick_lvl_save();Zapisuje poziomy do pliku
	for $i = 0 to 24;Tricki
		IniWrite($Ztrick_file,"Poziom",$Ttrick[$i][0],$Ttrick[$i][2])
	Next
EndFunc;trick_lvl_save

func trick_spr();Sprawdza czy s¹ wiadomoœci z treningu
	local $autor = _ArrayFindAll($Tpost,"Informacja","","","","",2);Szuka wœród pobranych wiadomoœci informacji od autora Informacja
	if $autor <> -1 Then;Je¿eli coœ znalaz³o to:
		for $i = 0 to UBound($autor)-1;Wszystkie znalezione elementy
			if $Tpost[$autor[$i]][3] = "Raport z treningu" and IniRead($Ztrick_file,"Przeczytane",$Tpost[$autor[$i]][0],0) = 0 then;Wiadomoœæ o temacie Raport z treningu
				$Twsp = trick_read($Tpost[$autor[$i]][0])
				if StringInStr($Twsp[1][0],"ulacje") > 0 Then;Je¿eli ukoñczono trick
					trick_lvl($Twsp[0][0], $Twsp[0][1]+1);Ukoñczono poziom
					ContinueLoop
				EndIf
				$iz = 0;Ile zmian
				for $ii = 1 to $Twsp[0][1]
					$iz += trick_liczba($Twsp[0][0], $Twsp[0][1], $ii, $Twsp[$ii][0], $Twsp[$ii][1]);Trick, poziom, wsp, liczba, opcja(za ma³o, za du¿o itp.)
				Next
			EndIf
		Next
	EndIf
EndFunc;trick_spr
	
Func trick_read($id);Czyta raport z treningu o podanym id
Dim $Twsp[11][2];[0][0] - Nazwa tricku, [0][1] - Poziom tricku, [1-10][0] - wybrany wsp, [1-10][1] - nie okreœlono(0), za malo(1), za du¿o(2), dobrze(3)
$kod = "GET /poczta_ajax.php?Step=Read&id="&$id&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod);Raport z treningu
$w = StringStripWS($re,5);Usuwa podwójne bia³e znaki
$p = StringInStr($w,'15px;">')+7
$k = StringInStr($w,'</div',0,1,$p)
$w = StringMid($w,$p,$k-$p)

$p = StringInStr($w,'<b>',0,1)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$Twsp[0][0] = $w2;Pe³na nazwa tricku
$p = StringInStr($w,'<b>',0,2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$w2 = StringReplace($w2,".","")
$Twsp[0][1] = $w2;Poziom
$max = $Twsp[0][1]*2
FileWrite("log.txt",$re)
if $max < 1 or $max > 22 Then
	FileWrite("log.txt","Podano z³y lvl"&@crlf)
	Exit
EndIf
for $i = 1 to $max ;Poziom = iloœæ wsp
$p = StringInStr($w,'<b>',0,$i+2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
if StringIsInt($i/2) Then $Twsp[$i/2][0] = $w2;Liczba która by³a podana w tym wsp
if StringIsFloat($i/2) Then
$p = StringInStr($w,'</b>',0,1,$p)+4
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
Switch $w2
Case " dobrany b³êdnie (wybra³e¶ "
	$w2 = 0 
Case " dobrany b³êdnie (ustawi³e¶ za ma³o, wybra³e¶ "
	$w2 = 1
Case " dobrany b³êdnie (ustawi³e¶ za du¿o, wybra³e¶ "
	$w2 = 2
Case " dobrany prawid³owo (wybra³e¶ "
	$w2 = 3
EndSwitch
ConsoleWrite($i/2+0.5&@CRLF)
	$Twsp[$i/2+0.5][1] = $w2
EndIf
	Next	
IniWrite($Ztrick_file,"Przeczytane",$id,"1")
Return $Twsp
EndFunc;trick_read

Func trick_liczba($id, $poziom, $wsp, $liczba, $opcja = 0)
	$trick = $id
	if StringInStr($trick,"Zidan") > 0 Then $trick = "Trick Zidanea";usuwa apostrof z nazwy tricku
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0];$trick musi byæ nazw¹ tricu
	Local $dos = IniRead($Ztrick_file,$trick&";"&$poziom,$wsp,"");dostpne liczby ze wspó³czynnika
	Local $ws = StringSplit($dos,";",2);Zapisuje dostêpne liczby ze wspó³czynnika do tablicy
	Local $ml = _ArrayFindAll($ws,$liczba);Na jakiej pozycji w tablicy jest liczba
	if $ml = -1 or StringIsInt($dos) then return 0;Je¿eli nie ma liczby to zwraca 0 czyli nic nie zmienia
	$ml = $ml[0]
	Switch $opcja
	Case 0;b³êdnie
		_ArrayDelete($ws,$ml);Dostawia wszystkie liczby poza podan¹
	Case 1;Za ma³o, dostawia tylko liczby wiêksze od podanej
		for $i = 0 to $ml
		_ArrayDelete($ws,0)
		Next
	case 2;Za du¿o, dostawia tylko liczby mniejsze od podanej
		for $i = $ml to UBound($ws)-1
			_ArrayDelete($ws,$ml)
		Next
	case 3;Dobrze, dostawia tylko podan¹ liczbe
		for $i = 1 to 10
		Local $mld = _ArrayFindAll($ws,$i)
		if $mld <> -1 and $i <> $liczba Then _ArrayDelete($ws,$mld[0])
		Next
	EndSwitch
	$dos2 = $dos;Wczytane z pliku liczby
	$dos = ""
	for $i = 0 to UBound($ws)-1;Tworzy string wsp;wsp2;...
		$dos &= $ws[$i]&";"
	Next
	$dos = stringleft($dos,stringlen($dos)-1);usuwa ; z koñca stringu
	IniWrite($Ztrick_file,$trick&";"&$poziom,$wsp,$dos);Zapisuje do pliku
	if $dos2 = $dos then return 0
	return 1
EndFunc;trick_liczba

func trick_learn($id);Rozpoczyna naukê podanego tricku
		Local $post = ""
		for $i = 1 to $Ttrick[$id][2];Poziom
			$post &= "wsp_"&$i&"="&trick_wybierz($id,$i)&"&";Ustawia wspó³czynniki
		Next
		Local $wsp = StringReplace($post,"$wsp_","")
		$post &= "Level="&$Ttrick[$id][2]&"&Trick="&$Ttrick[$id][1];Dopisuje dalsz¹ czêœæ post
		FileWrite("logtrick.txt",$post&@crlf)
		$kod = "POST /trening_ajax.php?v=tricki&V=Go HTTP/1.1" & @CRLF & "Host: s5.footballteam.pl" & @CRLF & "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" & @CRLF & "Content-Length: "& StringLen($post) & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF & $post & @CRLF
		$re = hsend($host,$kod);Rozpoczêcie nauki
		if not StringInStr($re,"próbujesz") > 0 Then
			IniWrite($Ztrick_file,"ostatni","czas",TimerInit());Zapisuje do pliku czas od ostatniego tricku
			IniWrite($Ztrick_file,"ostatni","trick",$Ttrick[$id][0]);Zapisuje ostatnio trenowany trick
			IniWrite($Ztrick_file,"ostatni","poziom",$Ttrick[$id][2]);Zapisuje ostatnio trenowany trick
		EndIf
	EndFunc;trick_learn
	
func trick_wybierz($id, $wsp);Wybiera nowy wspó³czynnik
	Local $dos, $ws, $l, $trick
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id][0]
	$id = _ArrayFindAll($Ttrick,$trick)
	$dos = IniRead($Ztrick_file,$trick&";"&$Ttrick[$id[0]][2],$wsp,"")
	$ws = StringSplit($dos,";",2)
	$l = int(UBound($ws)/2-0.5);wybiera œrodkow¹ liczbe
	Return $ws[$l]
EndFunc;trick_wybierz