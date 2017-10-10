#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$f1 = GUICreate("Form1", 151, 50, 572, 337)
$gt = GUICtrlCreateLabel("GG", 10, 10, 20, 17)
$mt = GUICtrlCreateLabel("GG", 40, 10, 20, 17)
$st = GUICtrlCreateLabel("GG", 70, 10, 20, 17)
$gm = GUICtrlCreateLabel("00", 10, 30, 20, 17)
$mm = GUICtrlCreateLabel("00", 40, 30, 20, 17)
$sm = GUICtrlCreateLabel("00", 70, 30, 20, 17)
$start = GUICtrlCreateButton("start", 104, 8, 43, 17, $WS_GROUP)
$reset = GUICtrlCreateButton("reset", 104, 27, 43, 17, $WS_GROUP)
$opcje = GUICtrlCreateButton("opcje", 90, 22, 10, 10)
GUICtrlSetBkColor(-1, 0x808000)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
#Region ### START Koda GUI section ### Form=
$f2 = GUICreate("Form2", 189, 87, 557, 343)
$ok = GUICtrlCreateButton("ok", 144, 64, 35, 17, $WS_GROUP)
$Timer=GUICtrlCreateLabel("Timer",31,2,50,20)
$gti = GUICtrlCreateInput("", 5, 18, 20, 17)
$mti = GUICtrlCreateInput("", 35, 18, 20, 17)
$sti = GUICtrlCreateInput("", 65, 18, 20, 17)
$Alarm=GUICtrlCreateLabel("Alarm",131,2,50,20)
$ga = GUICtrlCreateInput("", 105, 18, 20, 17)
$ma = GUICtrlCreateInput("", 135, 18, 20, 17)
$sa = GUICtrlCreateInput("", 165, 18, 20, 17)
#EndRegion ### END Koda GUI section ###
$sec=-1
$min=-1
$hour=-1
$tsm=-1
$tmm=-1
$tgm=-1
$s=0
$g=0
$m=0
$e=0
dim $t[7]
$t[0]=(((@HOUR*60)+@MIN)*60)+@SEC
While 1
$t[4]=(((@HOUR*60)+@MIN)*60)+@SEC
	$nMsg = GUIGetMsg()
	Switch $nMsg
 Case $GUI_EVENT_CLOSE
	Exit
 Case $start
   start()
Case $reset
   reset()
case $opcje
GUISetState(@SW_SHOW,$f2)   
GUISetState(@SW_DISABLE,$f1)
Case $ok
   if GUICtrlRead($gti) > 24 Then MsgBox(0,"","ustawi³eœ "&guictrlread($gti)&" godzin w Timerze"&@LF&"to bardzo du¿o jesteœ pewien ¿e chcesz tyle ustawiæ")
	  $t[5]=(((GUICtrlRead($gti)*60)+GUICtrlRead($mti))*60)+GUICtrlRead($sti)
	  $t[5]+=$t[4]
   $t[6]=(((GUICtrlRead($ga)*60)+GUICtrlRead($ma))*60)+GUICtrlRead($sa)
GUISetState(@SW_Hide,$f2)   
GUISetState(@SW_enable,$f1)
WinActivate("Form1")
	EndSwitch
	q()
	w()
	s()
	st()
WEnd

func st()
   if $t[5] <> 0 Then
   if $t[5] = $t[4] then Beep(100,100)
	  
   EndIf
   if $t[6] <> 0 Then
	  if $t[6] = $t[4] then 
		 Beep(100,100)
		 EndIf
	  EndIf
   EndFunc

func s()
   if GUICtrlRead($gti) < 0 Then
	  GUICtrlSetData($gti,@hour)
   EndIf
    if GUICtrlRead($mti) < 0 or  GUICtrlRead($mti) > 60 Then
	  GUICtrlSetData($mti,@MIN)
   EndIf
    if GUICtrlRead($sti) < 0 or  GUICtrlRead($sti) > 60 Then
	  GUICtrlSetData($sti,@SEC)
   EndIf
   
    if GUICtrlRead($ga) < 0 or  GUICtrlRead($ga) > 24 Then
	  GUICtrlSetData($ga,@hour)
   EndIf
    if GUICtrlRead($ma) < 0 or  GUICtrlRead($ma) > 60 Then
	  GUICtrlSetData($ma,@MIN)
   EndIf
    if GUICtrlRead($sa) < 0 or  GUICtrlRead($sa) > 60 Then
	  GUICtrlSetData($sa,@SEC)
   EndIf
   EndFunc


func reset()
   guictrlsetdata($start,"start")
   $t[1]=0
   $t[2]=0
   $t[3]=0
   $t[5]=0
   $t[6]=0
   GUICtrlSetData($sm,"00")
   GUICtrlSetData($mm,"00")
   GUICtrlSetData($gm,"00")
   GUICtrlSetData($sti,"")
   GUICtrlSetData($mti,"")
   GUICtrlSetData($gti,"") 
   GUICtrlSetData($sa,"")
   GUICtrlSetData($ma,"")
   GUICtrlSetData($ga,"")
   EndFunc

func start()
   Switch GUICtrlRead($start)
Case "start"
	  GUICtrlSetData($start,"stop")
   Case "stop"  
	  $t[2]=$t[1]
	  GUICtrlSetData($start,"wznów")
   case "wznów"
	  $t[3]=$t[4]-$t[0]-$t[2]
	  GUICtrlSetData($start,"stop")
EndSwitch
EndFunc


func w()
   if GUICtrlRead($start)="stop" Then
	  $t[1]=$t[4]-$t[0]-$t[3]
	  If Mod($t[1],3600)-(Mod($t[1],3600)-Mod(Mod($t[1],3600),60)) <> GUICtrlRead($sm)  then 
		 GUICtrlSetData($sm,Mod($t[1],3600)-(Mod($t[1],3600)-Mod(Mod($t[1],3600),60)))
		 if (Mod($t[1],3600)-Mod(Mod($t[1],3600),60))/60 <> GUICtrlRead($mm) Then
			GUICtrlSetData($mm,(Mod($t[1],3600)-Mod(Mod($t[1],3600),60))/60) 
			if (($t[1]-Mod($t[1],3600))/3600)<>GUICtrlRead($gm) Then
			   GUICtrlSetData($gm,(($t[1]-Mod($t[1],3600))/3600))
			EndIf
		 EndIf
	  EndIf
   EndIf 
   EndFunc


func q()
   if GUICtrlRead($start)="start" Then
	  $t[0]=(((@HOUR*60)+@MIN)*60)+@SEC
	  If Mod($t[0],3600)-(Mod($t[0],3600)-Mod(Mod($t[0],3600),60)) <> GUICtrlRead($st)  then 
		 GUICtrlSetData($st,Mod($t[0],3600)-(Mod($t[0],3600)-Mod(Mod($t[0],3600),60)))
		 if (Mod($t[0],3600)-Mod(Mod($t[0],3600),60))/60 <> GUICtrlRead($mt) Then
			GUICtrlSetData($mt,(Mod($t[0],3600)-Mod(Mod($t[0],3600),60))/60) 
			if (($t[0]-Mod($t[0],3600))/3600)<>GUICtrlRead($gt) Then
			   GUICtrlSetData($gt,(($t[0]-Mod($t[0],3600))/3600))
			EndIf
		 EndIf
	  EndIf
   EndIf
EndFunc