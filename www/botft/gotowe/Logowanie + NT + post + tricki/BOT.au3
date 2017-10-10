;Biblioteki
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include "FT_nt.au3"
#include "FT_trick.au3"
#include "FT_post.au3"
#include "FT_task.au3"
#include "FT.au3"

#Region ### START Koda GUI section ### 
$Form1 = GUICreate("Form1", 300, 65, 550, 250)
$Gemail = GUICtrlCreateInput("janick67a@interia.pl", 5, 5, 120, 20);Input z emailem
$Gpass = GUICtrlCreateInput("janick67a", 130, 5, 120, 20,BitOR($ES_PASSWORD,$ES_AUTOHSCROLL));Input z has�em
$Gserwer = GUICtrlCreateCombo("5", 260, 5, 35, 20);Wyb�r serwera
GUICtrlSetData(-1, "1|2|3|4|6|7|8"); od 1 do 8
$Gzalog = GUICtrlCreateButton("Zaloguj",240,30,60,30);Przycisk zaloguj
$GCtop = GUICtrlCreateCheckbox("Sprawdzaj top",5,28,100,15);Checkbox - �adowa� topke czyli $Tinfo 0-8
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCstaty = GUICtrlCreateCheckbox("Sprawdzaj staty",5,46,100,15);Checkbox - �adowa� dodatkowe statysty $Tinfo 9-29
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCpost = GUICtrlCreateCheckbox("Sprawdzaj poczte",110,28,100,15);Checkbox - �adowa� poczte
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCtrick = GUICtrlCreateCheckbox("Sprawdzaj tricki",110,46,100,15);Checkbox - trenowa� i sprawdza� tricki
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
GUISetState(@SW_SHOW)
Dim $Form1_1_AccelTable[1][2] = [["{ENTER}", $Gzalog]]
GUISetAccelerators($Form1_1_AccelTable)
#EndRegion ### END Koda GUI section ###
;zmienne
TCPStartup()
$Clog = 0;C zapisywa� loga(1) czy nie(0)
$Zzalog = 0;Zalogownay(1) lub nie zalogowany(0)
$Zlog = "";Zmienna przechowuj�ca zawarto�� loga
global $Zsesja = idsesji();funkcja uzyskuje id sesji

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Gzalog
			if zaloguj() Then ExitLoop;Funkcja kt�ra loguje na konto, je�eli zaloguje to wychodzi z p�tli
	EndSwitch
WEnd

start();Funkcja wykonywana tylko raz, zaraz po zalogowaniu

#Region ### START Koda GUI section ### Form=;GUI
$Form2 = GUICreate("Bot by NeTo", 420, 420, 192, 124);Tworzy okno
GUISetBkColor(0xFFFF00);Ustawia ��ty kolor jako t�o
;GUI na dolnym pasku
$GLnick = GUICtrlCreateLabel($Tinfo[0][0]&":", 0, 403,25 , 17);Label z tytu�em Nick
$Gnick = GUICtrlCreateLabel($Tinfo[0][1], 25, 403,50 , 17);Label z nickiem
$GLpostd = GUICtrlCreateLabel($Tinfo[3][0]&":", 80, 403, 60, 17);Label z tytu�em Poczta
$Gpostd = GUICtrlCreateLabel("", 142, 403, 30, 17);Label z ilo�ci� wiadomo�ci
$GLakcje = GUICtrlCreateLabel($Tinfo[8][0]&":", 180, 403, 29, 17);Label z tytu�em Akcje
$Gakcje = GUICtrlCreateLabel("", 212, 403, 54, 17);Label z ilo�ci� akcjii
$GLum = GUICtrlCreateLabel($Tinfo[4][0]&":", 287, 403, 19, 17);Label z tytu�em UM
$Gum = GUICtrlCreateLabel("", 307, 403, 55, 17);Label z ilo�ci� UM
$Glogout = GUICtrlCreateButton("Wyloguj",370,400,50,20);Przycisk wylogowywuj�c
$Glog = GUICtrlCreateEdit($Zlog,0,180,420,220);Log
;GUI zak�adki
$Tab1 = GUICtrlCreateTab(1, 0, 420, 180);Element z zak�adkami
GUICtrlSetResizing(-1, $GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
GUICtrlCreateTabItem("Info");Tworzy zak�adke nr 1
Gi();Tworzy GUI z informacjami
GUICtrlCreateTabItem("Trening");Tworzenie zakladki nr 2
Gnt();Tworzy GUI z normalnym treningiem
GUICtrlCreateTabItem("Poczta");Tworzenie zak�adki nr 3
Gpost();Tworzenie GUI z wiadomo�ciami
GUICtrlCreateTabItem("Tricki");Tworzenie  zak�adki nr 4
Gtrick();tworzenie GUI z trickami
GUICtrlCreateTabItem("Inne");Tworzenie zak�adki nr 5
gtask();tworzenie GUI z zadaniami
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

start2()

While 1 
	$nMsg = GUIGetMsg()
	Switch $nMsg
	Case $GUI_EVENT_CLOSE
		Exit
	Case $Gnt
		nt_start();Funkcja wykonywana zaraz przed utworzeniem GUI
	Case $Tgpost[1][1];Poprzednia strona z wiadomo�ciami
		post_prev()
	Case $Tgpost[1][3];Nast�pna strona z wiadomo�ciami
		post_next()
	Case $Gtrick_b
		trick_learn(_ArraySearch($Ttrick,GUICtrlRead($Gtrick),0,0,0,0,1,0))
	Case $Gtask_tk
		MsgBox(0,"",task_tk())
	Case $Gtask_mp
		MsgBox(0,"",task_pensjamenagera())
	Case $Gtask_pm
		MsgBox(0,"",task_premia())
	Case $Gtask_ps 
		MsgBox(0,"",task_slawa())
	Case $Gakcje
		MsgBox(0,"",task_getakcje(InputBox("Schowek","Ile akcji chcesz pobra�?","")))
	EndSwitch
	if $Zzalog = 1 then spr()
WEnd