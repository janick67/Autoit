#include <Word.au3> ;biblioteka odpowiadaj¹ca za dokumenty (funkcje doctotxt)
#include <FTPEx.au3> ;biblioteka odpowiadaj¹ca za ftp (funkcje upload, download, ftp)
#include <ButtonConstants.au3> ;biblioteka odpowiadaj¹ca za GUI
#include <EditConstants.au3> ;biblioteka odpowiadaj¹ca za GUI
#include <GUIConstantsEx.au3> ;biblioteka odpowiadaj¹ca za GUI
#include <StaticConstants.au3> ;biblioteka odpowiadaj¹ca za GUI
#include <WindowsConstants.au3> ;biblioteka odpowiadaj¹ca za GUI

FileInstall("config.ini","config.ini")
config()
#Region ### START Koda GUI section ### Form=
$Gform = GUICreate($Gfn&" "&$ver, $Gf1, $Gf2, $Gf3, $Gf4) ;G³ówne okno
$Gog = GUICtrlCreateInput($Gogn, $Gog1, $Gog2, $Gog3, $Gog4) ;Input z linkiem do og³oszeñ uzupe³niany przez funkcje dia
$Gdialog = GUICtrlCreateButton($Gdbn, $Gdb1, $Gdb2, $Gdb3, $Gdb4, $WS_GROUP) ;Przycisk Przegl¹daj(funkcja dia)
$Gpogpn = GUICtrlCreateInput($Gppn, $Gpp1, $Gpp2, $Gpp3, $Gpp4) ;Input z pe³n¹ nazw¹ niedzieli wpisywany w og³oszenia.html np. IV Niedziela Postu
$Gpog = GUICtrlCreateInput($Gpsn, $Gps1, $Gps2, $Gps3, $Gps4) ;Input ze skrótem u¿ywanym do nazwania pliku z og³oszeniami np. IVp
$Gyear = GUICtrlCreateInput(@YEAR, $Gy1, $Gy2, $Gy3, $Gy4) ;Input z nr roku 
$Gmon = GUICtrlCreateInput(@MON, $Gm1, $Gm2, $Gm3, $Gm4) ;Input z nr miesi¹ca
$Gday = GUICtrlCreateInput(@MDAY, $Gd1, $Gd2, $Gd3, $Gd4) ;Input z nr dnia
$Gfunkcje = GUICtrlCreateGroup($Ggn, $Gg1, $Gg2, $Gg3, $Gg4) ;Grupa z checkboxami
$Gi = GUICtrlCreateCheckbox($Gin, $Gi1, $Gi2, $Gi3, $Gi4) ;Checkbox strona g³ówna (funkcja all)
GUICtrlSetState(-1, $GUI_CHECKED) ;zaznaczenie poprzedniego checkboxa 
$Go = GUICtrlCreateCheckbox($Gon, $Go1, $Go2, $Go3, $Go4) ;Checkbox og³oszenia (funkcja all)
GUICtrlSetState(-1, $GUI_CHECKED) ;zaznaczenie poprzedniego checkboxa 
$Gpo = GUICtrlCreateCheckbox($Gpon, $Gpo1, $Gpo2, $Gpo3, $Gpo4) ;Checkbox plik z og³oszeniami (funkcja all)
GUICtrlSetState(-1, $GUI_CHECKED) ;zaznaczenie poprzedniego checkboxa 
$Gsftp = GUICtrlCreateCheckbox($Gftpn, $Gftp1, $Gftp2, $Gftp3, $Gftp4) ;Checkbox zapis czy ftp (funkcja upload)
$Gspr = GUICtrlCreateCheckbox($Gsprn, $Gspr1, $Gspr2, $Gspr3, $Gspr4) ;Checkbox kontrola (funkcja spr)
GUICtrlSetState($Gspr,$GUI_DISABLE) ;zablokowanie checkboxa zostanie odblokowany po wybraniu opcji Ftp
$Gupload = GUICtrlCreateButton($Gup2n, $Gup21, $Gup22, $Gup23, $Gup24, $WS_GROUP) ;Przycisk Zapisz lub wyœlij (funkcja all)
Dim $Form1_AccelTable[1][2] = [["{Enter}", $Gupload]] ;Przypis klawisza ENTER do przycisku zatwierdzaj¹cego
GUISetAccelerators($Form1_AccelTable) ;ustawienia GUI z Koda
GUISetState(@SW_SHOW) ;ustawienia GUI z Koda
#EndRegion ### END Koda GUI section ###
$ftp=0

FileWrite($flog,@CRLF&"["&@YEAR&" "&@MON&" "&@MDAY&"]"&@CRLF) ;Log: Pocz¹tek		
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
	Case $GUI_EVENT_CLOSE
		if $ftp=1 Then ;if po³¹czono z serwerem i klikniêto w krzy¿yk to:
		FileDelete($geti) ;usuwa pobrany plik index z dysku
		FileDelete($geto) ;usuwa pobrany plik ogloszenia z dysku
		_FTP_Close($FTP_Open) ;roz³¹cza z serwerem
		If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Roz³¹czono z serwerem ftp" & @CRLF) ;Log: Disconnect ftp
		EndIf 
		FileWrite($flog,"KONIEC"&@CRLF) ;Log: Koniec
			Exit 
		Case $Gupload ;klawisz zatwierdzaj¹cy
			update()
;~ 			ftp() ;funkcja ³¹cz¹ca z serwerem ftp
;~ 			$logloszenia=$pom&GUICtrlRead($Gpog) ;adres pod którym ma zostac umieszczony plik z og³oszeniami
;~ 			$w=0
;~ 			if guictrlread($Gi)=1 then $w+=1 ;if index zaznaczony to dodaje 1
;~ 			if guictrlread($Go)=1 then $w+=2 ;if og³oszenia zaznaczony to dodaje 2
;~ 			if guictrlread($Gpo)=1 then $w+=4 ;if plik og³oszenia zaznaczony to dodaje 4
;~ 			all($w) ;funkcja wykonuj¹ca g³óne zadanie na podstawie zaznaczonych checkboxów
;~ 		Case $Gdialog ;przycisk przegl¹daj
;~ 			dia() ;funkcja otwieraj¹ca okno dialogowe i ustawiaj¹ca wartoœci inputom
;~ 		Case $Gsftp ;chckbox ftp
;~ 			if GUICtrlRead($Gsftp)=4 then ;if nie aktywny to:
;~ 			GUICtrlSetState($Gspr,$GUI_DISABLE) ;dezaktywowanie chckboxa Kontrola
;~ 			GUICtrlSetState($Gspr,$GUI_UNCHECKED) ;odznaczenie chckboxa Kontrola
;~ 			GUICtrlSetData($Gupload,$Gup2n) ;zmiana treœci na przycisku zatwierdzaj¹cym na Zapisz
;~ 		Else ;w przeciwnym razie:
;~ 			GUICtrlSetState($Gspr,$GUI_ENABLE) ;aktywowanie chckboxa Kontrola
;~ 			GUICtrlSetState($Gspr,$GUI_CHECKED) ;zaznaczenie chckboxa Kontrola
;~ 			GUICtrlSetData($Gupload,$Gup1n) ;zmiana treœci na przycisku zatwierdzaj¹cym na Wyœlij
;~ 		EndIf
EndSwitch
WEnd


Func dia() ;funkcja otwiera okno dialogowe i ustawia inputy treœciami pobranymi z pliku og³oszeñ
	$dia=FileOpenDialog($dian,$dias,"pliki Microsoft Word(*.doc)",3) ;otwarcie okna dialogowego maj¹cego na celu wybranie pliku z og³oszeniami
				FileChangeDir(@ScriptDir) ;ustawienie domyœlnej œcie¿ki na œcie¿ke skryptu
				if StringLen($dia)>5  then ;zabezpieczenie przed pustym odnoœnikiem
			GUICtrlSetData($Gog,$dia) ;ustawienie wartoœci zwróconej przez dialog do inutu z linkiem do dokumentu zog³oszeniami
			$w=StringInStr($dia,"\",1,-1) ;opracowanie pe³nej nazwy niedzieli
			$w=StringTrimLeft($dia,$w) ;-II-
			$w=StringTrimRight($w,4) ;-II-
			GUICtrlSetData($Gpogpn,$w) ;ustawienie pe³nej nazwy niedzieli
			$i=StringInStr($w,"niedziela") ;przygotowanie do nastêpnych operacji
			if $i>0 Then ;if znajdzie s³owo niedziela we wczeœniej opracowanym stringu
			$cz1=StringLeft($w,$i-1) ;usuniêcie s³owa niedziela ze stringu
			$cz2=StringTrimLeft($w,$i+9) ;-II-
			$w=$cz1&$cz2 ;-II-
			EndIf
			$i=StringInStr($w," ") ;przygotowanie skróconej nazwy, usuniêcie spacji z stringu
			$1=StringLeft($w,$i-1) ;-II-
			$2=StringTrimLeft($w,$i) ;-II-
			$2=StringLeft($2,1) ;-II-
			if StringIsUpper($2) then $2=StringLower($2) ;-II- zmaiana wielkoœci liter na ma³e
			If $2="z" then $2="" ;;-II- usuniêcie litery z if niedziela zwyk³a
			GUICtrlSetData($Gpog,"ogloszenia"&$1&$2) ;ustawienie skróconej nazwy
			EndIf
	EndFunc ;koniec funkcji dia

func all($r) ;g³ówna funkcja która dostaje wykonana po klikniêciu w przycisk potwierdzaj¹cy argumentem jest suma kontrolna checkboxów
	Global $data=GUICtrlRead($Gyear)&" "&GUICtrlRead($Gmon)&" "&GUICtrlRead($Gday) ;zapisanie daty do zmiennej
	$sftp=GUICtrlRead($Gsftp) ;zczytanie wartoœci z checkboxa ftp
	Switch $r
	Case 1+2+4 ;wszystkie 3 chckboxy zaznaczone
		download(1) ;pobieranie 1
		download(2) ;pobieranie 2
		download(3) ;pobieranie 3
		$rGog=GUICtrlRead($Gog) ;czytanie tekstu z elementu gui do zmiennej, input z linkiem do og³oszeñ
		$pogpn=GUICtrlRead($Gpogpn) ;-II- input z pe³n¹ nazw¹
		$pog=GUICtrlRead($Gpog) ;-II- input z skrócon¹ nazw¹
		$rgeti=FileRead($geti) ;czytanie tekstu z pliku index do zmiennej
		$rgeto=FileRead($geto) ;czytanie tekstu z pliku og³oszenia do zmiennej
		$rgetpo=FileRead($getpo) ;czytanie tekstu z pliku cpog do zmiennej
		$dtt=doctotxt($rGog) ;wczytanie tekstu z dokumentu z og³oszeniami do zmiennej aby nie otwierac dwa razy worda
		$goi=kodowanie(txtinhtml(pogloszen($dtt,1),clerindex($rgeti))) ;utworzenie pliku strony index
		$goo=txtinhtml(pog($pog,$pogpn,$data),clerogloszenia($rgeto)) ;utworzenie pliku strony og³oszenia
		$gopo=kodowanie(txtinhtml(pogloszen($dtt,3),clerindex($rgetpo))) ;utworzenie pliku strony plik z og³oszeniami
		FileDelete($geti) ;usuniêcie pliku index
		FileDelete($geto) ;usuniêcie pliku og³oszenia
		FileDelete($getpo) ;usuniêcie pliku plik og³oszenia
		if $sftp = 1 Then ;if wysy³a na ftp to
		FileDelete($ti) ;czyszczenie miejsca
		FileDelete($to) ;-II-
		FileDelete($tpo) ;-II-
		FileWrite($ti,$goi) ;zapisanie pliku tymczasowego
		FileWrite($to,$goo) ;-II-
		FileWrite($tpo,$gopo)  ;-II-
		upload(1) ;wysy³anie 1
		upload(2) ;wysy³anie 2
		upload(3) ;wysy³anie 3
		FileDelete($ti) ;usuniêcie pliku tymczasowego 
		FileDelete($to) ;-II-
		FileDelete($tpo) ;-II-
	Else ;if nie wysy³a na ftp to:
		$sfi=FileSaveDialog("Save as","","html(i*.html)",2,"index.html") ;dialog z wybraniem miejsca zapisu index
		$sfo=FileSaveDialog("Save as","","html(o*.html)",2,"ogloszenia.html") ;dialog z wybraniem miejsca zapisu og³oszenia
		$sfpo=FileSaveDialog("Save as","","html(*.html)",2,$pog&".html") ;dialog z wybraniem miejsca zapisu pliku z og³oszeniami
		FileChangeDir(@ScriptDir) ;zmiana domyœlnej œcie¿ki na œcie¿ke skryptu
		FileDelete($sfi) ;czyszczenie miejsca
		FileDelete($sfo) ;-II-
		FileDelete($sfpo) ;-II-
		FileWrite($sfi,$goi) ;zapisanie stworzonego pliku
		FileWrite($sfo,$goo) ;-II-
		FileWrite($sfpo,$gopo) ;-II-
	EndIf
	if GUICtrlRead($Gspr)=1 then ;if zaznaczona opcja Kontrola to;
		spr(1) ;wykonuje funkcje sprawdzaj¹c¹
		spr(2) ;-II-
		spr(3) ;-II-
		EndIf
	Case 1 ;tylko 1 chckbox index (wszystkie funkcje opisane wy¿ej)
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
Case 1+2 ;1 i 2 checkbox index i og³oszenia (wszystkie funkcje opisane wy¿ej)
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
	Case 1+4 ;1 i 4 checkbox index i plik z og³oszeniami (wszystkie funkcje opisane wy¿ej)
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
	Case 2 ;tylko 2 checkbox og³oszenia (wszystkie funkcje opisane wy¿ej)
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
	case 2+4 ;2 i 3 checkbox og³oszenia i plik z og³oszeniami
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
	Case 4 ;tylko 4 checkbox plik z og³oszeniami (wszystkie funkcje opisane wy¿ej)
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


Func pog($pog,$pogpn,$pogda) ;funkcja przygotowywuj¹ca nowy h1 do pliku og³oszenia argumenty to 1-skrócona nazwa, 2-pe³na nazwa, 3-data
$cs=$pog1&$pog&$pog2&$pogpn&$pog3&$pog&$pog4&$pogda&$pog5 ;wkleja zczytane dane pomiêdzy sta³e dane
Return $cs ;zwraca gotow¹ czêœæ kodu html
EndFunc ;koniec funkcji pog

func clerogloszenia($plik) ;usuwa z pliku og³oszenia (podanego w argumeñcie) najstarszy wpis (do og³oszenia)
$p=StringInStr($plik,$co1,1,7) ;szuka 7 z rzêdu wskazanego elementu koñcz¹cego najstarszy wpis
$k=StringInStr($plik,"</h1>",1,2,$p) ;szuka 2 z rzêdu czyli ostatniego znacznika w wpisie
$tp=StringLeft($plik,$p+$cod1) ;zapisuje do zmiennej ca³y kod przed pocz¹tkiem najstarszego wpisu
$tk=StringTrimLeft($plik,$k+$cod2) ;zapisuje do zmiennej ca³y kod od koñca wpisu do koñca kodu
$ck=$tp&$tk ;³¹czy wszystko w ca³oœæ czyli bez najstarszego wpisu
return $ck ;zwraca string z kodem og³oszeñ z usuniêtym najstarszym wpisem
EndFunc ;koniec funkcji clerogloszenia

func clerindex($plik) ;funkcja czyszcz¹ca plik index (podanego w argumeñcie) z treœci (do index i do pliku z og³oszeniami),(dzia³anie podobne do opisanej wy¿ej)
$p=StringInStr($plik,$ci)
$k=StringInStr($plik,"</div>",1,1,$p)
$tp=StringLeft($plik,$p+$cid1)
$tk=StringTrimLeft($plik,$k+$cid2)
$ck=$tp&$tk
return $ck
EndFunc ;koniec funkcji clerindex

func txtinhtml($txt,$plik) ;funkcja wkleja tekst podany w argumencie do stringu podanego jako 2 argument
$z=StringReplace($plik,$tih,$tih&@CRLF&$txt) ;zamiana pewnej czêœci tekstu na podany tekst
return($z) ;zwrócenie ca³oœci kodu
EndFunc ;koniec funkcji txtinhtml

Func doctotxt($nazwa) ;funkcja przekszta³caj¹ca dokument word w tekst
	$cg=ClipGet() ;zapisanie do zmiennej wartoœci schowka
$app = _WordCreate($nazwa) ;odtworzenie dokumentu
WinActivate(StringTrimLeft($nazwa,StringInStr($nazwa,"\",1,-1))) ;aktywacja okna z dokumentem
send("{ctrldown}ac{ctrlup}") ;skopiowanie ca³ej zawartoœci okna do schowka
_WordQuit($app) ;zamkniêcie okna z dokumentem
$ret=ClipGet() ;zapisanie skopiowanej treœci do zmiennej
ClipPut($cg) ;przywrócenie stanu schowka z przed operacji
return $ret ;zwrócenie skopiowanej treœci
EndFunc ;koniec funkcji doctotxt

Func pogloszen($s,$r) ;funkcja przygotowuj¹ca string z og³oszeniami (do index i do pliku z og³oszeniami)
$s=StringReplace($s,@CRLF,"<br>") ;zamienia entery z tekstu podanego w argumeñcie na <br> czyli odpowiedniki z htmla
$s=StringReplace($s,"	","&nbsp;&nbsp;&nbsp;&nbsp;") ;zamienia tab na cztery spacjie
$center=StringInStr($s,"<br>",1,1,StringInStr($s,"<br>")+1) ;podobnie jak przy clerogloszenia
$cz1=StringLeft($s,$center-1)
$cz2=StringTrimLeft($s,$center+3)
if $r=1 Then 
$cs=$po11&$data&$po12&$cz1&$po13&$cz2&$po14 ;index
Else
$cs=$po21&$data&$po22&$cz1&$po23&$cz2&$po24 ;plik z og³oszeniami
EndIf
Return $cs ;zwraca przygotowan¹ treœæ og³oszeñ
EndFunc ;koniec funkcji pogloszen

func kodowanie($s) ;funkcja zmieniaj¹ca polskie znaki w stringu na ich odpowiedniki czytane przez przegl¹darki 
	for $i = 1 to IniRead($fkodowanie,"Polskie",0,"") ;powtarza pêtla x razy x jest zapisany w pliku z kodowaniem
		$s=StringReplace($s,IniRead($fkodowanie,"Polskie",$i,""),IniRead($fkodowanie,"Odmiana",$i,""),0,1) ;zamienia ka¿dy znaleziony znak z tych zapisanych w pliku .ini na jego odpowiednik
		Next
	Return $s ;zwraca zakodowany tekst
	EndFunc ;koniec funkcji kodowanie
 
func spr($r) ;funkcja wykonuje sekwencje sprawdzenia wygl¹du utworzonej strony
	Switch $r
	Case 1
		$1="index" ;orgina³ index
		$2="indext" ;tymczasowy index
	Case 2
		$1="ogloszenia" ;orgina³ og³oszenia
		$2="ogloszeniat" ;tymczasowy og³oszenia
	case 3
		$1=$logloszenia ;orgina³ plik z og³oszeniami
		$2=$logloszenia&"t" ;tymczasowy plik z og³oszeniami
	EndSwitch
ShellExecute($link&$2&".html") ;otwarcie strony w przegl¹darce
Sleep(2000) ;czekanie na za³adowanie strony
Send("{F5}") ;odœwie¿enie
Sleep(4000) ;czas na przegl¹dniêcie strony
if MsgBox(4,$mt,$mp)=6 Then ;wyœwietla komunikat z zapytaniem o wygl¹d strony if dobrze to zmienia nazwy
	_FTP_FileDelete($FTP_Conn,$1&".html") ;usuniêcie orgina³u
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Usuniêto plik "&$1 & @CRLF) ;Log: Usuniêto orgina³
	_FTP_FileRename($FTP_Conn,$2&".html",$1&".html") ;zmiana nazwy pliku tymczasowego na nazwe orgina³u
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Zmieniono nazwe pliku z "&$2&" na "&$1 & @CRLF) ;Log: Zmieniono nazwe
	_FTP_FileDelete($FTP_Conn,$2&".html") ;usuniêcie pliku tymczasowego
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Usuniêto plik "&$2 & @CRLF) ;Log: Usuniêto 2 plik
	Sleep(1000)
Else ;if Ÿle to sprz¹ta
	_FTP_FileDelete($FTP_Conn,$2&".html") ;usuwa plik tymczasowy
	If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Usuniêto plik "&$2 & @CRLF) ;Log: Usuniêto 2 plik
	MsgBox(0,$tsprt,$tspr) ;wyœwietla komunikat
EndIf
EndFunc ;koniec funkcji spr

Func ftp() ;funkcja ftp ³¹cz¹ca siê z serwerem ftp
	$ftp=1 
global $FTP_Open = _FTP_Open("FTP") ;otwarcie po³¹czenia z serwerem
global $FTP_Conn = _FTP_Connect($FTP_Open, $host, $user, $pwd) ;po³¹czenie z serwerem
If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Po³¹czono z "&$host&"@"&$user & @CRLF) ;Log: Po³¹czono z serwerem
If @error Then MsgBox(48, $bftpt, $bftb) ;wyœwietla komunikat if wyst¹pi b³¹d
EndFunc ;koniec funkcji ftp

func upload($r) ;funkcja wysy³aj¹ca plik na serwer ftp
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
   $FTP_Put = _FTP_FilePut($FTP_Conn,$1,$2&".html") ;wys³anie pliku z dysku na serwer ftp
   If Not @error Then FileWrite($flog,@HOUR&":"&@MIN&":"&@SEC&"FTP-> Wys³ano plik "&$2 & @CRLF) ;Log: Wys³ano
   If @error Then MsgBox(48, $bftpt, $bftp) ;wyœwietlenie komunikatu if wyst¹pi b³¹d
EndFunc ;koniec funkcji upload


func download($r) ;funkcja pobieraj¹ca pliki na dysk
	Switch $r
	Case 1
		InetGet($li,$geti) ;index
	Case 2
		InetGet($lo,$geto) ;og³oszenia 
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
	
		Func config() ;funkcja wczytuj¹ca ustawienia z pliku konfiguracyjnego
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
Global $Gdbn=IniRead("config.ini","Gui","open dialogn","Przegl¹daj")
Global $Gdb1=IniRead("config.ini","Gui","open dialog1",120)
Global $Gdb2=IniRead("config.ini","Gui","open dialog2",10)
Global $Gdb3=IniRead("config.ini","Gui","open dialog3",75)
Global $Gdb4=IniRead("config.ini","Gui","open dialog4",20)
Global $Gppn=IniRead("config.ini","Gui","input2n","Pe³na nazwa")
Global $Gpp1=IniRead("config.ini","Gui","input21",10)
Global $Gpp2=IniRead("config.ini","Gui","input22",40)
Global $Gpp3=IniRead("config.ini","Gui","input23",100)
Global $Gpp4=IniRead("config.ini","Gui","input24",21)
Global $Gpsn=IniRead("config.ini","Gui","input3n","Skrócona nazwa")
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
Global $Gon=IniRead("config.ini","Gui","chbox2n","Og³oszenia")
Global $Go1=IniRead("config.ini","Gui","chbox21",120)
Global $Go2=IniRead("config.ini","Gui","chbox22",65)
Global $Go3=IniRead("config.ini","Gui","chbox23",90)
Global $Go4=IniRead("config.ini","Gui","chbox24",20)
Global $Gpon=IniRead("config.ini","Gui","chbox3n","Plik og³oszenia")
Global $Gpo1=IniRead("config.ini","Gui","chbox31",120)
Global $Gpo2=IniRead("config.ini","Gui","chbox32",85)
Global $Gpo3=IniRead("config.ini","Gui","chbox33",90)
Global $Gpo4=IniRead("config.ini","Gui","chbox34",20)
Global $Gftpn=IniRead("config.ini","Gui","chbox4n","Wyœlij na ftp")
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
Global $Gup1n=IniRead("config.ini","Gui","butonok1","Wyœlij")
Global $dian=IniRead("config.ini","napisy","drogloszenia","Wybierz plik z og³oszeniami")
Global $dias=IniRead("config.ini","napisy","dirogloszenia","C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\WWW\pliki\og³oszenia")
Global $mt=IniRead("config.ini","napisy","msgboxtytu³","Test")
Global $mp=IniRead("config.ini","napisy","msgboxpytanie","Strona dobrze wygl¹da?")
Global $bftpt=IniRead("config.ini","napisy","bladftpt","B³¹d!")
Global $bftpb=IniRead("config.ini","napisy","bladftpb","Wyst¹pi³ b³¹d podczas ³¹czenia z serwerem ftp sprawdŸ dane")
Global $tsprt=IniRead("config.ini","napisy","bladt","Test")
Global $tspr=IniRead("config.ini","napisy","bladb","Spróbuj jeszcze raz")
Global $pog1=IniRead("config.ini","funkcje","pog1",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;"><br><a href="pliki/')
Global $pog2=IniRead("config.ini","funkcje","pog2",'.html">Og³oszenia - ')
Global $pog3=IniRead("config.ini","funkcje","pog3",'</a></h1><h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px; text-align: right;"><small><a style="color: rgb(79, 130, 203); font-weight: normal;" href="pliki/')
Global $pog4=IniRead("config.ini","funkcje","pog4",'.html">czytaj og³oszenia</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ')
Global $pog5=IniRead("config.ini","funkcje","pog5",'&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</small></h1>')
Global $co1=IniRead("config.ini","funkcje","co1",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;"><br>')
Global $cod1=IniRead("config.ini","funkcje","cod1","-2")
Global $cod2=IniRead("config.ini","funkcje","cod2","+5")
Global $ci=IniRead("config.ini","funkcje","ci",'<div class="post">')
Global $cid1=IniRead("config.ini","funkcje","cid1","+18")
Global $cid2=IniRead("config.ini","funkcje","cid2","-1")
Global $tih=IniRead("config.ini","funkcje","tih",'<div class="post">')
Global $po11=IniRead("config.ini","funkcje","po11",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;">Strona g³&oacute;wna</h1><p style="margin: 0pt; padding: 0pt; text-align: right; color: rgb(102, 102, 102); font-weight: bold;"><span class="date">')
Global $po12=IniRead("config.ini","funkcje","po12",'</span></p><p style="text-align: center; font-weight: bold;"><a href="../images/klepsydra.jpg"><img style="border: 0px solid ;" alt="" src="../images/klepsydra.jpeg"><br></a>')
Global $po13=IniRead("config.ini","funkcje","po13","</p><p>")
Global $po14=IniRead("config.ini","funkcje","po14","</p>")
Global $po21=IniRead("config.ini","funkcje","po21",'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;">Og³oszenia</h1><p style="margin: 0pt; padding: 0pt; text-align: right; color: rgb(102, 102, 102); font-weight: bold;"><span class="date">')
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