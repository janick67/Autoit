dim $Tgpost[8][4];Wiadomo�ci 1 - data, 2 - autor, 3 - temat
dim $Tpost[13][5];Wiadomo�ci 0 - id, 1 - data, 2 - autor, 3 - temat, 4 - przeczytane(0) lub nie(1)
func Gpost();Tworzy GUI
	;Wiersz z tytu�ami kolumn
	$Tgpost[0][1] = GUICtrlCreateLabel("Data",45,25,50,17)
	$Tgpost[0][2] = GUICtrlCreateLabel("Autor",185,25,50,17)
	$Tgpost[0][3] = GUICtrlCreateLabel("Temat",305,25,50,17)
	;Ops�uga stron
	$Tgpost[1][1] = GUICtrlCreateButton("<-Poprzednia",120,150,80,25)
	$Tgpost[1][2] = GUICtrlCreateLabel("1",211,159,20,17)
	$Tgpost[1][3] = GUICtrlCreateButton("Nast�pna->",230,150,80,25)
	local $t = 43;Wysoko�� pierwszej wiadomo�ci
	for $ii = 2 to 7;Wy�wietla 6 wiadomosci na stronie
	$Tgpost[$ii][1] = GUICtrlCreateLabel("",45,$t,100,15);Data
	GUICtrlSetState(-1,$GUI_HIDE)
	$Tgpost[$ii][2] = GUICtrlCreateLabel("",185,$t,100,15);Autor
	GUICtrlSetState(-1,$GUI_HIDE)
	$Tgpost[$ii][3] = GUICtrlCreateLabel("",305,$t,100,15);Temat
	GUICtrlSetState(-1,$GUI_HIDE)
	$t+=18;Jaki ma by� odst�p mi�dzy wiadomo�ciami
	Next
EndFunc;Gpost

func post_get()
	$kod = "GET /poczta_ajax.php?Step=Recive HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
	$re = hsend($host,$kod);Strona z wiadomo�ciami
	$re = StringStripWS($re,5);Usuwa podw�jne bia�e znaki
	$re = StringReplace($re,@cr,"");Usuwa znaki nowej lini
	for $i=1 to 12;Pobiera 10 wiadomo�ci
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
	if StringInStr($temat,"<b>") Then;Je�eli temat nie by� jeszcze przeczytany to:
		$post[$i][4] = 1;Zapisz do tablicy �e nie by�
		$p = StringInStr($temat,'<b>',0,1)+3
		$k = StringInStr($temat,'<',0,1,$p)
		$temat = StringMid($temat,$p,$k-$p)
		$Tpost[$i][3] = $temat;Zapisuje temat bez znacznik�w <b>
	Else
		$Tpost[$i][4] = 0;Wiadomo�� by�a ju� przeczytana
	EndIf
	if StringInStr($Tpost[$i][0],".")>0 Then;Je�eli nie znaleziona id to skasuj info o ostatniej zapisanej wiadomo�ci
		$Tpost[0][0] = $i-1;Ile jest wiadomo�ci
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
	slog("Pobrano "&$i-1&" wiadomo�ci")
	post_show(1)
EndFunc;post_get

Func post_show($strona);Pokazuje podan� strone z wiadomo�ciami
	GUICtrlSetData($Tgpost[1][2],$strona);Ustawia nr strony
	$i = $strona * 6 - 5;nr 1 wiadomo�ci z tej strony
	for $ii = 2 to 7;Wy�wietla 6 wiadomo�ci z podanej strony
		if $i <= $Tpost[0][0] Then;Je�eli jest jeszcze wiadomo�� to j� wy�wietl
		GUICtrlSetData($Tgpost[$ii][1],$Tpost[$i][1]);Data
		GUICtrlSetData($Tgpost[$ii][2],$Tpost[$i][2]);Autor
		GUICtrlSetData($Tgpost[$ii][3],$Tpost[$i][3]);Tytu�
		$i+=1
		EndIf
	Next
	post_gui_delete($i - $strona * 6 + 5);Usuwa niepotrzebne wiersze wiadomo�ci (ile wierszy wiadomo�ci ma by� wy�wietlonych)
EndFunc;post_gui_show

Func post_gui_delete($ile);Usuwa niepotrzebne wiersze wiadomo�ci (ile wierszy wiadomo�ci ma by� wy�wietlonych)
	for $i = 2 to 7;Na stronie jest 6 wiadomo�ci
		If $i <= $ile+1 Then;Je�eli ten wiersz ma by� widoczny to go poka�
;~ 			GUICtrlSetState($Gpost[$i][0],$GUI_SHOW);Checkbox
			GUICtrlSetState($Tgpost[$i][1],$GUI_SHOW);Data
			GUICtrlSetState($Tgpost[$i][2],$GUI_SHOW);Autor
			GUICtrlSetState($Tgpost[$i][3],$GUI_SHOW);Tytu�
		Else;Je�li wiadomo�� ma nie by� wy�wietlona to j� ukryj
;~ 			GUICtrlSetState($Gpost[$i][0],$GUI_HIDE);Checkbox
			GUICtrlSetState($Tgpost[$i][1],$GUI_HIDE);Data
			GUICtrlSetState($Tgpost[$i][2],$GUI_HIDE);Autor
			GUICtrlSetState($Tgpost[$i][3],$GUI_HIDE);Tytu�
		EndIf
	Next
EndFunc;post_gui_delete

Func post_next();Nast�pna strona
	Local $maxs = Floor($Tpost[0][0]/6);Ile maksymalnie stron mo�na utworzy�
	if mod($Tpost[0][0],6) > 0 then $maxs+=1;Je�eli na ostatniej stronie jest wi�cej ni� 0 wiadomo�ci to dodaj 1
	if $maxs >= GUICtrlRead($Tgpost[1][2])+1 Then;Poka� strone je�eli jej nr nie jest wi�kszy ni� maksymalny
		GUICtrlSetData($Tgpost[1][2],GUICtrlRead($Tgpost[1][2])+1);Zmienia nr strony
		post_show(GUICtrlRead($Tgpost[1][2]));Wy�wietla strone
	EndIf
EndFunc;post_next

Func post_prev();Poprzednia strona
	if GUICtrlRead($Tgpost[1][2])-1 > 0 Then;Poka� strone je�eli jej nr nie jest mniejszy od 1
		GUICtrlSetData($Tgpost[1][2],GUICtrlRead($Tgpost[1][2])-1);Zmienia nr strony
		post_show(GUICtrlRead($Tgpost[1][2]));Wy�wietla strone
	EndIf	
EndFunc;post_prev