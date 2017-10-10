#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Misc.au3>
#Region ### START Koda GUI section ### Form=
dim $g[14]
dim $gp[14][4]
$gp[1][0]=16
$gp[1][1]=248
$gp[1][2]=35
$gp[1][3]=50
$g[0] = GUICreate("Form1", 500, 343, 485, 240, $WS_POPUPWINDOW)
$g[3] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\Trawa.bmp", 0, 297, 1400, 45, BitOR($SS_NOTIFY,$WS_GROUP,$WS_BORDER,$WS_CLIPSIBLINGS))
$g[2] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\Trawa.bmp", 216, 200, 100, 36, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[1] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\ja.bmp", $gp[1][0], $gp[1][1], $gp[1][2], $gp[1][3], BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[4] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\moneta.bmp", 80, 265, 20, 20, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[5] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\moneta.bmp", 112, 265, 20, 20, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[6] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\moneta.bmp", 148, 265, 20, 20, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[7] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\moneta.bmp", 231, 175, 20, 20, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[8] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\moneta.bmp", 275, 176, 20, 20, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[9] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\Potwór.bmp", 270, 248, 35, 50, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[10] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\Trawa.bmp", 808, 104, 100, 100, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[11] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\Trawa.bmp", 1121, 142, 100, 100, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[12] = GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\Trawa.bmp", 489, 141, 100, 100, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
$g[13]= GUICtrlCreatePic("C:\Documents and Settings\Admin\Pulpit\Trawa.bmp", 1281, 166, 100, 100, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
GUISetState(@SW_SHOW)
$juz=0
$sk=0
#EndRegion ### END Koda GUI section ###

While 1
$nMsg = GUIGetMsg()
Switch $nMsg
Case $GUI_EVENT_CLOSE
Exit

EndSwitch
p()
grawitacja()
skok()
WEnd
;~ MsgBox(0,"","po³o¿enie od lewej: "&$gp[1][0]&@LF&"od góry:  "&$gp[1][1]&@LF&"wymiary szerokoœæ:  "&$gp[1][2]&@LF&"wysokoœæ:  "&$gp[1][3])


func grawitacja()

   if $gp[1][1]<248 Then
	 
		 if $sk<>0 then 
			Sleep(10)
		 Else 
	  do
			  $gp[1][1]+=5
	   p()
   until $gp[1][1]=248
   $sk=0
			EndIf
	
	  EndIf
   EndFunc
   
func sko()
   if $gp[1][1]>120 Then
	  $gp[1][1]-=5
	   Sleep(10)
	   p()
   $sk=1
   EndIf
   EndFunc

func skok()
   Switch $sk
Case 1
   $gp[1][1]-=15
   $sk+=1
Case 2
   $gp[1][1]-=15
   $sk+=1
Case 3
   $gp[1][1]-=15
   $sk+=1
Case 4
   $gp[1][1]-=15
   $sk+=1
Case 5
   $gp[1][1]-=15
   $sk+=1
Case 6
   $gp[1][1]-=15
   $sk+=1
Case 7
   $gp[1][1]-=15
   $sk+=1
   $sk=0
   EndSwitch
   EndFunc


func p()
Select
Case _IsPressed(25) ;w lewo
   Sleep(100)
   if $gp[1][0]>0 Then
$gp[1][0]-=10
EndIf
Case _IsPressed(26) ;w góre

   $sk=1
Case _IsPressed(27) ;w prawo
Sleep(100)
   if $gp[1][0]<1400 Then
$gp[1][0]+=10
EndIf  
Case _IsPressed(28) ;w dó³
$gp[1][3]=25
If $juz=0 Then
$gp[1][1]+=25
EndIf
$juz=1
ToolTip($gp[1][1])
Case not _IsPressed(28)
$gp[1][3]=50
If $juz=1 Then
$gp[1][1]-=25
EndIf
$juz=0
EndSelect
 GUICtrlSetPos($g[1],$gp[1][0],$gp[1][1],$gp[1][2],$gp[1][3])
   EndFunc
   

	