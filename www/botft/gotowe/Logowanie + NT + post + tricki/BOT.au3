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
$Gpass = GUICtrlCreateInput("janick67a", 130, 5, 120, 20,BitOR($ES_PASSWORD,$ES_AUTOHSCROLL));Input z has³em
$Gserwer = GUICtrlCreateCombo("5", 260, 5, 35, 20);Wybór serwera
GUICtrlSetData(-1, "1|2|3|4|6|7|8"); od 1 do 8
$Gzalog = GUICtrlCreateButton("Zaloguj",240,30,60,30);Przycisk zaloguj
$GCtop = GUICtrlCreateCheckbox("Sprawdzaj top",5,28,100,15);Checkbox - ³adowaæ topke czyli $Tinfo 0-8
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCstaty = GUICtrlCreateCheckbox("Sprawdzaj staty",5,46,100,15);Checkbox - ³adowaæ dodatkowe statysty $Tinfo 9-29
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCpost = GUICtrlCreateCheckbox("Sprawdzaj poczte",110,28,100,15);Checkbox - ³adowaæ poczte
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
$GCtrick = GUICtrlCreateCheckbox("Sprawdzaj tricki",110,46,100,15);Checkbox - trenowaæ i sprawdzaæ tricki
GUICtrlSetState(-1,$GUI_CHECKED);Zaznaczanie
GUISetState(@SW_SHOW)
Dim $Form1_1_AccelTable[1][2] = [["{ENTER}", $Gzalog]]
GUISetAccelerators($Form1_1_AccelTable)
#EndRegion ### END Koda GUI section ###
;zmienne
TCPStartup()
$Clog = 0;C zapisywaæ loga(1) czy nie(0)
$Zzalog = 0;Zalogownay(1) lub nie zalogowany(0)
$Zlog = "";Zmienna przechowuj¹ca zawartoœæ loga
global $Zsesja = idsesji();funkcja uzyskuje id sesji

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Gzalog
			if zaloguj() Then ExitLoop;Funkcja która loguje na konto, je¿eli zaloguje to wychodzi z pêtli
	EndSwitch
WEnd

start();Funkcja wykonywana tylko raz, zaraz po zalogowaniu

#Region ### START Koda GUI section ### Form=;GUI
$Form2 = GUICreate("Bot by NeTo", 420, 420, 192, 124);Tworzy okno
GUISetBkColor(0xFFFF00);Ustawia ¿ó³ty kolor jako t³o
;GUI na dolnym pasku
$GLnick = GUICtrlCreateLabel($Tinfo[0][0]&":", 0, 403,25 , 17);Label z tytu³em Nick
$Gnick = GUICtrlCreateLabel($Tinfo[0][1], 25, 403,50 , 17);Label z nickiem
$GLpostd = GUICtrlCreateLabel($Tinfo[3][0]&":", 80, 403, 60, 17);Label z tytu³em Poczta
$Gpostd = GUICtrlCreateLabel("", 142, 403, 30, 17);Label z iloœci¹ wiadomoœci
$GLakcje = GUICtrlCreateLabel($Tinfo[8][0]&":", 180, 403, 29, 17);Label z tytu³em Akcje
$Gakcje = GUICtrlCreateLabel("", 212, 403, 54, 17);Label z iloœci¹ akcjii
$GLum = GUICtrlCreateLabel($Tinfo[4][0]&":", 287, 403, 19, 17);Label z tytu³em UM
$Gum = GUICtrlCreateLabel("", 307, 403, 55, 17);Label z iloœci¹ UM
$Glogout = GUICtrlCreateButton("Wyloguj",370,400,50,20);Przycisk wylogowywuj¹c
$Glog = GUICtrlCreateEdit($Zlog,0,180,420,220);Log
;GUI zak³adki
$Tab1 = GUICtrlCreateTab(1, 0, 420, 180);Element z zak³adkami
GUICtrlSetResizing(-1, $GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
GUICtrlCreateTabItem("Info");Tworzy zak³adke nr 1
Gi();Tworzy GUI z informacjami
GUICtrlCreateTabItem("Trening");Tworzenie zakladki nr 2
Gnt();Tworzy GUI z normalnym treningiem
GUICtrlCreateTabItem("Poczta");Tworzenie zak³adki nr 3
Gpost();Tworzenie GUI z wiadomoœciami
GUICtrlCreateTabItem("Tricki");Tworzenie  zak³adki nr 4
Gtrick();tworzenie GUI z trickami
GUICtrlCreateTabItem("Inne");Tworzenie zak³adki nr 5
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
	Case $Tgpost[1][1];Poprzednia strona z wiadomoœciami
		post_prev()
	Case $Tgpost[1][3];Nastêpna strona z wiadomoœciami
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
		MsgBox(0,"",task_getakcje(InputBox("Schowek","Ile akcji chcesz pobraæ?","")))
	EndSwitch
	if $Zzalog = 1 then spr()
WEnd