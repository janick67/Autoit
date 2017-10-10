#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 420, 420, 192, 124)
GUISetBkColor(0xFFFF00)
$GLnick = GUICtrlCreateLabel("Nick: ", 0, 403,25 , 17)
$Gnick = GUICtrlCreateLabel("Ikazi", 25, 403,50 , 17)
$GLpost = GUICtrlCreateLabel("Wiadomoœci:", 80, 403, 60, 17)
$Gpost = GUICtrlCreateLabel("20", 142, 403, 30, 17)
$GLakcje = GUICtrlCreateLabel("Akcje:", 180, 403, 29, 17)
$Gakcje = GUICtrlCreateLabel("150/12446", 212, 403, 54, 17)
$GLum = GUICtrlCreateLabel("UM:", 287, 403, 19, 17)
$Gum = GUICtrlCreateLabel("123456789", 307, 403, 55, 17)
$Glogout = GUICtrlCreateButton("Wyloguj",370,400,50,20)
$Glog = GUICtrlCreateEdit("",0,180,420,220)
$ch = GUICtrlCreateCheckbox("",50,50,50,50)
$Tab1 = GUICtrlCreateTab(1, 0, 420, 180)
GUICtrlSetResizing(-1, $GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
GUICtrlCreateTabItem("Logowanie")
$Gemail = GUICtrlCreateInput("janick67a@interia.pl", 5, 25, 120, 20)
$Gpass = GUICtrlCreateInput("janick67a", 130, 25, 120, 20,BitOR($ES_PASSWORD,$ES_AUTOHSCROLL))
$Gserwer = GUICtrlCreateCombo("5", 260, 25, 35, 20)
GUICtrlSetData(-1, "1|2|3|4|6|7|8")
$Glog = GUICtrlCreateButton("Zaloguj",300,25,60,30)
GUICtrlCreateTabItem("Informacje")
$GLinfo = GUICtrlCreateLabel("Nick: "&@CRLF&"ID:"&@CRLF&"Ranking:"&@CRLF&"UM:"&@CRLF&"Euro:"&@CRLF&"Pot.:"&@CRLF&"Forma:"&@CRLF&"Akcje:"&@CRLF&"Klub:",5,25,60,120)
$Gnick = GUICtrlCreateLabel("Ikazi", 60, 25,300 , 17)
$Gid = GUICtrlCreateLabel("12345678", 60, 38, 300, 17)
$Grank = GUICtrlCreateLabel("2345", 60, 51, 300, 17)
$Gum = GUICtrlCreateLabel("123456789", 60, 64, 300, 17)
$Geuro = GUICtrlCreateLabel("2121526347", 60, 77, 300, 17)
$Gpot = GUICtrlCreateLabel("123456789pot", 60, 90, 300, 17)
$Gforma = GUICtrlCreateLabel("100%", 60, 103, 300, 17)
$Gakcje = GUICtrlCreateLabel("150/12446", 60, 116, 300, 17)
$Gklub = GUICtrlCreateLabel("ValorianLegends", 60, 129, 300, 17)
GUICtrlCreateTabItem("Trening")
$GLum1 = GUICtrlCreateLabel("UM 1:",5,27,35,17)
$Gum1 = GUICtrlCreateCombo("Obrona", 40, 25, 100, 20)
GUICtrlSetData(-1, "Bronienie|Skutecznoœæ|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ")
$GLum2 = GUICtrlCreateLabel("UM 1:",145,27,35,17)
$Gum2 = GUICtrlCreateCombo("Obrona", 180, 25, 100, 20)
GUICtrlSetData(-1, "Bronienie|Skutecznoœæ|Kondycja|Doœrodkowania|Podania|Atak|Strza³y|Celnoœæ|Szybkoœæ")
$GLum2 = GUICtrlCreateLabel("Ile PA z³u¿yæ:",290,27,65,17)
$Gile = GUICtrlCreateInput("150", 360, 25, 50, 20, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$Gok = GUICtrlCreateButton("Trenuj", 50, 50, 320, 31, $WS_GROUP)
$Gtp = GUICtrlCreateLabel("100%",375,92,35,17)
$Gpasek = GUICtrlCreateProgress(10, 90, 360, 17)
GUICtrlCreateTabItem("Tricki")
GUICtrlCreateTabItem("Inne")
$Gtk = GUICtrlCreateButton("Skorzystaj z treningu klubowego",5,25,180,20)
$GLtk = GUICtrlCreateLabel("+60",190,28,40,20)
$Gzm = GUICtrlCreateButton("Zap³aæ menad¿erowi",5,50,180,20)
$Gpm = GUICtrlCreateButton("Skorzystaj z premi",5,75,180,20)
$Gps = GUICtrlCreateButton("Przelicz s³awe",5,100,180,20)
$Gpg = GUICtrlCreateButton("Stocz pojedynek z gwiazd¹",5,125,180,20)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
While 1
$nMsg = GUIGetMsg()
Switch $nMsg
Case $GUI_EVENT_CLOSE
	Exit
Case $ch
	MsgBox(0,"",GUICtrlRead($ch))
EndSwitch
WEnd
