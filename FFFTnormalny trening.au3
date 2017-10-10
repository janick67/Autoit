#Include <FF.au3>
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Form1", 151, 126, 860, 317)
$start = GUICtrlCreateButton("Start", 64, 98, 75, 25, $WS_GROUP)
$um1 = GUICtrlCreateCombo(IniRead("has³o.ini","ostatnie","u1","u1"), 10, 49, 130, 21)
GUICtrlSetData(-1, "Atak|Obrona|Podania|Bronienie|Kondycja|Skutecznoœæ|Szybkoœæ|Celnoœæ|Doœrodkowywania|Strza³y")
$um2 = GUICtrlCreateCombo(IniRead("has³o.ini","ostatnie","u2","u2"), 10, 73, 130, 21)
GUICtrlSetData(-1, "Atak|Obrona|Podania|Bronienie|Kondycja|Skutecznoœæ|Szybkoœæ|Celnoœæ|Doœrodkowywania|Strza³y")
$il = GUICtrlCreateInput(IniRead("has³o.ini","ostatnie","ile","ile"), 10, 99, 41, 21)
$gemail = GUICtrlCreateInput(IniRead("has³o.ini","ostatnie","email","E-mail"), 10, 3, 130, 20)
$gpass = GUICtrlCreateInput(IniRead("has³o.ini","ostatnie","has³o","Has³o"), 10, 26, 130, 20)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
	  
run("C:\Program Files\Mozilla Firefox\firefox.exe")
while 1
	  if GUIGetMsg()=$start Then
		  $u1 = GUICtrlRead($um1)
		  Switch GUICtrlRead($um1)
	  case "Atak"
		  $u1=2
	  Case "Obrona"
		  $u1=3
	  Case "Podania"
		  $u1=4
	  Case "Bronienie"
		  $u1=5
	  Case "Kondycja"
		  $u1=6
	  Case "Skutecznoœæ"
		  $u1=7
	  Case "Szybkoœæ"
		  $u1=8
	  Case "Celnoœæ"
		  $u1=9
	  Case "Doœrodkowywania"
		  $u1=10
	  Case "Strza³y"
		  $u1=11
		  EndSwitch
		
$u2 = GUICtrlRead($um2)
		  Switch GUICtrlRead($um2)
	  case "Atak"
		  $u2=2
	  Case "Obrona"
		  $u2=3
	  Case "Podania"
		  $u2=4
	  Case "Bronienie"
		  $u2=5
	  Case "Kondycja"
		  $u2=6
	  Case "Skutecznoœæ"
		  $u2=7
	  Case "Szybkoœæ"
		  $u2=8
	  Case "Celnoœæ"
		  $u2=9
	  Case "Doœrodkowywania"
		  $u2=10
	  Case "Strza³y"
		  $u2=11
		  EndSwitch
		$ile=GUICtrlRead($il)
		if $u1 = $u2 then $u2 +=1
			if $u2 > 11 then $u2 = 2
		$email=GUICtrlRead($gemail)
	  $pass=GUICtrlRead($gpass)
	  iniWrite("has³o.ini","ostatnie","email",$email)
	  IniWrite("has³o.ini","ostatnie","has³o",$pass)
	  iniWrite("has³o.ini","ostatnie","u1",$u1)
	  IniWrite("has³o.ini","ostatnie","u2",$u2)
	  iniWrite("has³o.ini","ostatnie","ile",$ile)
		  ExitLoop
	  EndIf
WEnd

_FFStart("http://s5.footballteam.pl/","","",1)

If _FFIsConnected() Then
	_FFSetValue($email, "email","name")
	_FFSetValue($pass, "pass","name")
	_FFFormSubmit()
	If  not _FFSearch("Aby móc kontynuowaæ trening kliknij w odpowiedni obrazek." ) Then
		_FFopenurl("http://s5.footballteam.pl/trening_normal.php")
	for $i=0 to $ile/2
		ToolTip($i)
		GUICtrlSetData($il,$ile-2-$i*2)
	_FFClick(_FFXpath('//*[@id="wczytaj_liste"]/table/tbody/tr['&$u1&']/td[5]/a',"",9) ) 
_FFClick(_FFXpath('//*[@id="wczytaj_liste"]/table/tbody/tr['&$u2&']/td[5]/a',"",9) ) 
Sleep(20000)
Next
	Sleep(1000)
	_FFWindowClose()
	MsgBox(0,"","Koniec")
	Exit
Else
	MsgBox(0,"","Blokada przed chetami."&@LF&"Aby móc kontynuowaæ trening kliknij w odpowiedni obrazek.")
	EndIf
Else
	MsgBox(0,"Error:", "Can't connect to FireFox!")
EndIf
