Dim $Ttrick[25][2] = [["Przewrotka","przewrotka"],["Drybling","drybling"],["Dooko³a œwiata","dookola"],["Krzy¿aczek","krzyzaczek"],["Przeplatanka","przeplatanka"],["Crossover","crossover"],["No¿yce","nozyce"],["Piêtka","pietka"],["Rabona","rabona"],["Trick Zidanea","zidanestrick"],["Wolej","wolej"],["Zwód","zwod"],["Podcinka","podcinka"],["Przerzutka","przerzutka"],["Kiwka","kiwka"],["Têcza","tecza"],["Elastico","elastico"],["Hokus Pokus","hokus"],["X Over","xover"],["Kopniêcie skorpiona","skorpion"],["Air","air"],["Sitdown","sitdown"],["Upper","upper"],["Ground","ground"],["Special","special"]];Dane tricków 0 - pe³na nazwa, 1 - skrócona nazwa, 2 - poziom

Func Gtrick()
$GLtrick = GUICtrlCreateLabel("Trick:",5,27,35,17);Label z tytu³em do tricku
$Gtrick = GUICtrlCreateCombo("", 40, 25, 100, 20);Wybó
$Gtrick_b = GUICtrlCreateButton("Próbuj nauczyæ",150,25,100,30)
EndFunc

func trick_file($Ztrick_file)
	for $i = 1 to 25;Tricki
		IniWrite($Ztrick_file,"Poziom",$Ttrick[$i-1][0],1)
		for $ii = 1 to 10;Poziomy
			for $iii = 1 to $ii;Wspó³czynniki(iloœæ w zale¿noœci od poziomu)
				$w = "";Zmienna ze wspó³rzêdnymi
				for $iiii = 1 to 10
					$w &= $iiii&";";1;2;3...
				Next
				$w = stringleft($w,stringlen($w)-1);Obcina ostatni znak czyli ;
				IniWrite($Ztrick_file,$Ttrick[$i-1][0]&";"&$ii,$iii,$w);Zapisuje do pliku
			Next
		Next
	Next
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
			tricku(($i-1)/3,$w2)
		Elseif $w2 = "Max" Then;Je¿eli maksymalny poziom to zapisuje to do pliku
			tricku(($i-1)/3,11)
		EndIf
		EndIf
	Next
	slog("Utworzono nowy plik tricków "&$Ztrick_file)
EndFunc;trick_file

func tricku($id, $poziom = 11);Zapisuje do pliku który poziom ju¿ ukoñczono
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0];$trick ma byæ nazw¹ tricku
	for $ii = 1 to $poziom - 1;Usuwa wszystkie poni¿ej tego poziomu
		for $iii = 1 to $ii;Wspó³czynniki
			IniWrite($Ztrick_file,$trick&";"&$ii,$iii,"-");Przy zakoñczonych daje -
		Next
	Next
	if $poziom = 11 then $poziom = "Max"
	IniWrite($Ztrick_file,"Poziom",$trick,$poziom)
EndFunc;tricku