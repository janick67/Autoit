#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
dim $Ginfo[30][2]
Dim $tnwsp[11][2]
Dim $twsp[11]
dim $tstaty[25]
dim $Ttrick[25][2] = [["Przewrotka","przewrotka"],["Drybling","drybling"],["Dooko³a œwiata","dookola"],["Krzy¿aczek","krzyzaczek"],["Przeplatanka","przeplatanka"],["Crossover","crossover"],["No¿yce","nozyce"],["Piêtka","pietka"],["Rabona","rabona"],["Trick Zidanea","zidanestrick"],["Wolej","wolej"],["Zwód","zwod"],["Podcinka","podcinka"],["Przerzutka","przerzutka"],["Kiwka","kiwka"],["Têcza","tecza"],["Elastico","elastico"],["Hokus Pokus","hokus"],["X Over","xover"],["Kopniêcie skorpiona","skorpion"],["Air","air"],["Sitdown","sitdown"],["Upper","upper"],["Ground","ground"],["Special","special"]]
dim $Tum[10]= ["Atak","Obrona","Podania","Bronienie","Kondycja","Skutecznoœæ","Szybkoœæ","Celnoœæ","Doœrodkowania","Strza³y"]
dim $post[100][5]
dim $Gpost[110][5]
dim $gracz[30][2] = [["Nick"],["ID"],["Ranking"],["Poczta"],["UM"],["Euro"],["Pot"],["Forma"],["Akcje"],["Schowek"],["S³awa"],["Pozycja"],["E-mail"],["Kraj"],["Premium"],["Klub"],["Wiek"],["Wartoœæ"],["Atak"],["Obrona"],["Podania"],["Bronieni"],["Celnoœæ"],["Strza³y"],["Doœrod."],["Skute."],["Kond."],["Szybk."],["Prod."],["Bank"]]
#Region ### START Koda GUI section ### Form=
$Form = GUICreate("Bot by NeTo", 420, 420, 192, 124)
GUISetBkColor(0xFFFF00)
$GLnick = GUICtrlCreateLabel("Nick: ", 0, 403,25 , 17)
$Gnick = GUICtrlCreateLabel("", 25, 403,50 , 17)
$GLpostd = GUICtrlCreateLabel("Wiadomoœci:", 80, 403, 60, 17)
$Gpostd = GUICtrlCreateLabel("", 142, 403, 30, 17)
$GLakcje = GUICtrlCreateLabel("Akcje:", 180, 403, 29, 17)
$Gakcje = GUICtrlCreateLabel("", 212, 403, 54, 17)
$GLum = GUICtrlCreateLabel("UM:", 287, 403, 19, 17)
$Gum = GUICtrlCreateLabel("", 307, 403, 55, 17)
$Glogout = GUICtrlCreateButton("Wyloguj",370,400,50,20)
$Glog = GUICtrlCreateEdit("",0,180,420,220)
$Tab1 = GUICtrlCreateTab(1, 0, 420, 180)
GUICtrlSetResizing(-1, $GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
GUICtrlCreateTabItem("Logowanie")
$Gemail = GUICtrlCreateInput("janick67a@interia.pl", 5, 25, 120, 20)
$Gpass = GUICtrlCreateInput("janick67a", 130, 25, 120, 20,BitOR($ES_PASSWORD,$ES_AUTOHSCROLL))
$Gserwer = GUICtrlCreateCombo("5", 260, 25, 35, 20)
GUICtrlSetData(-1, "1|2|3|4|6|7|8")
$Gzalog = GUICtrlCreateButton("Zaloguj",300,25,60,30)
$Greloadtop = GUICtrlCreateCheckbox("Sprawdzaj top",5,50,100,15) 
GUICtrlSetState(-1,$GUI_CHECKED)
$Grestaty = GUICtrlCreateCheckbox("Sprawdzaj staty",5,68,100,15) 
GUICtrlSetState(-1,$GUI_CHECKED)
$GCpost = GUICtrlCreateCheckbox("Sprawdzaj poczte",5,86,100,15) 
GUICtrlSetState(-1,$GUI_CHECKED)
$GCtrick = GUICtrlCreateCheckbox("Sprawdzaj tricki",5,104,100,15) 
GUICtrlSetState(-1,$GUI_CHECKED)
tgi()
gish(0)
GUICtrlCreateTabItem("Trening")
$GLum1 = GUICtrlCreateLabel("UM 1:",5,27,35,17)
$Gum1 = GUICtrlCreateCombo("Obrona", 40, 25, 100, 20)
GUICtrlSetData(-1, "Bronienie|Skutecznoœæ|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ")
$GLum2 = GUICtrlCreateLabel("UM 2:",145,27,35,17)
$Gum2 = GUICtrlCreateCombo("Skutecznoœæ", 180, 25, 100, 20)
GUICtrlSetData(-1, "Bronienie|Obrona|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ")
$GLile = GUICtrlCreateLabel("Ile PA z³u¿yæ:",290,27,65,17)
$Gile = GUICtrlCreateInput("150", 360, 25, 50, 20, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$Gnt = GUICtrlCreateButton("Trenuj", 50, 50, 320, 31, $WS_GROUP)
GUICtrlCreateTabItem("Poczta")
tpost()
GUICtrlCreateTabItem("Tricki")
$GLtrick = GUICtrlCreateLabel("Trick:",5,27,35,17)
$Gtrick = GUICtrlCreateCombo("", 40, 25, 100, 20)
$Gtrickb = GUICtrlCreateButton("Próbuj nauczyæ",150,25,100,30)
GUICtrlCreateTabItem("Inne")
$Gtk = GUICtrlCreateButton("Skorzystaj z treningu klubowego",5,25,180,20)
$GLtk = GUICtrlCreateLabel("",190,28,40,20)
$Gmp = GUICtrlCreateButton("Zap³aæ menad¿erowi",5,50,180,20)
$Gpm = GUICtrlCreateButton("Skorzystaj z premi",5,75,180,20)
$Gps = GUICtrlCreateButton("Przelicz s³awe",5,100,180,20)
$Gpg = GUICtrlCreateButton("Stocz pojedynek z gwiazd¹",5,125,180,20)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

TCPStartup()
$log = 1
$begin = ""
$ile = 0
$zalog = 0
$wtricki = ""
global $sesja = idsesii()

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		case $Gzalog
			if loguj(GUICtrlRead($Gemail),GUICtrlRead($Gpass),GUICtrlRead($Gserwer)) then
			$zalog = 1
			$restaty = GUICtrlRead($Grestaty)
			$reloadtop = GUICtrlRead($Greloadtop)
			$Ctrick = GUICtrlRead($GCtrick)
			$Cpost = GUICtrlRead($GCpost)
			gish(1)
			GUICtrlSetState($Gemail,$GUI_HIDE)
			GUICtrlSetState($Gpass,$GUI_HIDE)
			GUICtrlSetState($Gserwer,$GUI_HIDE)
			GUICtrlSetState($Gzalog,$GUI_HIDE)
			GUICtrlSetState($Greloadtop,$GUI_HIDE)
			GUICtrlSetState($Grestaty,$GUI_HIDE)
			GUICtrlSetState($GCpost,$GUI_HIDE)
			GUICtrlSetState($GCtrick,$GUI_HIDE)
			if $reloadtop = 1 then reloadtop()
			if $restaty = 1 then restaty()
			if $Cpost = 1 Then getpost()
				_ArrayDisplay($post)
			if $Ctrick = 1 Then 
			Global $tplik = "trick_"&$gracz[0][1]&".ini"
			if not FileExists($tplik) Then tcfile($tplik)
			tsprpost()
			tgetstaty()
		EndIf
			GUICtrlSetData($GLtk,"+"&iletk())
			GUICtrlSetData($Gile, $gracz[8][1])
			EndIf
		case $Glogout
			$zalog = 0
			gish(0)
			GUICtrlSetState($Gemail,$GUI_SHOW)
			GUICtrlSetState($Gpass,$GUI_SHOW)
			GUICtrlSetState($Gserwer,$GUI_SHOW)
			GUICtrlSetState($Gzalog,$GUI_SHOW)
			GUICtrlSetState($Greloadtop,$GUI_SHOW)
			GUICtrlSetState($Grestaty,$GUI_SHOW)
			GUICtrlSetState($GCpost,$GUI_SHOW)
			GUICtrlSetState($GCtrick,$GUI_SHOW)
			slog("Wylogowano")
		Case $Gnt
			slog("Rozpoczêto trening")
			start()
		Case $Gtk
			MsgBox(0,"",tk())
		Case $Gmp
			MsgBox(0,"",pensjamenagera())
		Case $Gpm
			MsgBox(0,"",premia())
		Case $Gps 
			MsgBox(0,"",slawa())
		Case $Gakcje
			MsgBox(0,"",getakcje(InputBox("Schowek","Ile akcji chcesz pobraæ?","")))
		case $Gpostd
			if $Cpost = 1 Then getpost()
			if $Ctrick = 1 Then tsprpost()
		Case $Gpost[10][4]
			$maxs = Floor($post[0][0]/6)
			if mod($post[0][0],6) > 0 then $maxs+=1
			if $maxs >= GUICtrlRead($Gpost[10][3])+1 Then
				GUICtrlSetData($Gpost[10][3],GUICtrlRead($Gpost[10][3])+1)
				vpost(GUICtrlRead($Gpost[10][3]))
			EndIf
		Case $Gpost[10][2]
			if GUICtrlRead($Gpost[10][3])-1 > 0 Then 
				GUICtrlSetData($Gpost[10][3],GUICtrlRead($Gpost[10][3])-1)
				vpost(GUICtrlRead($Gpost[10][3]))
			EndIf	
		Case $Gtrickb
			tucz(_ArraySearch($Ttrick,GUICtrlRead($Gtrick),0,0,0,0,1,0))
		EndSwitch
	if $zalog = 1 Then
		if $restaty = 1 and int(TimerDiff($restaty)/1000) >= 120 then restaty()
		if $reloadtop = 1 and int(TimerDiff($reload)/1000) >= 15 then reloadtop()
		if int(TimerDiff($begin)/1000) >= 15 and $begin<>"" and $ile > 0 Then task($um1,$um2)
		if $Ctrick = 1 Then
		if int(TimerDiff(IniRead($tplik,"ostatni","czas",""))/1000) >= IniRead($tplik,"ostatni","poziom","")*300 and $Ctrick = 1 and IniRead($tplik,"ostatni","czas","") <> "" Then tucz(_ArraySearch($Ttrick,IniRead($tplik,"ostatni","trick",""),0,0,0,0,1,0))
		EndIf
		$p = sprclickpost()
		if $p <> "" Then MsgBox(0,"",$p)
		EndIf
WEnd

func start()
	global $um1 = _ArraySearch($Tum,GUICtrlRead($Gum1))
	global $um2 = _ArraySearch($Tum,GUICtrlRead($Gum2))
	if $um1 = $um2 Then $um2=""
	Global $ile = GUICtrlRead($Gile)
	$Znt_time = 1
EndFunc

func przeloguj()
	if loguj(GUICtrlRead($Gemail),GUICtrlRead($Gpass),GUICtrlRead($Gserwer)) then
		slog("Zalogowano ponownie")
	Else
		slog("B³¹d przelogowania")
		EndIf
	EndFunc
	
func task($um1,$um2 = "")
				if trenuj($um1) Then $ile -= 1
			if $um2 <> "" Then 
				if trenuj($um2) Then $ile -= 1
			EndIf
			global $begin = TimerInit()
			GUICtrlSetData($Gile,$ile)
			WinSetTitle($Form,"",$ile&" - Bot by NeTo")
		EndFunc
		
func idsesii()
	$host = "s5.footballteam.pl"
	Local $kod = "GET / HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Connection: close" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
if $log Then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
Local $pcook = StringInStr($re,@CRLF&"Set-Cookie:")+14
Local $cook1 = StringMid($re,$pcook,StringInStr($re,";",1,1,$pcook)-$pcook)
slog("Uzyskano id sesji")
return $cook1
	EndFunc

func slog($string)
	GUICtrlSetData($Glog,@HOUR & ":" & @MIN & ":" & @SEC & " " & $string & @CRLF & GUICtrlRead($Glog))
EndFunc

func trenuj($um)
Local $kod = "GET /trening_normal_ajax.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
		Sleep(500)
Local $kod = "GET /trening_normal_ajax.php?sknew="&$um&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF 
local $re = hsend($host,$kod)
if $log then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
$reb = StringStripWS(StringTrimLeft($re,StringInStr($re,@crlf&@crlf)),8)
if $reb = "10" Then
	slog("Wytrenowano punkt umiejêtnoœci "&$Tum[$um])
	return 1
Else
	If StringInStr($re,"Nie mo¿esz trenowaæ jednocze¶nie dwóch tych samych umiejêtno¶ci.")>0 Then
		slog("B³¹d: Nie mo¿na trenowaæ jednoczeœnie dwóch tych samych umiejêtnoœci")
		Local $kod = "GET /trening_normal_ajax.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF 
		local $re = hsend($host,$kod)
		FileWrite("logza.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
;~ 		trenuj($um)
	ElseIf StringInStr($re,"Twoja sesja wygas³a. Zaloguj siê ponownie.")>0 Then
		slog("B³¹d: koniec sesji")
		loguj()
		Else
	slog("Jakiœ b³¹d")
	endif
	return 0
EndIf
	EndFunc

func loguj($email, $pass, $nrserwera = 5)
if $email = "" or $pass = "" Then return "Podaj email i has³o!"
	global $host = "s"&$nrserwera&".footballteam.pl"
Local $post="email="&StringReplace($email,"@","%40")&"&pass="&$pass&"&serwer=http%3A%2F%2Fs"&$nrserwera&".footballteam.pl%2Fstatystyki.php"
Local $kod = "POST /newsy.php HTTP/1.1" & @CRLF & "Host: " & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Content-Type: application/x-www-form-urlencoded"& @CRLF & "Content-Length: " & stringlen($post) & @CRLF & @CRLF & $post & @CRLF
local $re = hsend($host,$kod)
if $log Then FileWrite("log.txt",$kod&@CRLF&$re&@CRLF&@CRLF)
if StringInStr($re, "Podane dane s± niepoprawne.") > 0 Then
	slog("SprawdŸ dane")
	return 0
Else
	slog("Zalogowano")
	return 1
EndIf
	EndFunc
	
func hsend($host, $dane)
$sName_To_IP = TCPNameToIP($host)
$iSocket = TCPConnect($sName_To_IP, 80)
If $iSocket = -1 Then
   TCPCloseSocket($iSocket)
   Exit
EndIf
Local $BytesSent = TCPSend($iSocket, $dane)
If $BytesSent = 0 Then Exit
Local $sRecv = "", $sCurrentRecv
Local $i=1
While 1
   $sCurrentRecv = TCPRecv($iSocket, 500)
   If $sCurrentRecv <> "" Then 
	   $sRecv &= $sCurrentRecv
   Else
	   $i+=1
	   EndIf
	If  $i >=200 then ExitLoop 
   WEnd
   TCPCloseSocket($iSocket)
return $sRecv
	EndFunc
	
	func hsendb($host, $dane)
$sName_To_IP = TCPNameToIP($host)
$iSocket = TCPConnect($sName_To_IP, 80)
   TCPCloseSocket($iSocket)
	EndFunc
	
func reloadtop()
$kod = "GET /top_reload.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$re = StringTrimLeft($re,StringInStr($re,@crlf&@crlf))
$w = StringRegExp($re,"<a.*>(.*)</a>",1)
if $w <> 0  Then $gracz[0][1] = $w[0]
for $i = 2 to 9
$p = StringInStr($re,"</b>",0,$i)+4
$k = StringInStr($re,"<",0,1,$p)
$g = StringMid($re,$p,$k-$p)
$g = StringStripWS($g,8)
if $i < 9 Then
;~ 	$g = StringRegExpReplace($g,"\D","")
Else
	$k = StringInStr($g,"/")
	$gracz[9][1] = StringTrimLeft($g,$k)
	$g = StringLeft($g,$k-1)
	EndIf
$gracz[$i-1][1] = $g
	Next
setinfo()
slog("Odœwie¿ono")
global $reload = TimerInit()
	EndFunc
	
Func restaty()
$kod = "GET /statystyki.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)

$p3 = StringInStr($re,'S³awa: <b style="color: gold;">',0,1)+31
$k3 = StringInStr($re,'<',0,1,$p3)
$gracz[10][1] = StringMid($re,$p3,$k3-$p3)

$p = StringInStr($re,'25px;">',0,1)+7
$k = StringInStr($re,'<',0,1,$p)
$gracz[11][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'E-mail:</b></td><td>',0,1)+20
$k = StringInStr($re,'<',0,1,$p)
$gracz[12][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'width="15" /> ',0,1)+14
$k = StringInStr($re,'<',0,1,$p)
$gracz[13][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'Premium:</b></td><td>',0,1)+21
$k = StringInStr($re,'<',0,1,$p)
$gracz[14][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,"'player_box')",0,4)+15
$k = StringInStr($re,'<',0,1,$p)
$gracz[15][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,"nika:</b></td><td>",0,1)+18
$k = StringInStr($re,'<',0,1,$p)
$gracz[16][1]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,"zon):</b></td><td>",0,1)+18
$k = StringInStr($re,'<',0,1,$p)
$gracz[17][1]=StringMid($re,$p,$k-$p)

$p = StringInStr($re,'cellspacing="0">',0,1)+17
$k = StringInStr($re,'</table>',0,3,$p)
$w2 = StringMid($re,$p,$k-$p)
$w2 = StringStripWS($w2,8)
for $i = 18 to 28 
$p = StringInStr($w2,'</b></td><td>',0,$i-17)+13
$k = StringInStr($w2,'<',0,1,$p)
$gracz[$i][1]=StringMid($w2,$p,$k-$p)
Next

$kod = "GET /bank.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$p = StringInStr($re,'ue="')+4
$k = StringInStr($re,'"',0,1,$p)
$gracz[29][1] = StringMid($re,$p,$k-$p)
slog("Odœwie¿ono staty")
global $restaty = TimerInit()
setinfo()
	EndFunc
	
Func setinfo()
For $i=0 to 29
	GUICtrlSetData($Ginfo[$i][1],$gracz[$i][1])
Next
GUICtrlSetData($Gnick,$gracz[0][1])
GUICtrlSetData($Gum,$gracz[4][1])
GUICtrlSetData($Gpostd,$gracz[3][1])
GUICtrlSetData($Gakcje,$gracz[8][1])
EndFunc

func premia()
$kod = "GET /manager_ajax.php?bonus=tak HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$p = StringInStr($re,'20px;">')+7
$k = StringInStr($re,'<',0,1,$p)
$w = StringMid($re,$p,$k-$p)
return $w
EndFunc

func pensjamenagera()
$kod = "GET /manager_ajax.php?pensja=tak HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$p = StringInStr($re,'20px;">')+7
$k = StringInStr($re,'<',0,1,$p)
$w = StringMid($re,$p,$k-$p)
return $w
EndFunc

Func slawa()
$kod = "GET /slawa.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$p = StringInStr($re,'20px;">')+7
$k = StringInStr($re,'<',0,3,$p)
$w = StringMid($re,$p,$k-$p)
return $w
EndFunc

Func tk()
$kod = "GET /trening_ajax.php?v=tk&next=true HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$p = StringInStr($re,'20px;">')+7
$k = StringInStr($re,'<',0,1,$p)
$w = StringMid($re,$p,$k-$p)
return $w
EndFunc

Func iletk()
$kod = "GET /trening_ajax.php?v=tk HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$p = StringInStr($re,'<b>')+3
$k = StringInStr($re,' UM',0,1,$p)
$w = StringMid($re,$p,$k-$p)
return $w
EndFunc

func tgi()
	$l = 5
	$t = 23
	$w = 100
	$h = 17
	$d = 50
	for $i = 0 to 28
	if $i = 11 Then
		$t = 23
		$l = 150
		$d = 45
	ElseIf $i = 18 Then
	$Ginfo[29][0] = GUICtrlCreateLabel($gracz[29][0]&":",$l,$t,$w,$h)
	$Ginfo[29][1] = GUICtrlCreateLabel("",$l+$d,$t,$w,$h)
		$t = 23
		$l = 305
		$d = 45
	EndIf
	$Ginfo[$i][0] = GUICtrlCreateLabel($gracz[$i][0]&":",$l,$t,$w,$h)
	$Ginfo[$i][1] = GUICtrlCreateLabel("",$l+$d,$t,$w,$h)
	$t+=14
	Next
EndFunc

Func gish($o = 1)
	if $o = 0 Then Local $a = $GUI_HIDE
	if $o = 1 Then Local $a = $GUI_SHOW
	For $i = 0 to 29
		GUICtrlSetState($Ginfo[$i][0],$a)
		GUICtrlSetState($Ginfo[$i][0],$a)
		Next
	EndFunc
	
	func getakcje($ile)
	$post = "wycofaj="&$ile
	$kod = "POST /akcje_schowek.php?v=wyc HTTP/1.1" & @CRLF & "Host: s5.footballteam.pl" & @CRLF & "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" & @CRLF & "Content-Length: "& StringLen($post) & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF & $post & @CRLF
	$re = hsend($host,$kod)
	$p = StringInStr($re,'5px;">')+7
	$k = StringInStr($re,'<',0,1,$p)
	$w = StringMid($re,$p,$k-$p)
	return $w
	EndFunc
	
	
func getpost()
dim $post[100][5]	
$kod = "GET /poczta_ajax.php?Step=Recive HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$re = StringStripWS($re,5)
$re = StringReplace($re,@cr,"")
for $i=1 to 99
$p = StringInStr($re,'name="',0,$i)+6
$k = StringInStr($re,'"',0,1,$p)
$post[$i][0]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'<td>',0,1,$k)+4
$k2 = StringInStr($re,'<',0,1,$p)
$post[$i][1]=StringMid($re,$p,$k2-$p)
$p = StringInStr($re,'td >',0,1,$k)+4
$k = StringInStr($re,'<',0,1,$p)
$post[$i][2]=StringMid($re,$p,$k-$p)
$p = StringInStr($re,'<td>',0,1,$k)+4
$k = StringInStr($re,'</td>',0,1,$p)
$temat = StringMid($re,$p,$k-$p)
$post[$i][3] = $temat
if StringInStr($temat,"<b>") Then
	$post[$i][4] = 1
	$p = StringInStr($temat,'<b>',0,1)+3
	$k = StringInStr($temat,'<',0,1,$p)
	$temat = StringMid($temat,$p,$k-$p)
	$post[$i][3] = $temat
Else
	$post[$i][4] = 0
EndIf
if StringInStr($post[$i][0],".")>0 Then
$post[0][0] = $i-1
$post[$i][0] = ""
$post[$i][1] = ""
$post[$i][2] = ""
$post[$i][3] = ""
$post[$i][4] = ""
ExitLoop
EndIf
Next
slog("Pobrano wiadomoœci")
vpost(1)
		EndFunc
		
		func tpost()
	Global $Gpost[110][5]
	local $t = 43
	$Gpost[0][0] = GUICtrlCreateCheckbox("",10,25,15,17)
	$Gpost[0][1] = GUICtrlCreateLabel("Data",45,25,50,17)
	$Gpost[0][2] = GUICtrlCreateLabel("Autor",185,25,50,17)
	$Gpost[0][3] = GUICtrlCreateLabel("Temat",305,25,50,17)
	$Gpost[10][1] = GUICtrlCreateButton("Usuñ",10,150,40,25)
	$Gpost[10][2] = GUICtrlCreateButton("<-Poprzednia",120,150,80,25)
	$Gpost[10][3] = GUICtrlCreateLabel("1",211,159,20,17)
	$Gpost[10][4] = GUICtrlCreateButton("Nastêpna->",230,150,80,25)
	for $ii = 1 to 6
	$Gpost[$ii][0] = GUICtrlCreateCheckbox("",10,$t,15,15)
	GUICtrlSetState(-1,$GUI_HIDE)
	$Gpost[$ii][1] = GUICtrlCreateLabel("",45,$t,100,15)
	GUICtrlSetState(-1,$GUI_HIDE)
	$Gpost[$ii][2] = GUICtrlCreateLabel("",185,$t,100,15)
	GUICtrlSetState(-1,$GUI_HIDE)
	$Gpost[$ii][3] = GUICtrlCreateLabel("",305,$t,100,15)
	GUICtrlSetState(-1,$GUI_HIDE)
	$t+=18
	Next
EndFunc

Func vpost($strona)
	GUICtrlSetData($Gpost[10][3],$strona)
	$i = $strona * 6 - 5
	$ile = $i+5
	for $ii = 1 to 6
		if $i <= $post[0][0] Then
		GUICtrlSetData($Gpost[$ii][1],$post[$i][1])
		GUICtrlSetData($Gpost[$ii][2],$post[$i][2])
		GUICtrlSetData($Gpost[$ii][3],$post[$i][3])
		$i+=1
		EndIf
	Next
	spost($i - $strona * 6 + 5)
EndFunc

Func spost($ile)
	for $ii = 1 to 6
		If $ii <= $ile Then
		GUICtrlSetState($Gpost[$ii][0],$GUI_SHOW)
		GUICtrlSetState($Gpost[$ii][1],$GUI_SHOW)
		GUICtrlSetState($Gpost[$ii][2],$GUI_SHOW)
		GUICtrlSetState($Gpost[$ii][3],$GUI_SHOW)
		Else
		GUICtrlSetState($Gpost[$ii][0],$GUI_HIDE)
		GUICtrlSetState($Gpost[$ii][1],$GUI_HIDE)
		GUICtrlSetState($Gpost[$ii][2],$GUI_HIDE)
		GUICtrlSetState($Gpost[$ii][3],$GUI_HIDE)
		EndIf
		Next
	EndFunc
	
Func sprclickpost()
	$re = ""
	for $i = 1 to 6
		for $ii = 1 to 3
			if $nMsg = $Gpost[$i][$ii] then $re = readpost($post[(GUICtrlRead($Gpost[10][3]) * 6) - 6 + $i][0])
		Next
	Next
	Return $re
EndFunc

Func readpost($id)
	$kod = "GET /poczta_ajax.php?Step=Read&id=45581428 HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
	$re = hsend($host,$kod)
	$p = StringInStr($re,'15px;">')+7
	$k = StringInStr($re,'</div',0,1,$p)
	$w = StringMid($re,$p,$k-$p)
	$w = StringStripWS($w,5)
	$w = StringReplace($w,"<br />",@crlf)
	return $w
	EndFunc

func trickw($id, $poziom)
	Local $dos, $ws, $l, $trick
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0]
	for $i = 1 to $poziom
		$dos = IniRead($tplik,$trick&";"&$poziom,$i,"")
		$ws = StringSplit($dos,";",2)
		$l = int(UBound($ws)/2-0.5)
		$twsp[$i] = $ws[$l]
	Next
	$twsp[0] = $poziom
	Return $twsp
	EndFunc

func tricku($id, $poziom = 11)
	$trick = $id
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0]
	for $ii = 1 to $poziom - 1
		for $iii = 1 to $ii
			IniWrite($tplik,$trick&";"&$ii,$iii,"-")
		Next
	Next
EndFunc

Func trickl($id, $poziom, $wsp, $liczba, $opcja = 0)
	$trick = $id
	if StringInStr($trick,"Zidan") > 0 Then $trick = "Trick Zidanea"
	if StringIsInt($id) Then $trick = $Ttrick[$id-1][0]
	Local $dos = IniRead($tplik,$trick&";"&$poziom,$wsp,"")
	Local $ws = StringSplit($dos,";",2)
	Local $ml = _ArrayFindAll($ws,$liczba)
	if $ml = -1 or StringIsInt($dos) then return 0
	$ml = $ml[0]
	Switch $opcja
	Case 0
		_ArrayDelete($ws,$ml)
	Case 1
		for $i = 1 to $ml+1
		Local $mld = _ArrayFindAll($ws,$i)
		if $mld <> -1 Then _ArrayDelete($ws,$mld[0])
		Next
	case 2
		for $i = $ml+1 to 10
		local $mld = _ArrayFindAll($ws,$i)
		if $mld <> -1 Then _ArrayDelete($ws,$mld[0])
		Next
	case 3
		for $i = 1 to 10
		Local $mld = _ArrayFindAll($ws,$i)
		if $mld <> -1 and $i <> $liczba Then _ArrayDelete($ws,$mld[0])
		Next
	EndSwitch
	$dos2 = $dos
	$dos = ""
	for $i = 0 to UBound($ws)-1
		$dos &= $ws[$i]&";"
	Next
	$dos = stringleft($dos,stringlen($dos)-1)
	IniWrite($tplik,$trick&";"&$poziom,$wsp,$dos)
	return 1
EndFunc

func trickread($postid)
$kod = "GET /poczta_ajax.php?Step=Read&id="&$postid&" HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$w = StringStripWS($re,5)
$p = StringInStr($w,'15px;">')+7
$k = StringInStr($w,'</div',0,1,$p)
$w = StringMid($w,$p,$k-$p)

$p = StringInStr($w,'<b>',0,1)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$tnwsp[0][0] = $w2
$p = StringInStr($w,'<b>',0,2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
$w2 = StringReplace($w2,".","")
$tnwsp[0][1] = $w2

for $i = 1 to $tnwsp[0][1]*2
$p = StringInStr($w,'<b>',0,$i+2)+3
$k = StringInStr($w,'<',0,1,$p)
$w2 = StringMid($w,$p,$k-$p)
if StringIsInt($i/2) Then $tnwsp[$i/2][0] = $w2
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
	$tnwsp[$i/2+0.5][1] = $w2
EndIf
	Next	
Return $tnwsp
EndFunc

func tsprpost()
	local $autor = _ArrayFindAll($post,"Informacja","","","","",2)
	if $autor <> -1 Then
		for $i = 0 to UBound($autor)-1
			if $post[$autor[$i]][3] = "Raport z treningu" then 
				slog("Sprawdzono raporty z tricków nr "&$i+1)
				$tnwsp = trickread($post[$autor[$i]][0])
				if StringInStr($tnwsp[1][0],"ulacje") > 0 and IniRead($tplik,$Ttrick[$i-1][0]&";"&$tnwsp[0][1],1,"") <> "-" Then 
					tricku($tnwsp[0][0], $tnwsp[0][1]+1)
					slog("Gratulacje nauczy³eœ sie tricku "&$tnwsp[0][0]&" na poziomie "&$tnwsp[0][1])
					ContinueLoop
				EndIf
				$iz = 0
				for $ii = 1 to $tnwsp[0][1]
					$iz += trickl($tnwsp[0][0], $tnwsp[0][1], $ii, $tnwsp[$ii][0], $tnwsp[$ii][1])
				Next
				if $iz > 0 Then slog("Zapisano "&$iz&" zmian w pliku "&$tplik&" w tricku "&$tnwsp[0][0])
			EndIf
		Next
	Else
		slog("Nie masz wiadomoœci z treningu tricków")
	EndIf
	tgetstaty()
EndFunc

func tcfile($tplik)
	for $i = 1 to 25
		for $ii = 1 to 10
			for $iii = 1 to $ii
				$w = ""
				for $iiii = 1 to 10
					$w &= $iiii&";"
				Next
				$w = stringleft($w,stringlen($w)-1)
				IniWrite($tplik,$Ttrick[$i-1][0]&";"&$ii,$iii,$w)
			Next
		Next
	Next
	$kod = "GET /trening_ajax.php?v=tricki HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
	$re = hsend($host,$kod)
	$p = StringInStr($re,'ter">')+5
	$k = StringInStr($re,'</tab',0,1,$p)
	$w = StringMid($re,$p,$k-$p)
	$w = StringStripWS($w,8)
	for $i = 4 to 76
	$p = StringInStr($w,'</td><td>',0,$i)+9
	$k = StringInStr($w,'</td><td>',0,1,$p)
	$w2 = StringMid($w,$p,$k-$p)
	if StringIsInt(($i-1)/3) then
		if $w2 <> "Max" Then
			tricku(($i-1)/3,$w2)
		Elseif $w2 = "Max" Then
			tricku(($i-1)/3,11)
		EndIf
		EndIf
	Next
	slog("Utworzono nowy plik tricków "&$tplik)
EndFunc

func tgetstaty()
	for $i = 1 to 25
	for $poziom = 1 to 10
		$u = 0
			for $wsp = 1 to $poziom
			$re = IniRead($tplik,$Ttrick[$i-1][0]&";"&$poziom,$wsp,"")
			if $re <> "-" then $u = 1
			Next
			If $u = 0 and $poziom = 10 then $tstaty[$i-1] = 11
			if $u = 1 then 
				$tstaty[$i-1] = $poziom
				$poziom = 10
			EndIf
	Next
next
$p = -1
if $wtricki = "" Then
for $i=0 to 24
	if $tstaty[$i] < 11 Then 
	$wtricki &= "|"&$Ttrick[$i][0]
	EndIf
Next
$wtricki = StringTrimLeft($wtricki,1)
GUICtrlSetData($Gtrick, $wtricki)
EndIf
EndFunc

func tucz($id)
	Global $tplik = "trick_"&$gracz[0][1]&".ini"
	if not FileExists($tplik) Then tcfile($tplik)
	if $Cpost = 1 Then 
		$kod = "GET /trening_ajax.php?v=tricki HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
		$re = hsend($host,$kod)
		getpost()
		tsprpost()
	EndIf
		tgetstaty()
		$twsp = trickw($id+1,$tstaty[$id])
		$post = ""
		for $i = 1 to $tstaty[$id]
			$post &= "wsp_"&$i&"="&$twsp[$i]&"&"
		Next
		$post &= "Level="&$tstaty[$id]&"&Trick="&$Ttrick[$id][1]
		$kod = "POST /trening_ajax.php?v=tricki&V=Go HTTP/1.1" & @CRLF & "Host: s5.footballteam.pl" & @CRLF & "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" & @CRLF & "Content-Length: "& StringLen($post) & @CRLF & "Cookie: " & $sesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF & $post & @CRLF
		$re = hsend($host,$kod)
		slog("Rozpoczêto trening tricku "&$Ttrick[$id][0])
		IniWrite($tplik,"ostatni","czas",TimerInit())
		IniWrite($tplik,"ostatni","trick",$Ttrick[$id][0])
		IniWrite($tplik,"ostatni","poziom",$tstaty[$id])
	EndFunc