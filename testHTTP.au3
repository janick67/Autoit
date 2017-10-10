#include "GUIConstantsEx.au3"
$GUIMain=GUICreate( "Test obs�ugi zdarze�",600,500 )
$GUIEdit=GUICtrlCreateEdit( "Logi:" & @CRLF, 10, 20, 580, 400)
$GUIProg=GUICtrlCreateProgress (10, 5, 580, 10)
$GUIExit=GUICtrlCreateButton(" Koniec ", 250, 450, 80, 30)
GUISetState()
 
#include "GUIConstantsEx.au3"
$GUIMain=GUICreate( "Test obs�ugi zdarze�",600,500 )
$GUIEdit=GUICtrlCreateEdit( "Logi:" & @CRLF, 10, 20, 580, 400)
$GUIProg=GUICtrlCreateProgress (10, 5, 580, 10)
$GUIExit=GUICtrlCreateButton(" Koniec ", 250, 450, 80, 30)
GUISetState()
 
$oIE=ObjCreate("InternetExplorer.Application.1")
With $oIE
   .Visible=1
   .Top = (@DesktopHeight-400)/2
   .Height=400 ;wysoko�� GUI IE
   .Width=600  ;szeroko�� GUI IE
   .Silent=1 ;nie pokazuj okien dialogowych IE
   $IEWnd=HWnd(.hWnd) ;zapami�tanie uchwytu okna IE
EndWith
 
;wybieramy interfejs o nazwie 'DWebBrowserEvents'
;AutoIt, by� mo�e, nie potrafi�by znale�� samodzielnie prawid�owego interfejsu
$EventObject=ObjEvent($oIE,"IEEvent_","DWebBrowserEvents")
if @error then
   Msgbox(0,"AutoIt COM test", _
   "Nie mo�na u�y� interfejsu 'DWebBrowserEvents'. Kod b��du: " & hex(@error,8))
Exit
endif
 
$URL = "http://www.AutoItScript.com/" ;adres strony do wczytania
$oIE.Navigate( $URL )
sleep(2000) ;czekanie na za�adowanie strony
 
GUISwitch( $GUIMain )
 
;oczekiwanie na zamkni�cie GUI
Do
   $msg=GUIGetMsg()
Until $msg=$GUI_EVENT_CLOSE Or $msg=$GUIExit
 
$EventObject.Stop ;zako�czenie odbierania zdarze�
$EventObject=0 ;likwidacja obiektu
If WinExists($IEWnd) then $oIE.Quit ;zamkni�cie okna IE
$oIE=0 ;likwidacja obiektu
 
GUIDelete() ;likwidacja GUI
 
Exit ;koniec skryptu
 
;funkcje do obs�ugi zdarze�
 
Func IEEvent_BeforeNavigate( $URL, $Flags, $TargetFrameName, $PostData, $Headers, $Cancel )
;Uwaga: deklaracja jest r�na od tej w witrynie MSDN (pomin�ty wska�nik do interfejsu IDispatch)
   GUICtrlSetData( $GUIEdit, "Do znalezienia: " & $URL & " Flags: " & $Flags & " tgframe: " & _
                             $TargetFrameName & " Postdat: " & $PostData & " Hdrs: " & $Headers & _
                             " canc: " & $Cancel & @CRLF , "append" )
EndFunc
 
Func IEEvent_ProgressChange( $Progress, $ProgressMax )
   If $ProgressMax > 0 Then
      GUICtrlSetData($GUIProg, ($Progress * 100) / $ProgressMax )
   EndIf
EndFunc
 
Func IEEvent_StatusTextChange($Text)
   If $Text Then GUICtrlSetData( $GUIEdit, "Opis stanu IE: " & $Text & @CRLF , "append" )
EndFunc
 
Func IEEvent_PropertyChange( $szProperty)
   GUICtrlSetData( $GUIEdit, "IE zmieni� warto�� w�a�ciwo�ci: " & $szProperty & @CRLF , "append" )
EndFunc
 
Func IEEvent_DownloadBegin()
   GUICtrlSetData( $GUIEdit, "IE rozpocz�� operacj� nawigacyjn�" & @CRLF , "append" )
EndFunc
 
Func IEEvent_DownloadComplete()
   GUICtrlSetData( $GUIEdit, "IE zako�czy� operacj� nawigacyjn�" & @CRLF , "append" )
EndFunc
 
Func IEEvent_NavigateComplete($URL)
;Uwaga: deklaracja jest r�na od tej w witrynie MSDN (pomin�ty wska�nik do interfejsu IDispatch)
   GUICtrlSetData( $GUIEdit, "IE zako�czy� �adowanie URL: " & $URL & @CRLF , "append" )
EndFunc
 
Func IEEvent_($EventName)
;nieobowi�zkowa funkcja przechwytywania nieokre�lonego zdarzenia, parametr zawiera nazw� zdarzenia
   GUICtrlSetData ( $GUIEdit, "Zdarzenie nieprzechwycone: " & $EventName & @CRLF , "append" )
EndFunc