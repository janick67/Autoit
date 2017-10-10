#include<misc.au3>
#include <GUIConstantsEx.au3>
dim $start [6]
dim $tab [6]
GUICreate("Test",600,500)
GUICtrlCreateTab(20,20,300,200)
$tab[0]=GUICtrlCreateTabItem("1")
$start[0]=GUICtrlCreateButton("Start",0,250,600,250)
$tab [1]=GUICtrlCreateTabItem("2")
$start[1]=GUICtrlCreateButton("Start",0,250,600,250)
$tab[2]=GUICtrlCreateTabItem("3")
$start[2]=GUICtrlCreateButton("Start",0,250,600,250)
$tab[3]=GUICtrlCreateTabItem("4")
$start[3]=GUICtrlCreateButton("Start",0,250,600,250)
$label = GUICtrlCreateLabel("0:00",290,230,40,40)
$tab[4]=GUICtrlCreateTabItem("5")
$start[4]=GUICtrlCreateButton("Start",0,250,600,250)
$tab[5]=GUICtrlCreateTabItem("6")
$start[5]=GUICtrlCreateButton("Kliknij 6 razy",0,250,600,250)
GUISetState(@SW_SHOW)
$stan=0
$czas=0
$zak=0
while 1
	$msg = GUIGetMsg()
		$m = GUIGetCursorInfo("Test")
		if $msg=$GUI_EVENT_CLOSE then Exit
			
		for $i=0 to 6 
			if $m[1]>21 and $m[1]<40 and $m[0]>21+($i*43) and $m[0]<21+(($i+1)*43) and _IsPressed(01) Then  
				Sleep(20)
				if _IsPressed(01) then 
					$stan=0
					$zak=$i
					EndIf
				EndIf
			Next

	if _IsPressed(01) or _IsPressed("0D") and $stan=0 and $m[0]<600 and $m[0]>0 and $m[1]>250 and $m[1]<500  Then start($zak)
		if _IsPressed(01) or _IsPressed("0D") and $stan=1 and $m[0]<600 and $m[0]>0 and $m[1]>250 and $m[1]<500 Then stop($zak)
	WEnd
	
	Func start($zak)
		Switch $zak 
			Case 0 ;gotowe kolor
		$stan=1
		$random= Random(1,50)
		GUICtrlSetBkColor($start[$zak], 0xFFFF00)
		GUICtrlSetData($start[$zak],"Gotowy?")
		Sleep($random*100)	
		GUICtrlSetBkColor($start[$zak], 0x00FF00)
	GUICtrlSetData($start[$zak],"Klikaj szybko!!!")
	$czas=TimerInit()	
Case 1 ;gotowe dŸwiêk
	$stan=1
		$random= Random(1,50)
		GUICtrlSetBkColor($start[$zak], 0xFFFF00)
		GUICtrlSetData($start[$zak],"Gotowy?")
		Sleep($random*100)	
Beep(100,100)
	$czas=TimerInit()	
case 2 ;gotowe kolor i dŸwiêk
		$stan=1
		$random= Random(1,50)
		GUICtrlSetBkColor($start[$zak], 0xFFFF00)
		GUICtrlSetData($start[$zak],"Gotowy?")
		Sleep($random*100)	
	GUICtrlSetBkColor($start[$zak], 0x00FF00)
	GUICtrlSetData($start[$zak],"Klikaj szybko!!!")
Beep(100,100)
	$czas=TimerInit()	
case 3 ;do poprawy czekaj 5 sek
	$stan=1
		GUICtrlSetBkColor($start[$zak], 0xFFFF00)
		for $i=0 to 5000 step 10
			Sleep(10)
		GUICtrlSetData($label,$i)	
	Next
	$czas=TimerInit()
case 4
$stan=1
		GUICtrlSetBkColor($start[$zak], 0xFFFF00)
		GUICtrlSetData($start[$zak],"Po 5 sekundach od startu naciœnij")
		$czas=TimerInit()
	case 5
		$stan=2
		$ak=0
		$klik=0
		GUICtrlSetBkColor($start[$zak], 0xFFFF00)
		GUICtrlSetData($start[$zak],"Jeszcze 6 klików")
		$czas=TimerInit()
While $klik<5
While _IsPressed(01)
do 
Until not _IsPressed(01)
	$klik+=1
WEnd
WEnd
stop($zak)
	EndSwitch
EndFunc


	func stop($zak)
		$stan=0
		$czas=Int(TimerDiff($czas)/10)
		GUICtrlSetBkColor($start[$zak], 0xFF0000)
		GUICtrlSetData($start[$zak],"Start")
		MsgBox(0,"",$czas/100)
		
	EndFunc