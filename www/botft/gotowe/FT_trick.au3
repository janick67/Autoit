Dim $Ttrick[25][3] = [["Przewrotka","przewrotka"],["Drybling","drybling"],["Dooko�a �wiata","dookola"],["Krzy�aczek","krzyzaczek"],["Przeplatanka","przeplatanka"],["Crossover","crossover"],["No�yce","nozyce"],["Pi�tka","pietka"],["Rabona","rabona"],["Trick Zidanea","zidanestrick"],["Wolej","wolej"],["Zw�d","zwod"],["Podcinka","podcinka"],["Przerzutka","przerzutka"],["Kiwka","kiwka"],["T�cza","tecza"],["Elastico","elastico"],["Hokus Pokus","hokus"],["X Over","xover"],["Kopni�cie skorpiona","skorpion"],["Air","air"],["Sitdown","sitdown"],["Upper","upper"],["Ground","ground"],["Special","special"]];Dane trick�w 0 - pe�na nazwa, 1 - skr�cona nazwa, 2 - poziom
global $Ztrick_combo = "", $Gtrick, $Gtrick_b, $Ztrick_combo
Func Gtrick()
$GLtrick = GUICtrlCreateLabel("Trick:",5,27,35,17);Label z tytu�em do tricku
$Gtrick = GUICtrlCreateCombo("", 40, 25, 100, 20);Wyb�
$Gtrick_b = GUICtrlCreateButton("Pr�buj nauczy�",150,25,100,30)
EndFunc

func trick_file($Ztrick_file)
	for $i = 0 to 24;Tricki
		IniWrite($Ztrick_file,"Poziom",$Ttrick[$i][0],1)
		for $ii = 1 to 10;Poziomy
			for $iii = 1 to $ii;Wsp�czynniki(ilo�� w zale�no�ci od poziomu)
				$w = "";Zmienna ze wsp�rz�dnymi
				for $iiii = 1 to 10
					$w &= $iiii&";";1;2;3...
				Next
				$w = stringleft($w,stringlen($w)-1);Obcina ostatni znak czyli ;
				IniWrite($Ztrick_file,$Ttrick[$i][0]&";"&$ii,$iii,$w);Zapisuje do pliku
			Next
		Next
	Next
	trick_lvl_down()
	slog("Utworzono nowy plik trick�w "&$Ztrick_file)
	trick_lvl_get()
EndFunc;trick_file

func trick_lvl_down()
	$kod = "GET /trening_ajax.php?v=tricki HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
	$re = hsend($host,$kod);Strona z trickami
	$p = StringInStr($re,'ter">')+5
	$k = StringInStr($re,'</tab',0,1,$p)
	$w = StringMid($re,$p,$k-$p)
	$w = StringStripWS($w,8);Usuni�cie bia�ych znak�w
	for $i = 4 to 76
	$p = StringInStr($w,'</td><td>',0,$i)+9
	$k = StringInStr($w,'</td><td>',0,1,$p)
	$w2 = StringMid($w,$p,$k-$p);Wyci�ga poziomy ze strony
	if StringIsInt(($i-1)/3) then;Co 3
		if $w2 <> "Max" Then;Je�eli uko�czono kt�ry� poziom to zapisuje to do pliku
			trick_lvl(($i-1)/3,$w2)
		Elseif $w2 = "Max" Then;Je�eli maksymalny poziom to zapisuje to do pliku
			trick_lvl(($i-1)/3,11)
		EndIf
		EndIf
	Next
EndFunc

func trick_lvl($id, $poziom = 11);Zapisuje do pliku kt�ry poziom ju� uko�czono
	local $trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0];$trick ma by� nazw� tricku
	for $ii = 1 to $poziom - 1;Usuwa wszystkie poni�ej tego poziomu
		for $iii = 1 to $ii;Wsp�czynniki
			IniWrite($Ztrick_file,$trick&";"&$ii,$iii,"-");Przy zako�czonych daje -
		Next
	Next
	if $poziom = 11 then $poziom = "Max"
	IniWrite($Ztrick_file,"Poziom",$trick,$poziom);Zapisuje poziom
EndFunc;tricku

func trick_lvl_get();Wczytanie poziom�w do tablicy
Local $Ztrick_combol
for $i = 0 to 24;Trick
	$Ttrick[$i][2] = IniRead($Ztrick_file,"Poziom",$Ttrick[$i][0],"1");Czyta z pliku lvl tricku
next

if $Ztrick_combo <> 1 Then;Je�eli jeszcze nie by�o nic przypisane to:
for $i=0 to 24;Tricki
	if $Ttrick[$i][2] <> "Max" Then;Je�eli jeszcze nie uko�czono tricku to dopisuje go do listy
	$Ztrick_combol &= "|"&$Ttrick[$i][0]
	EndIf
Next
$Ztrick_combol = StringTrimLeft($Ztrick_combol,1);Odcina pierwszy znak
GUICtrlSetData($Gtrick, $Ztrick_combol);Ustawia now� liste
$Ztrick_combo = 1
EndIf
EndFunc;trick_lvl_get

func trick_lvl_save();Zapisuje poziomy do pliku
	for $i = 0 to 24;Tricki
		IniWrite($Ztrick_file,"Poziom",$Ttrick[$i][0],$Ttrick[$i][2])
	Next
EndFunc;trick_lvl_save

func trick_spr();Sprawdza czy s� wiadomo�ci z treningu
	Global $Zsesja = idsesji();funkcja uzyskuje id sesji
	loguj($Zemail,$Zpass,$Zserwer)
	trick_lvl_down()
	local $autor = _ArrayFindAll($Tpost,"Informacja","","","","",2);Szuka w�r�d pobranych wiadomo�ci informacji od autora Informacja
	if $autor <> -1 Then;Je�eli co� znalaz�o to:
		for $i = 0 to UBound($autor)-1;Wszystkie znalezione elementy
			if $Tpost[$autor[$i]][3] = "Raport z treningu" and IniRead($Ztrick_file,"Przeczytane",$Tpost[$autor[$i]][0],0) = 0 then;Wiadomo�� o temacie Raport z treningu
				slog("Sprawdzono raporty z trick�w nr "&$i+1)
				$Twsp = trick_read($Tpost[$autor[$i]][0])
				if StringInStr($Twsp[1][0],"ulacje") > 0 Then;Je�eli uko�czono trick
					trick_lvl($Twsp[0][0], $Twsp[0][1]+1);Uko�czono poziom
					slog("Gratulacje nauczy�e� sie tricku "&$Twsp[0][0]&" na poziomie "&$Twsp[0][1])
					ContinueLoop
				EndIf
				$iz = 0;Ile zmian
				for $ii = 1 to $Twsp[0][1]
					$iz += trick_liczba($Twsp[0][0], $Twsp[0][1], $ii, $Twsp[$ii][0], $Twsp[$ii][1]);Trick, poziom, wsp, liczba, opcja(za ma�o, za du�o itp.)
				Next
				if $iz > 0 Then slog("Zapisano "&$iz&" zmian w pliku "&$Ztrick_file&" w tricku "&$Twsp[0][0]);Je�eli co� si� zmieni�o to pisze to w logu
			EndIf
		Next
	Else;Je�eli nie znaleziono wiadomo�ci to pisze w logu
		slog("Nie masz nowych wiadomo�ci z treningu trick�w")
	EndIf
		trick_lvl_save();Zapisuje poziom trick�w do pliku
		trick_lvl_get();Zapisuje poziom trick�w do tablicy
EndFunc;trick_spr
	
Func trick_read($id);Czyta raport z treningu o podanym id
Dim $Twsp[11][2];[0][0] - Nazwa tricku, [0][1] - Poziom tricku, [1-10][0] - wybrany wsp, [1-10][1] - nie okre�lono(0), za malo(1), za du�o(2), dobrze(3)
$kod = "GET /poczta_ajax.php?Step=Read&id="&$id&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod);Raport z treningu
$w = StringStripWS($re,5);Usuwa podw�jne bia�e znaki
$p = StringInStr($w,'15px;">')+7
$k = StringInStr($w,'</div',0,1,$p)
$w = StringMid($w,$p,$k-$p)

$p = StringInStr($w,'<b>',0,1)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$Twsp[0][0] = $w2;Pe�na nazwa tricku
$p = StringInStr($w,'<b>',0,2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$w2 = StringReplace($w2,".","")
$Twsp[0][1] = $w2;Poziom
$max = $Twsp[0][1]*2
FileWrite("log.txt",$re)
if $max < 1 or $max > 22 Then 
	Global $Zsesja = idsesji();funkcja uzyskuje id sesji
	loguj($Zemail,$Zpass,$Zserwer)
	Return 	trick_read($id)
EndIf
for $i = 1 to $max ;Poziom = ilo�� wsp
$p = StringInStr($w,'<b>',0,$i+2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
if StringIsInt($i/2) Then $Twsp[$i/2][0] = $w2;Liczba kt�ra by�a podana w tym wsp
if StringIsFloat($i/2) Then
$p = StringInStr($w,'</b>',0,1,$p)+4
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
Switch $w2
Case " dobrany b��dnie (wybra�e� "
	$w2 = 0 
Case " dobrany b��dnie (ustawi�e� za ma�o, wybra�e� "
	$w2 = 1
Case " dobrany b��dnie (ustawi�e� za du�o, wybra�e� "
	$w2 = 2
Case " dobrany prawid�owo (wybra�e� "
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
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0];$trick musi by� nazw� tricu
	Local $dos = IniRead($Ztrick_file,$trick&";"&$poziom,$wsp,"");dostpne liczby ze wsp�czynnika
	Local $ws = StringSplit($dos,";",2);Zapisuje dost�pne liczby ze wsp�czynnika do tablicy
	Local $ml = _ArrayFindAll($ws,$liczba);Na jakiej pozycji w tablicy jest liczba
	if $ml = -1 or StringIsInt($dos) then return 0;Je�eli nie ma liczby to zwraca 0 czyli nic nie zmienia
	$ml = $ml[0]
	Switch $opcja
	Case 0;b��dnie
		_ArrayDelete($ws,$ml);Dostawia wszystkie liczby poza podan�
	Case 1;Za ma�o, dostawia tylko liczby wi�ksze od podanej
		for $i = 0 to $ml
		_ArrayDelete($ws,0)
		Next
	case 2;Za du�o, dostawia tylko liczby mniejsze od podanej
		for $i = $ml to UBound($ws)-1
			_ArrayDelete($ws,$ml)
		Next
	case 3;Dobrze, dostawia tylko podan� liczbe
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
	$dos = stringleft($dos,stringlen($dos)-1);usuwa ; z ko�ca stringu
	IniWrite($Ztrick_file,$trick&";"&$poziom,$wsp,$dos);Zapisuje do pliku
	if $dos2 = $dos then return 0
	return 1
EndFunc;trick_liczba

func trick_learn($id);Rozpoczyna nauk� podanego tricku
		$Ctrick = 1
		Global $tplik = "trick_"&$Tinfo[0][1]&".ini"
		if not FileExists($Ztrick_file) Then tcfile($Ztrick_file)
		trick_lvl_down()
		trick_lvl_get()
		$kod = "GET /trening_ajax.php?v=tricki HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
		$re = hsend($host,$kod);Odebranie wiadomo�ci o treningu
		Sleep(1000)
		post_get();Pobiera wiadomo�ci
		$kod = "GET /trening_ajax.php?v=tricki&V=StartTrain&Level="&$Ttrick[$id][2]&"&Trick="&$Ttrick[$id][1]&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
		$re = hsend($host,$kod);Odebranie wiadomo�ci o treningu
		trick_spr();Sprawdza raporty z trening�w
		Local $post = ""
		for $i = 1 to $Ttrick[$id][2];Poziom
			$post &= "wsp_"&$i&"="&trick_wybierz($id,$i)&"&";Ustawia wsp�czynniki
		Next
		Local $wsp = StringReplace($post,"$wsp_","")
		$post &= "Level="&$Ttrick[$id][2]&"&Trick="&$Ttrick[$id][1];Dopisuje dalsz� cz�� post
		$kod = "POST /trening_ajax.php?v=tricki&V=Go HTTP/1.1" & @CRLF & "Host: s5.footballteam.pl" & @CRLF & "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" & @CRLF & "Content-Length: "& StringLen($post) & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF & $post & @CRLF
		$re = hsend($host,$kod);Rozpocz�cie nauki
		if StringInStr($re,"pr�bujesz") > 0 Then
			slog("Ju� trenujesz jaki� trick")
		Else
			slog("Rozpocz�to trening tricku "&$Ttrick[$id][0]&@CRLF&$wsp)
			IniWrite($Ztrick_file,"ostatni","czas",TimerInit());Zapisuje do pliku czas od ostatniego tricku
			IniWrite($Ztrick_file,"ostatni","trick",$Ttrick[$id][0]);Zapisuje ostatnio trenowany trick
			IniWrite($Ztrick_file,"ostatni","poziom",$Ttrick[$id][2]);Zapisuje ostatnio trenowany trick
		EndIf
	EndFunc;trick_learn
	
func trick_wybierz($id, $wsp);Wybiera nowy wsp�czynnik
	Local $dos, $ws, $l, $trick
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id][0]
	$id = _ArrayFindAll($Ttrick,$trick)
	$dos = IniRead($Ztrick_file,$trick&";"&$Ttrick[$id[0]][2],$wsp,"")
	$ws = StringSplit($dos,";",2)
	$l = int(UBound($ws)/2-0.5);wybiera �rodkow� liczbe
	Return $ws[$l]
EndFunc;trick_wybierz