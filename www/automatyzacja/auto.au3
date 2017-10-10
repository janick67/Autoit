#include <Word.au3> ;biblioteka odpowiadaj�ca za dokumenty (funkcje doctotxt)
#include <FTPEx.au3> ;biblioteka odpowiadaj�ca za ftp (funkcje upload, download, ftp)
#include <ButtonConstants.au3> ;biblioteka odpowiadaj�ca za GUI
#include <EditConstants.au3> ;biblioteka odpowiadaj�ca za GUI
#include <GUIConstantsEx.au3> ;biblioteka odpowiadaj�ca za GUI
#include <StaticConstants.au3> ;biblioteka odpowiadaj�ca za GUI
#include <WindowsConstants.au3> ;biblioteka odpowiadaj�ca za GUI

FileInstall("config.ini","config.ini")
config()
#Region ### START Koda GUI section ### Form=
$Gform = GUICreate($Gfn&" "&$ver, $Gf1, $Gf2, $Gf3, $Gf4) ;G��wne okno
$Gog = GUICtrlCreateInput($Gogn, $Gog1, $Gog2, $Gog3, $Gog4) ;Input z linkiem do og�osze� uzupe�niany przez funkcje dia
$Gdialog = GUICtrlCreateButton($Gdbn, $Gdb1, $Gdb2, $Gdb3, $Gdb4, $WS_GROUP) ;Przycisk Przegl�daj(funkcja dia)
$Gpogpn = GUICtrlCreateInput($Gppn, $Gpp1, $Gpp2, $Gpp3, $Gpp4) ;Input z pe�n� nazw� niedzieli wpisywany w og�oszenia.html np. IV Niedziela Postu
$Gpog = GUICtrlCreateInput($Gpsn, $Gps1, $Gps2, $Gps3, $Gps4) ;Input ze skr�tem u�ywanym do nazwania pliku z og�oszeniami np. IVp
$Gyear = GUICtrlCreateInput(@YEAR, $Gy1, $Gy2, $Gy3, $Gy4) ;Input z nr roku 
$Gmon = GUICtrlCreateInput(@MON, $Gm1, $Gm2, $Gm3, $Gm4) ;Input z nr miesi�ca
$Gday = GUICtrlCreateInput(@MDAY, $Gd1, $Gd2, $Gd3, $Gd4) ;Input z nr dnia
$Gfunkcje = GUICtrlCreateGroup($Ggn, $Gg1, $Gg2, $Gg3, $Gg4) ;Grupa z checkboxami
$Gi = GUICtrlCreateCheckbox($Gin, $Gi1, $Gi2, $Gi3, $Gi4) ;Checkbox strona g��wna (funkcja all)
GUICtrlSetState(-1, $GUI_CHECKED) ;zaznaczenie poprzedniego checkboxa 
$Go = GUICtrlCreateCheckbox($Gon, $Go1, $Go2, $Go3, $Go4) ;Checkbox og�oszenia (funkcja all)
GUICtrlSetState(-1, $GUI_CHECKED) ;zaznaczenie poprzedniego checkboxa 
$Gpo = GUICtrlCreateCheckbox($Gpon, $Gpo1, $Gpo2, $Gpo3, $Gpo4) ;Checkbox plik z og�oszeniami (funkcja all)
GUICtrlSetState(-1, $GUI_CHECKED) ;zaznaczenie poprzedniego checkboxa 
$Gsftp = GUICtrlCreateCheckbox($Gftpn, $Gftp1, $Gftp2, $Gftp3, $Gftp4) ;Checkbox zapis czy ftp (funkcja upload)
$Gspr = GUICtrlCreateCheckbox($Gsprn, $Gspr1, $Gspr2, $Gspr3, $Gspr4) ;Checkbox kontrola (funkcja spr)
GUICtrlSetState($Gspr,$GUI_DISABLE) ;zablokowanie checkboxa zostanie odblokowany po wybraniu opcji Ftp
$Gupload = GUICtrlCreateButton($Gup2n, $Gup21, $Gup22, $Gup23, $Gup24, $WS_GROUP) ;Przycisk Zapisz lub wy�lij (funkcja all)
Dim $Form1_AccelTable[1][2] = [["{Enter}", $Gupload]] ;Przypis klawisza ENTER do przycisku zatwierdzaj�cego
GUISetAccelerators($Form1_AccelTable) ;ustawienia GUI z Koda
GUISetState(@SW_SHOW) ;ustawienia GUI z Koda
#EndRegion ### END Koda GUI section ###
$ftp=0

FileWrite($flog,@CRLF&"["&@YEAR&" "&@MON&" "&@MDAY&"]"&@CRLF) ;Log: Pocz�tek		
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	Case $GUI_EVENT_CLOSE
		if $ftp=1 Then ;if po��czono z serwerem i klikni�to w krzy�yk to:
		FileDelete($geti) ;usuwa pobrany plik index z dysku
		FileDelete($geto) ;usuwa pobrany plik ogloszenia z dysku
		_FTP_Close($FTP_Open) ;roz��cza z serwerem
		If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Roz��czono z serwerem ftp" & @CRLF) ;Log: Disconnect ftp
		EndIf 
		FileWrite($flog,"KONIEC"&@CRLF) ;Log: Koniec
			Exit 
		Case $Gupload ;klawisz zatwierdzaj�cy
			update()
;~ 			ftp() ;funkcja ��cz�ca z serwerem ftp
;~ 			$logloszenia=$pom&GUICtrlRead($Gpog) ;adres pod kt�rym ma zostac umieszczony plik z og�oszeniami
;~ 			$w=0
;~ 			if guictrlread($Gi)=1 then $w+=1 ;if index zaznaczony to dodaje 1
;~ 			if guictrlread($Go)=1 then $w+=2 ;if og�oszenia zaznaczony to dodaje 2
;~ 			if guictrlread($Gpo)=1 then $w+=4 ;if plik og�oszenia zaznaczony to dodaje 4
;~ 			all($w) ;funkcja wykonuj�ca g��ne zadanie na podstawie zaznaczonych checkbox�w
;~ 		Case $Gdialog ;przycisk przegl�daj
;~ 			dia() ;funkcja otwieraj�ca okno dialogowe i ustawiaj�ca warto�ci inputom
;~ 		Case $Gsftp ;chckbox ftp
;~ 			if GUICtrlRead($Gsftp)=4 then ;if nie aktywny to:
;~ 			GUICtrlSetState($Gspr,$GUI_DISABLE) ;dezaktywowanie chckboxa Kontrola
;~ 			GUICtrlSetState($Gspr,$GUI_UNCHECKED) ;odznaczenie chckboxa Kontrola
;~ 			GUICtrlSetData($Gupload,$Gup2n) ;zmiana tre�ci na przycisku zatwierdzaj�cym na Zapisz
;~ 		Else ;w przeciwnym razie:
;~ 			GUICtrlSetState($Gspr,$GUI_ENABLE) ;aktywowanie chckboxa Kontrola
;~ 			GUICtrlSetState($Gspr,$GUI_CHECKED) ;zaznaczenie chckboxa Kontrola
;~ 			GUICtrlSetData($Gupload,$Gup1n) ;zmiana tre�ci na przycisku zatwierdzaj�cym na Wy�lij
;~ 		EndIf
EndSwitch
WEnd


Func dia() ;funkcja otwiera okno dialogowe i ustawia inputy tre�ciami pobranymi z pliku og�osze�
	$dia=FileOpenDialog($dian,$dias,"pliki Microsoft Word(*.doc)",3) ;otwarcie okna dialogowego maj�cego na celu wybranie pliku z og�oszeniami
				FileChangeDir(@ScriptDir) ;ustawienie domy�lnej �cie�ki na �cie�ke skryptu
				if StringLen($dia)>5  then ;zabezpieczenie przed pustym odno�nikiem
			GUICtrlSetData($Gog,$dia) ;ustawienie warto�ci zwr�conej przez dialog do inutu z linkiem do dokumentu zog�oszeniami
			$w=StringInStr($dia,"\",1,-1) ;opracowanie pe�nej nazwy niedzieli
			$w=StringTrimLeft($dia,$w) ;-II-
			$w=StringTrimRight($w,4) ;-II-
			GUICtrlSetData($Gpogpn,$w) ;ustawienie pe�nej nazwy niedzieli
			$i=StringInStr($w,"niedziela") ;przygotowanie do nast�pnych operacji
			if $i>0 Then ;if znajdzie s�owo niedziela we wcze�niej opracowanym stringu
			$cz1=StringLeft($w,$i-1) ;usuni�cie s�owa niedziela ze stringu
			$cz2=StringTrimLeft($w,$i+9) ;-II-
			$w=$cz1&$cz2 ;-II-
			EndIf
			$i=StringInStr($w," ") ;przygotowanie skr�conej nazwy, usuni�cie spacji z stringu
			$1=StringLeft($w,$i-1) ;-II-
			$2=StringTrimLeft($w,$i) ;-II-
			$2=StringLeft($2,1) ;-II-
			if StringIsUpper($2) then $2=StringLower($2) ;-II- zmaiana wielko�ci liter na ma�e
			If $2="z" then $2="" ;;-II- usuni�cie litery z if niedziela zwyk�a
			GUICtrlSetData($Gpog,"ogloszenia"&$1&$2) ;ustawienie skr�conej nazwy
			EndIf
	EndFunc ;koniec funkcji dia

func all($r) ;g��wna funkcja kt�ra dostaje wykonana po klikni�ciu w przycisk potwierdzaj�cy argumentem jest suma kontrolna checkbox�w
	Global $data=GUICtrlRead($Gyear)&" "&GUICtrlRead($Gmon)&" "&GUICtrlRead($Gday) ;zapisanie daty do zmiennej
	$sftp=GUICtrlRead($Gsftp) ;zczytanie warto�ci z checkboxa ftp
	Switch $r
	Case 1+2+4 ;wszystkie 3 chckboxy zaznaczone
		download(1) ;pobieranie 1
		download(2) ;pobieranie 2
		download(3) ;pobieranie 3
		$rGog=GUICtrlRead($Gog) ;czytanie tekstu z elementu gui do zmiennej, input z linkiem do og�osze�
		$pogpn=GUICtrlRead($Gpogpn) ;-II- input z pe�n� nazw�
		$pog=GUICtrlRead($Gpog) ;-II- input z skr�con� nazw�
		$rgeti=FileRead($geti) ;czytanie tekstu z pliku index do zmiennej
		$rgeto=FileRead($geto) ;czytanie tekstu z pliku og�oszenia do zmiennej
		$rgetpo=FileRead($getpo) ;czytanie tekstu z pliku cpog do zmiennej
		$dtt=doctotxt($rGog) ;wczytanie tekstu z dokumentu z og�oszeniami do zmiennej aby nie otwierac dwa razy worda
		$goi=kodowanie(txtinhtml(pogloszen($dtt,1),clerindex($rgeti))) ;utworzenie pliku strony index
		$goo=txtinhtml(pog($pog,$pogpn,$data),clerogloszenia($rgeto)) ;utworzenie pliku strony og�oszenia
		$gopo=kodowanie(txtinhtml(pogloszen($dtt,3),clerindex($rgetpo))) ;utworzenie pliku strony plik z og�oszeniami
		FileDelete($geti) ;usuni�cie pliku index
		FileDelete($geto) ;usuni�cie pliku og�oszenia
		FileDelete($getpo) ;usuni�cie pliku plik og�oszenia
		if $sftp = 1 Then ;if wysy�a na ftp to
		FileDelete($ti) ;czyszczenie miejsca
		FileDelete($to) ;-II-
		FileDelete($tpo) ;-II-
		FileWrite($ti,$goi) ;zapisanie pliku tymczasowego
		FileWrite($to,$goo) ;-II-
		FileWrite($tpo,$gopo)  ;-II-
		upload(1) ;wysy�anie 1
		upload(2) ;wysy�anie 2
		upload(3) ;wysy�anie 3
		FileDelete($ti) ;usuni�cie pliku tymczasowego 
		FileDelete($to) ;-II-
		FileDelete($tpo) ;-II-
	Else ;if nie wysy�a na ftp to:
		$sfi=FileSaveDialog("Save as","","html(i*.html)",2,"index.html") ;dialog z wybraniem miejsca zapisu index
		$sfo=FileSaveDialog("Save as","","html(o*.html)",2,"ogloszenia.html") ;dialog z wybraniem miejsca zapisu og�oszenia
		$sfpo=FileSaveDialog("Save as","","html(*.html)",2,$pog&".html") ;dialog z wybraniem miejsca zapisu pliku z og�oszeniami
		FileChangeDir(@ScriptDir) ;zmiana domy�lnej �cie�ki na �cie�ke skryptu
		FileDelete($sfi) ;czyszczenie miejsca
		FileDelete($sfo) ;-II-
		FileDelete($sfpo) ;-II-
		FileWrite($sfi,$goi) ;zapisanie stworzonego pliku
		FileWrite($sfo,$goo) ;-II-
		FileWrite($sfpo,$gopo) ;-II-
	EndIf
	if GUICtrlRead($Gspr)=1 then ;if zaznaczona opcja Kontrola to;
		spr(1) ;wykonuje funkcje sprawdzaj�c�
		spr(2) ;-II-
		spr(3) ;-II-
		EndIf
	Case 1 ;tylko 1 chckbox index (wszystkie funkcje opisane wy�ej)
		download(1)
		$rGog=GUICtrlRead($Gog)
		$rgeti=FileRead($geti)
$goi=kodowanie(txtinhtml(pogloszen(doctotxt($rGog),1),clerindex($rgeti)))
FileDelete($geti)
if $sftp = 1 Then
FileDelete($ti)
FileWrite($ti,$goi)
upload(1)
FileDelete($ti)
Else
$sfi=FileSaveDialog("Save as","","html(i*.html)",2,"index.html")
FileChangeDir(@ScriptDir)
FileDelete($sfi)
FileWrite($sfi,$goi)
FileDelete($geti)
EndIf
if GUICtrlRead($Gspr)=1 then spr(1)
Case 1+2 ;1 i 2 checkbox index i og�oszenia (wszystkie funkcje opisane wy�ej)
		download(1)
		download(2)
		$rGog=GUICtrlRead($Gog)
		$rgeti=FileRead($geti)
		$pog=GUICtrlRead($Gpog)
		$pogpn=GUICtrlRead($Gpogpn)
		$rgeto=FileRead($geto)
		$dtt=doctotxt($rGog)
		$goi=kodowanie(txtinhtml(pogloszen($dtt,1),clerindex($rgeti)))
		$goo=txtinhtml(pog($pog,$pogpn,$data),clerogloszenia($rgeto))		
		FileDelete($geti)
		FileDelete($geto)
		if $sftp = 1 Then
		FileDelete($ti)
		FileDelete($to)
		FileWrite($ti,$goi)
		FileWrite($to,$goo)
		upload(1)
		upload(2)
		FileDelete($ti)
		FileDelete($to)
		Else
		$sfi=FileSaveDialog("Save as","","html(i*.html)",2,"index.html")
		$sfo=FileSaveDialog("Save as","","html(o*.html)",2,"ogloszenia.html")
		FileChangeDir(@ScriptDir)
		FileDelete($sfi)
		FileDelete($sfo)
		FileWrite($sfi,$goi)
		FileWrite($sfo,$goo)
	EndIf
	if GUICtrlRead($Gspr)=1 then
		spr(1)
		spr(2)
		EndIf
	Case 1+4 ;1 i 4 checkbox index i plik z og�oszeniami (wszystkie funkcje opisane wy�ej)
		download(1)
		download(3)
		$rGog=GUICtrlRead($Gog)
		$rgeti=FileRead($geti)
		$pog=GUICtrlRead($Gpog)
		$pogpn=GUICtrlRead($Gpogpn)
		$rgetpo=FileRead($getpo)
		$dtt=doctotxt($rGog)
		$goi=kodowanie(txtinhtml(pogloszen($dtt,1),clerindex($rgeti)))	
		$gopo=kodowanie(txtinhtml(pogloszen($dtt,2),clerindex($rgetpo)))
		FileDelete($geti)
		FileDelete($getpo)
		if $sftp = 1 Then
		FileDelete($ti)
		FileDelete($tpo)
		FileWrite($ti,$goi)
		FileWrite($tpo,$gopo)
		upload(1)
		upload(3)
		FileDelete($ti)
		FileDelete($tpo)
		Else
		$sfi=FileSaveDialog("Save as","","html(i*.html)",2,"index.html")
		$sfpo=FileSaveDialog("Save as","","html(*.html)",2,$pog&".html")
		FileChangeDir(@ScriptDir)
		FileDelete($sfi)
		FileDelete($sfpo)
		FileWrite($sfi,$goi)
		FileWrite($sfpo,$gopo)
	EndIf
	if GUICtrlRead($Gspr)=1 then
		spr(1)
		spr(3)
		EndIf
	Case 2 ;tylko 2 checkbox og�oszenia (wszystkie funkcje opisane wy�ej)
	download(2)
	$pog=GUICtrlRead($Gpog)
	$pogpn=GUICtrlRead($Gpogpn)
	$rgeto=FileRead($geto)
$goo=txtinhtml(pog($pog,$pogpn,$data),clerogloszenia($rgeto))
FileDelete($geto)
if $sftp = 1 Then
FileDelete($to)
FileWrite($to,$goo)
upload(2)  
FileDelete($geto)
FileDelete($to)
Else
$sfo=FileSaveDialog("Save as","","html(o*.html)",2,"ogloszenia.html")
FileChangeDir(@ScriptDir)
FileDelete($sfo)
FileWrite($sfo,$goo)
EndIf
if GUICtrlRead($Gspr)=1 then spr(2)
	case 2+4 ;2 i 3 checkbox og�oszenia i plik z og�oszeniami
		download(2)
		download(3)
		$rGog=GUICtrlRead($Gog)
		$pog=GUICtrlRead($Gpog)
		$pogpn=GUICtrlRead($Gpogpn)
		$rgetpo=FileRead($getpo)
		$rgeto=FileRead($geto)
		$rcpog=FileRead($getpo)
		$dtt=doctotxt($rGog)
		$gopo=kodowanie(txtinhtml(pogloszen($dtt,3),clerindex($rgetpo)))
		$goo=txtinhtml(pog($pog,$pogpn,$data),clerogloszenia($rgeto))
		FileDelete($geto)
		FileDelete($getpo)
		if $sftp = 1 Then
		FileDelete($to)
		FileDelete($tpo)
		FileWrite($to,$goo)
		FileWrite($tpo,$gopo)
		upload(2)
		upload(3)
		FileDelete($to)
		FileDelete($tpo)
	Else
		$sfo=FileSaveDialog("Save as","","html(o*.html)",2,"ogloszenia.html")
		$sfpo=FileSaveDialog("Save as","","html(*.html)",2,$pog&".html")
		FileChangeDir(@ScriptDir)
		FileDelete($sfo)
		FileDelete($sfpo)
		FileWrite($sfo,$goo)
		FileWrite($sfpo,$gopo)
	EndIf
	if GUICtrlRead($Gspr)=1 then
		spr(2)
		spr(3)
		EndIf
	Case 4 ;tylko 4 checkbox plik z og�oszeniami (wszystkie funkcje opisane wy�ej)
		download(3)
		$rGog=GUICtrlRead($Gog)
		$rgetpo=FileRead($getpo)
		$rcpog=FileRead($getpo)
		$pog=GUICtrlRead($Gpog)
		$pogpn=GUICtrlRead($Gpogpn)
$gopo=kodowanie(txtinhtml(pogloszen(doctotxt($rGog),3),clerindex($rgetpo)))
FileDelete($getpo)
if $sftp = 1 Then
FileDelete($tpo)
FileWrite($tpo,$gopo)
upload(3)
FileDelete($tpo)
Else
$sfpo=FileSaveDialog("Save as","","html(*.html)",2,$pog&".html")
FileChangeDir(@ScriptDir)
FileDelete($sfpo)
FileWrite($sfpo,$gopo)
EndIf
if GUICtrlRead($Gspr)=1 then spr(3)
	EndSwitch
	EndFunc ;koniec funkcji all


Func pog($pog,$pogpn,$pogda) ;funkcja przygotowywuj�ca nowy h1 do pliku og�oszenia argumenty to 1-skr�cona nazwa, 2-pe�na nazwa, 3-data
$cs=$pog1&$pog&$pog2&$pogpn&$pog3&$pog&$pog4&$pogda&$pog5 ;wkleja zczytane dane pomi�dzy sta�e dane
Return $cs ;zwraca gotow� cz�� kodu html
EndFunc ;koniec funkcji pog

func clerogloszenia($plik) ;usuwa z pliku og�oszenia (podanego w argume�cie) najstarszy wpis (do og�oszenia)
$p=StringInStr($plik,$co1,1,7) ;szuka 7 z rz�du wskazanego elementu ko�cz�cego najstarszy wpis
$k=StringInStr($plik,"</h1>",1,2,$p) ;szuka 2 z rz�du czyli ostatniego znacznika w wpisie
$tp=StringLeft($plik,$p+$cod1) ;zapisuje do zmiennej ca�y kod przed pocz�tkiem najstarszego wpisu
$tk=StringTrimLeft($plik,$k+$cod2) ;zapisuje do zmiennej ca�y kod od ko�ca wpisu do ko�ca kodu
$ck=$tp&$tk ;��czy wszystko w ca�o�� czyli bez najstarszego wpisu
return $ck ;zwraca string z kodem og�osze� z usuni�tym najstarszym wpisem
EndFunc ;koniec funkcji clerogloszenia

func clerindex($plik) ;funkcja czyszcz�ca plik index (podanego w argume�cie) z tre�ci (do index i do pliku z og�oszeniami),(dzia�anie podobne do opisanej wy�ej)
$p=StringInStr($plik,$ci)
$k=StringInStr($plik,"</div>",1,1,$p)
$tp=StringLeft($plik,$p+$cid1)
$tk=StringTrimLeft($plik,$k+$cid2)
$ck=$tp&$tk
return $ck
EndFunc ;koniec funkcji clerindex

func txtinhtml($txt,$plik) ;funkcja wkleja tekst podany w argumencie do stringu podanego jako 2 argument
$z=StringReplace($plik,$tih,$tih&@CRLF&$txt) ;zamiana pewnej cz�ci tekstu na podany tekst
return($z) ;zwr�cenie ca�o�ci kodu
EndFunc ;koniec funkcji txtinhtml

Func doctotxt($nazwa) ;funkcja przekszta�caj�ca dokument word w tekst
	$cg=ClipGet() ;zapisanie do zmiennej warto�ci schowka
$app = _WordCreate($nazwa) ;odtworzenie dokumentu
WinActivate(StringTrimLeft($nazwa,StringInStr($nazwa,"\",1,-1))) ;aktywacja okna z dokumentem
send("{ctrldown}ac{ctrlup}") ;skopiowanie ca�ej zawarto�ci okna do schowka
_WordQuit($app) ;zamkni�cie okna z dokumentem
$ret=ClipGet() ;zapisanie skopiowanej tre�ci do zmiennej
ClipPut($cg) ;przywr�cenie stanu schowka z przed operacji
return $ret ;zwr�cenie skopiowanej tre�ci
EndFunc ;koniec funkcji doctotxt

Func pogloszen($s,$r) ;funkcja przygotowuj�ca string z og�oszeniami (do index i do pliku z og�oszeniami)
$s=StringReplace($s,@CRLF,"<br>") ;zamienia entery z tekstu podanego w argume�cie na <br> czyli odpowiedniki z htmla
$s=StringReplace($s,"	","&nbsp;&nbsp;&nbsp;&nbsp;") ;zamienia tab na cztery spacjie
$center=StringInStr($s,"<br>",1,1,StringInStr($s,"<br>")+1) ;podobnie jak przy clerogloszenia
$cz1=StringLeft($s,$center-1)
$cz2=StringTrimLeft($s,$center+3)
if $r=1 Then 
$cs=$po11&$data&$po12&$cz1&$po13&$cz2&$po14 ;index
Else
$cs=$po21&$data&$po22&$cz1&$po23&$cz2&$po24 ;plik z og�oszeniami
EndIf
Return $cs ;zwraca przygotowan� tre�� og�osze�
EndFunc ;koniec funkcji pogloszen

func kodowanie($s) ;funkcja zmieniaj�ca polskie znaki w stringu na ich odpowiedniki czytane przez przegl�darki 
	for $i = 1 to IniRead($fkodowanie,"Polskie",0,"") ;powtarza p�tla x razy x jest zapisany w pliku z kodowaniem
		$s=StringReplace($s,IniRead($fkodowanie,"Polskie",$i,""),IniRead($fkodowanie,"Odmiana",$i,""),0,1) ;zamienia ka�dy znaleziony znak z tych zapisanych w pliku .ini na jego odpowiednik
		Next
	Return $s ;zwraca zakodowany tekst
	EndFunc ;koniec funkcji kodowanie
 
func spr($r) ;funkcja wykonuje sekwencje sprawdzenia wygl�du utworzonej strony
	Switch $r
	Case 1
		$1="index" ;orgina� index
		$2="indext" ;tymczasowy index
	Case 2
		$1="ogloszenia" ;orgina� og�oszenia
		$2="ogloszeniat" ;tymczasowy og�oszenia
	case 3
		$1=$logloszenia ;orgina� plik z og�oszeniami
		$2=$logloszenia&"t" ;tymczasowy plik z og�oszeniami
	EndSwitch
ShellExecute($link&$2&".html") ;otwarcie strony w przegl�darce
Sleep(2000) ;czekanie na za�adowanie strony
Send("{F5}") ;od�wie�enie
Sleep(4000) ;czas na przegl�dni�cie strony
if MsgBox(4,$mt,$mp)=6 Then ;wy�wietla komunikat z zapytaniem o wygl�d strony if dobrze to zmienia nazwy
	_FTP_FileDelete($FTP_Conn,$1&".html") ;usuni�cie orgina�u
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Usuni�to plik "&$1 & @CRLF) ;Log: Usuni�to orgina�
	_FTP_FileRename($FTP_Conn,$2&".html",$1&".html") ;zmiana nazwy pliku tymczasowego na nazwe orgina�u
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Zmieniono nazwe pliku z "&$2&" na "&$1 & @CRLF) ;Log: Zmieniono nazwe
	_FTP_FileDelete($FTP_Conn,$2&".html") ;usuni�cie pliku tymczasowego
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Usuni�to plik "&$2 & @CRLF) ;Log: Usuni�to 2 plik
	Sleep(1000)
Else ;if �le to sprz�ta
	_FTP_FileDelete($FTP_Conn,$2&".html") ;usuwa plik tymczasowy
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Usuni�to plik "&$2 & @CRLF) ;Log: Usuni�to 2 plik
	MsgBox(0,$tsprt,$tspr) ;wy�wietla komunikat
EndIf
EndFunc ;koniec funkcji spr

Func ftp() ;funkcja ftp ��cz�ca si� z serwerem ftp
	$ftp=1 
global $FTP_Open = _FTP_Open("FTP") ;otwarcie po��czenia z serwerem
global $FTP_Conn = _FTP_Connect($FTP_Open, $host, $user, $pwd) ;po��czenie z serwerem
If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Po��czono z "&$host&"@"&$user & @CRLF) ;Log: Po��czono z serwerem
If @error Then MsgBox(48, $bftpt, $bftb) ;wy�wietla komunikat if wyst�pi b��d
EndFunc ;koniec funkcji ftp

func upload($r) ;funkcja wysy�aj�ca plik na serwer ftp
	Switch $r
	Case 1
		$1=$ti
		$2="indext"
	Case 2
		$1=$to
		$2="ogloszeniat"
	case 3
		$1=$tpo
		$2=$logloszenia&"t"
	EndSwitch
   $FTP_Put = _FTP_FilePut($FTP_Conn,$1,$2&".html") ;wys�anie pliku z dysku na serwer ftp
   If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Wys�ano plik "&$2 & @CRLF) ;Log: Wys�ano
   If @error Then MsgBox(48, $bftpt, $bftp) ;wy�wietlenie komunikatu if wyst�pi b��d
EndFunc ;koniec funkcji upload


func download($r) ;funkcja pobieraj�ca pliki na dysk
	Switch $r
	Case 1
		InetGet($li,$geti) ;index
	Case 2
		InetGet($lo,$geto) ;og�oszenia 
	Case 3 
		InetGet($lpo,$getpo) ;cpog
	EndSwitch
        If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Pobrano plik " &$r& @CRLF) ;Log: Pobrano
		EndFunc ;koniec funkcji download
		
		func update()
		$wersja=InetRead("https://dl.dropbox.com/u/60061226/ver.txt")
		$wersja=BinaryToString($wersja)
		$wersja=StringLeft($wersja,StringInStr($wersja,@CR)-1)
		MsgBox(0,$wersja,$ver)
		if $wersja<>$ver Then
			FileDelete("config.ini")
			MsgBox(0,$wersja,InetGet("https://dl.dropbox.com/u/60061226/auto "&$wersja&".exe","auto2.exe"))
			Sleep(1000)
			MsgBox(0,"",run("auto.exe"))
			Sleep(1000)
			Exit
		EndIf			
	EndFunc
	
		Func config() ;funkcja wczytuj�ca ustawienia z pliku konfiguracyjnego
Global $Gfn=IniRead("config.ini","Gui","formn","Auto")
Global $Gf1=IniRead("config.ini","Gui","form1",230)
Global $Gf2=IniRead("config.ini","Gui","form2",185)
Global $Gf3=IniRead("config.ini","Gui","form3",230)
Global $Gf4=IniRead("config.ini","Gui","form4",140)
Global $Gogn=IniRead("config.ini","Gui","input1n","Ogloszenia")
Global $Gog1=IniRead("config.ini","Gui","input11",10)
Global $Gog2=IniRead("config.ini","Gui","input12",10)
Global $Gog3=IniRead("config.ini","Gui","input13",100)
Global $Gog4=IniRead("config.ini","Gui","input14",21)
Global $Gdbn=IniRead("config.ini","Gui","open dialogn","Przegl�daj")
Global $Gdb1=IniRead("config.ini","Gui","open dialog1",120)
Global $Gdb2=IniRead("config.ini","Gui","open dialog2",10)
Global $Gdb3=IniRead("config.ini","Gui","open dialog3",75)
Global $Gdb4=IniRead("config.ini","Gui","open dialog4",20)
Global $Gppn=IniRead("config.ini","Gui","input2n","Pe�na nazwa")
Global $Gpp1=IniRead("config.ini","Gui","input21",10)
Global $Gpp2=IniRead("config.ini","Gui","input22",40)
Global $Gpp3=IniRead("config.ini","Gui","input23",100)
Global $Gpp4=IniRead("config.ini","Gui","input24",21)
Global $Gpsn=IniRead("config.ini","Gui","input3n","Skr�cona nazwa")
Global $Gps1=IniRead("config.ini","Gui","input31",10)
Global $Gps2=IniRead("config.ini","Gui","input32",70)
Global $Gps3=IniRead("config.ini","Gui","input33",100)
Global $Gps4=IniRead("config.ini","Gui","input34",21)
Global $Gy1=IniRead("config.ini","Gui","input41",10)
Global $Gy2=IniRead("config.ini","Gui","input42",100)
Global $Gy3=IniRead("config.ini","Gui","input43",30)
Global $Gy4=IniRead("config.ini","Gui","input44",21)
Global $Gm1=IniRead("config.ini","Gui","input51",45)
Global $Gm2=IniRead("config.ini","Gui","input52",100)
Global $Gm3=IniRead("config.ini","Gui","input53",20)
Global $Gm4=IniRead("config.ini","Gui","input54",21)
Global $Gd1=IniRead("config.ini","Gui","input61",70)
Global $Gd2=IniRead("config.ini","Gui","input62",100)
Global $Gd3=IniRead("config.ini","Gui","input63",20)
Global $Gd4=IniRead("config.ini","Gui","input64",21)
Global $Ggn=IniRead("config.ini","Gui","grupan","Funkcje")
Global $Gg1=IniRead("config.ini","Gui","grupa1",112)
Global $Gg2=IniRead("config.ini","Gui","grupa2",30)
Global $Gg3=IniRead("config.ini","Gui","grupa3",113)
Global $Gg4=IniRead("config.ini","Gui","grupa4",117)
Global $Gin=IniRead("config.ini","Gui","chbox1n","Index")
Global $Gi1=IniRead("config.ini","Gui","chbox11",120)
Global $Gi2=IniRead("config.ini","Gui","chbox12",45)
Global $Gi3=IniRead("config.ini","Gui","chbox13",90)
Global $Gi4=IniRead("config.ini","Gui","chbox14",20)
Global $Gon=IniRead("config.ini","Gui","chbox2n","Og�oszenia")
Global $Go1=IniRead("config.ini","Gui","chbox21",120)
Global $Go2=IniRead("config.ini","Gui","chbox22",65)
Global $Go3=IniRead("config.ini","Gui","chbox23",90)
Global $Go4=IniRead("config.ini","Gui","chbox24",20)
Global $Gpon=IniRead("config.ini","Gui","chbox3n","Plik og�oszenia")
Global $Gpo1=IniRead("config.ini","Gui","chbox31",120)
Global $Gpo2=IniRead("config.ini","Gui","chbox32",85)
Global $Gpo3=IniRead("config.ini","Gui","chbox33",90)
Global $Gpo4=IniRead("config.ini","Gui","chbox34",20)
Global $Gftpn=IniRead("config.ini","Gui","chbox4n","Wy�lij na ftp")
Global $Gftp1=IniRead("config.ini","Gui","chbox41",120)
Global $Gftp2=IniRead("config.ini","Gui","chbox42",105)
Global $Gftp3=IniRead("config.ini","Gui","chbox43",90)
Global $Gftp4=IniRead("config.ini","Gui","chbox44",20)
Global $Gsprn=IniRead("config.ini","Gui","chbox5n","Kontrola")
Global $Gspr1=IniRead("config.ini","Gui","chbox51",120)
Global $Gspr2=IniRead("config.ini","Gui","chbox52",125)
Global $Gspr3=IniRead("config.ini","Gui","chbox53",90)
Global $Gspr4=IniRead("config.ini","Gui","chbox54",20)
Global $Gup2n=IniRead("config.ini","Gui","butonok2n","Zapisz")
Global $Gup21=IniRead("config.ini","Gui","butonok21",70)
Global $Gup22=IniRead("config.ini","Gui","butonok22",155)
Global $Gup23=IniRead("config.ini","Gui","butonok23",75)
Global $Gup24=IniRead("config.ini","Gui","butonok24",25)
Global $Gup1n=IniRead("config.ini","Gui","butonok1","Wy�lij")
Global $dian=IniRead("config.ini","napisy","drogloszenia","Wybierz plik z og�oszeniami")
Global $dias=IniRead("config.ini","napisy","dirogloszenia","C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\WWW\pliki\og�oszenia")
Global $mt=IniRead("config.ini","napisy","msgboxtytu�","Test")
Global $mp=IniRead("config.ini","napisy","msgboxpytanie","Strona dobrze wygl�da?")
Global $bftpt=IniRead("config.ini","napisy","bladftpt","B��d!")
Global $bftpb=IniRead("config.ini","napisy","bladftpb","Wyst�pi� b��d podczas ��czenia z serwerem ftp sprawd� dane")
Global $tsprt=IniRead("config.ini","napisy","bladt","Test")
Global $tspr=IniRead("config.ini","napisy","bladb","Spr�buj jeszcze raz")
Global $pog1=IniRead("config.ini","funkcje","pog1",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;"><br><a href="pliki/')
Global $pog2=IniRead("config.ini","funkcje","pog2",'.html">Og�oszenia - ')
Global $pog3=IniRead("config.ini","funkcje","pog3",'</a></h1><h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px; text-align: right;"><small><a style="color: rgb(79, 130, 203); font-weight: normal;" href="pliki/')
Global $pog4=IniRead("config.ini","funkcje","pog4",'.html">czytaj og�oszenia</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ')
Global $pog5=IniRead("config.ini","funkcje","pog5",'&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</small></h1>')
Global $co1=IniRead("config.ini","funkcje","co1",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;"><br>')
Global $cod1=IniRead("config.ini","funkcje","cod1","-2")
Global $cod2=IniRead("config.ini","funkcje","cod2","+5")
Global $ci=IniRead("config.ini","funkcje","ci",'<div class="post">')
Global $cid1=IniRead("config.ini","funkcje","cid1","+18")
Global $cid2=IniRead("config.ini","funkcje","cid2","-1")
Global $tih=IniRead("config.ini","funkcje","tih",'<div class="post">')
Global $po11=IniRead("config.ini","funkcje","po11",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;">Strona g�&oacute;wna</h1><p style="margin: 0pt; padding: 0pt; text-align: right; color: rgb(102, 102, 102); font-weight: bold;"><span class="date">')
Global $po12=IniRead("config.ini","funkcje","po12",'</span></p><p style="text-align: center; font-weight: bold;"><a href="../images/klepsydra.jpg"><img style="border: 0px solid ;" alt="" src="../images/klepsydra.jpeg"><br></a>')
Global $po13=IniRead("config.ini","funkcje","po13","</p><p>")
Global $po14=IniRead("config.ini","funkcje","po14","</p>")
Global $po21=IniRead("config.ini","funkcje","po21",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;">Og�oszenia</h1><p style="margin: 0pt; padding: 0pt; text-align: right; color: rgb(102, 102, 102); font-weight: bold;"><span class="date">')
Global $po22=IniRead("config.ini","funkcje","po22",'</span></p><p style="text-align: center; font-weight: bold;"></a>')
Global $po23=IniRead("config.ini","funkcje","po23","</p><p>")
Global $po24=IniRead("config.ini","funkcje","po24","</p>")
Global $host =IniRead("config.ini","ftp","host", "ftp.strefa.pl")
Global $dir =IniRead("config.ini","ftp","dir","/")
Global $user =IniRead("config.ini","ftp","user","rdzawka+marianie.pl")
Global $pwd = IniRead("config.ini","ftp","pass","MICobid83#")
Global $port =IniRead("config.ini","ftp","port",21)
Global $link =IniRead("config.ini","ftp","link","http://rdzawka.marianie.pl/")
Global $geti=IniRead("config.ini","pliki","index","index.html")
Global $geto=IniRead("config.ini","pliki","ogloszenia","og.html")
Global $getpo=IniRead("config.ini","pliki","pogloszenia","cpog.html")
Global $pom=IniRead("config.ini","pliki","pogloszeniamnaftp","/pliki/")
Global $flog=IniRead("config.ini","pliki","log","log.txt")
Global $fkodowanie=IniRead("config.ini","pliki","kodowanie","kodowanie.ini")
Global $li=IniRead("config.ini","pliki","linkindex","http://rdzawka.marianie.pl/index.html")
Global $lo=IniRead("config.ini","pliki","linkogloszenia","http://rdzawka.marianie.pl/ogloszenia.html")
Global $lpo=IniRead("config.ini","pliki","linkpo","cpog.html")
Global $ti=IniRead("config.ini","pliki","temp1","i.html")
Global $to=IniRead("config.ini","pliki","temp2","o.html")
Global $tpo=IniRead("config.ini","pliki","temp3","po.html")
Global $ver=IniRead("config.ini","pliki","wersja","v1.0")
EndFunc ;koniec funkcja config