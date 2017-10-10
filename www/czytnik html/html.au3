#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <TreeViewConstants.au3>
#include <WindowsConstants.au3>
#include <Array.au3>

Dim $Q[500][3] ;deklaracja zmiennej tablicowej 0-gui 1-pocz�tek 2-koniec
$plik="index.html" ;nazwa u�ywanego pliku 
$lQ=7 ;zmienna licz�ca �cie�ki w drzewku
$dirQ="3|4" ;�cie�ka

$Form1 = GUICreate("Form1", 436, 372, 191, 122)
$Q[3][0] = GUICtrlCreateTreeView(0, 0, 209, 313)
$Q[4][0] = GUICtrlCreateTreeViewItem($plik, $Q[3][0]) ;Pierwszy element drzewka
$Edit1 = GUICtrlCreateEdit("", 216, 0, 217, 313)
$Button1 = GUICtrlCreateButton("Button1", 184, 328, 75, 25, $WS_GROUP)
GUICtrlSetData(-1, "Edit1")
GUISetState(@SW_SHOW) ;Pokazanie okna
$plik=FileRead($plik)
;~ $plik=StringStripWS($plik,4)
MsgBox(0,"",$plik)
HMD() ;wywo�anie funkcji HMD
while 1 ;p�tla while nr 1
	Sleep(10)
	if GUICtrlRead($Edit1)<>StringMid($plik,$Q[GUICtrlRead($Q[3][0])][1],$Q[GUICtrlRead($Q[3][0])][2]-$Q[GUICtrlRead($Q[3][0])][1]+1) Then GUICtrlSetData($Edit1,StringMid($plik,$Q[GUICtrlRead($Q[3][0])][1],$Q[GUICtrlRead($Q[3][0])][2]-$Q[GUICtrlRead($Q[3][0])][1]+1))
	$nMsg = GUIGetMsg()
	Switch $nMsg
	Case $GUI_EVENT_CLOSE
		_ArrayDisplay($Q)
			Exit
	EndSwitch

	WEnd ;koniec p�tli while nr 1

func HFM($plik) ;funkcja HFM(Html Find Markup) szuka w pliku znacznik�w
Dim $znp[10000][3] ;deklaracja zmiennej tablicowej
$dp=StringLen($plik) ;sprawdzenie d�ugo�ci stringu
$i=1 ;zmienna odpowiadaj�ca za liczenie powt�rze�
do ;p�tla DO...Until nr 1
$pp=StringInStr($plik,"<",1,$i) ;Szukanie w stringu "<" czyli pocz�tku znacznik�w
$kp=StringInStr($plik,">",1,1,$pp) ;Szukanie w stringu ">" czyli ko�ca znacznik�w
$znp[$i][0]=StringMid($plik,$pp,$kp-$pp+1) ;tworzenie stringu ze znacznika od "<" do ">"
$znp[$i][1]=$pp
$znp[$i][2]=$kp
$i+=1 ;kolejny znacznik
Until $kp + 5 >= $dp ;koniec p�tli DO...Until nr 1 gdy koniec znacznika b�dzie bliski d�ugo�ci pliku
$znp[0][0]=$i-1 ;zapiasanie ilo�ci element�w
return $znp ;zwr�cenie warto�ci $znp
EndFunc ;koniec funkcji HFM

Func HMD() ;funkcja HMD(Html Make Dir)tworzy �cie�ke pliku
dim $zn[IniRead("html.ini","znaczniki",0,"")+1] ;deklaracja zmiennej tablicowej
$znp=HFM($plik) ;przypisanie warto�ci zwr�conej przez funkcjie HFM
for $i=0 to IniRead("html.ini","znaczniki",0,"") ;p�tla for nr 1
	$zn[$i]=IniRead("html.ini","znaczniki",$i,"");wczytanie znacznik�w z pliku
Next ;koniec p�tli for nr 1
for $i=1 to $znp[0][0] ;p�tla for nr 2
	for $ii=0 to $zn[0] ;p�tla for nr 3
	if StringInStr($znp[$i][0],$zn[$ii]) = 1 then ;If nr 1 je�eli znacznik jest zapisany w pliku to 1
		HAET($znp[$i][0]) ;wywo�anie funkcji HAET tworz�cej drzewko
		$Q[HRDA($dirQ)][1]=$znp[$i][1]
	ElseIf StringInStr(StringReplace($znp[$i][0],"/",""),$zn[$ii]) = 1 Then ;EIf nr 1je�eli znacznik z / jest zapisany w pliku to 1
		$Q[HRDA($dirQ)][2]=$znp[$i][2]
		$dirQ=HRDA($dirQ,"d") ;usuni�cie ostatniego elementu ze �cie�ki
	EndIf ;koniec if'a nr 1
	Next ;koniec p�tli for nr 3
Next ;koniec p�tli for nr 4
EndFunc ;koniec funkcji HMD

func HRDA($txt,$o="r",$a="") ;funkcja HRDA(Html Read Delete Ad) czyta, usuwa lub dodaje element do �cie�ki
	Switch $o ;Switch nr 1
	case "a" ;add(dodaj)
		Return($txt&"|"&$a);zwraca string scie�ki z dodanym elementem np. z 1|2|3 powstaje 1|2|3|4
	case "d" ;delete(usu�)
		$len=StringLen($txt) ;sprawdza d�ugo�c pliku
		$2pp=StringInStr($txt,"|",1,-1) ;szuka ostatniego znaku | w stringu �cie�ki
		$ntxt=StringTrimRight($txt,$len-$2pp+1) ;tworzy string z wszystkich element�w poza ostatnim elementem i | np. 1|2|3 usuwa |3 i jest 1|2
		Return($ntxt) ;zwraca string scie�ki z usunientym elementem np. 1|2
	Case "r" ;read(czytaj)
		$len=StringLen($txt) ;sprawdza d�ugo�c �cie�ki
		$2pp=StringInStr($txt,"|",1,-1) ;szuka ostatniego znaku | w stringu �cie�ki
		$ntxt=StringRight($txt,$len-$2pp) ;tworzy string z ostatniego elementu �cie�ki np. 1|2|3 usuwa 1|2| i dostaje 3
		Return($ntxt) ;zwraca ostatni string �cie�ki np. 3
	EndSwitch ;koniec switch'a nr 1
EndFunc ;koniec funkcji HRDA

func HAET($a) ;funkcja HAET(Html Ad Elements Tree) dodaje nowe elementy do drzewka
	$Q[$lQ][0]=GUICtrlCreateTreeViewItem($a, $Q[HRDA($dirQ)][0]) ;tworzenie elementu drzewka o warto�ci $a podlegaj�cego pod ostatni element �cie�ki i o nr $lQ 
	$dirQ=HRDA($dirQ,"a",$lQ) ;dodawanie nowego elementu do �cie�ki
	$lQ+=1 ;dodanie do $lQ 1
EndFunc ;koniec funkcji HAET