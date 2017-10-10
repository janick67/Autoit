#include "GUIConstantsEx.au3"
$GUIMain=GUICreate( "Test obs³ugi zdarzeñ",600,500 )
$GUIEdit=GUICtrlCreateEdit( "Logi:" & @CRLF, 10, 20, 580, 400)
$GUIProg=GUICtrlCreateProgress (10, 5, 580, 10)
$GUIExit=GUICtrlCreateButton(" Koniec ", 250, 450, 80, 30)
GUISetState()
 
#include "GUIConstantsEx.au3"
$GUIMain=GUICreate( "Test obs³ugi zdarzeñ",600,500 )
$GUIEdit=GUICtrlCreateEdit( "Logi:" & @CRLF, 10, 20, 580, 400)
$GUIProg=GUICtrlCreateProgress (10, 5, 580, 10)
$GUIExit=GUICtrlCreateButton(" Koniec ", 250, 450, 80, 30)
GUISetState()
 
$oIE=ObjCreate("InternetExplorer.Application.1")
With $oIE
   .Visible=1
   .Top = (@DesktopHeight-400)/2
   .Height=400 ;wysokoœæ GUI IE
   .Width=600  ;szerokoœæ GUI IE
   .Silent=1 ;nie pokazuj okien dialogowych IE
   $IEWnd=HWnd(.hWnd) ;zapamiêtanie uchwytu okna IE
EndWith
 
;wybieramy interfejs o nazwie 'DWebBrowserEvents'
;AutoIt, byæ mo¿e, nie potrafi³by znaleŸæ samodzielnie prawid³owego interfejsu
$EventObject=ObjEvent($oIE,"IEEvent_","DWebBrowserEvents")
if @error then
   Msgbox(0,"AutoIt COM test", _
   "Nie mo¿na u¿yæ interfejsu 'DWebBrowserEvents'. Kod b³êdu: " & hex(@error,8))
Exit
endif
 
$URL = "http://www.AutoItScript.com/" ;adres strony do wczytania
$oIE.Navigate( $URL )
sleep(2000) ;czekanie na za³adowanie strony
 
GUISwitch( $GUIMain )
 
;oczekiwanie na zamkniêcie GUI
Do
   $msg=GUIGetMsg()
Until $msg=$GUI_EVENT_CLOSE Or $msg=$GUIExit
 
$EventObject.Stop ;zakoñczenie odbierania zdarzeñ
$EventObject=0 ;likwidacja obiektu
If WinExists($IEWnd) then $oIE.Quit ;zamkniêcie okna IE
$oIE=0 ;likwidacja obiektu
 
GUIDelete() ;likwidacja GUI
 
Exit ;koniec skryptu
 
;funkcje do obs³ugi zdarzeñ
 
Func IEEvent_BeforeNavigate( $URL, $Flags, $TargetFrameName, $PostData, $Headers, $Cancel )
;Uwaga: deklaracja jest ró¿na od tej w witrynie MSDN (pominêty wskaŸnik do interfejsu IDispatch)
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
   GUICtrlSetData( $GUIEdit, "IE zmieni³ wartoœæ w³aœciwoœci: " & $szProperty & @CRLF , "append" )
EndFunc
 
Func IEEvent_DownloadBegin()
   GUICtrlSetData( $GUIEdit, "IE rozpocz¹³ operacjê nawigacyjn¹" & @CRLF , "append" )
EndFunc
 
Func IEEvent_DownloadComplete()
   GUICtrlSetData( $GUIEdit, "IE zakoñczy³ operacjê nawigacyjn¹" & @CRLF , "append" )
EndFunc
 
Func IEEvent_NavigateComplete($URL)
;Uwaga: deklaracja jest ró¿na od tej w witrynie MSDN (pominêty wskaŸnik do interfejsu IDispatch)
   GUICtrlSetData( $GUIEdit, "IE zakoñczy³ ³adowanie URL: " & $URL & @CRLF , "append" )
EndFunc
 
Func IEEvent_($EventName)
;nieobowi¹zkowa funkcja przechwytywania nieokreœlonego zdarzenia, parametr zawiera nazwê zdarzenia
   GUICtrlSetData ( $GUIEdit, "Zdarzenie nieprzechwycone: " & $EventName & @CRLF , "append" )
EndFunc