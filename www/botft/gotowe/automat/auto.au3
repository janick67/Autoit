#include "FT_nt.au3"
#include "FT_post.au3"
#include "FT_task.au3"
#include "FT_trick.au3"
#include "FT.au3"
FileWrite("log.txt",@CRLF&@CRLF)
Global $email = IniRead("bot.cfg","Dane","email","");Zapisuje email do zmiennej
Global $pass = IniRead("bot.cfg","Dane","pass","");Zapisuje has³o do zmiennej
Global $serw = IniRead("bot.cfg","Dane","serw","");Zapisuje nr serwera do zmiennej
Global $Task_tk = IniRead("bot.cfg","Config","tk","0");trening klubowy
Global $Task_wp = IniRead("bot.cfg","Config","wp","0");wyp³aæ pensje
Global $Task_sp = IniRead("bot.cfg","Config","sp","0");sprawdŸ premie
Global $Cnt = IniRead("bot.cfg","Config","nt","0");Trenowaæ NT
Global $um1 = IniRead("bot.cfg","NT","um1","");UM1
Global $um2 = IniRead("bot.cfg","NT","um2","");UM2
Global $um3 = IniRead("bot.cfg","NT","um3","");UM3
Global $nt_ile = IniRead("bot.cfg","NT","ile","");UM3
Global $Ctrick = IniRead("bot.cfg","Config","trick","0");Trenowaæ tricki
TCPStartup()
global $Zsesja = idsesji();funkcja uzyskuje id sesji
if not loguj($email,$pass,$serw) Then
	FileWrite("log.txt","Nie uda³o siê zalogowaæ"&@CRLF)
	Exit
EndIf
loadtop();£aduje podstawowe staty
if $Tinfo[0][1] = "" Then 
	loadtop()
	if $Tinfo[0][1] = "" Then Exit
EndIf
FileWrite("log.txt","Zalogowano na nick "&$Tinfo[0][1]&@CRLF)
task_slawa()
if $Task_tk = 1 then 
	task_tk()
	FileWrite("log.txt","Skorzystano z treningu klubowego."&@CRLF)
	EndIf
if $Task_wp = 1 Then
	task_pensjamenagera()
	FileWrite("log.txt","Wyp³acono pensje menagerowi."&@CRLF)
EndIf
if $Task_sp = 1 Then 
	task_premia()
	FileWrite("log.txt","Sprawdzono premie."&@CRLF)
EndIf

Global $Ztrick_file = "trick_"&$Tinfo[0][1]&".ini"
if $Ctrick = 1 then lvl_get()
if $Cnt = 1 Then
$um1 = _ArraySearch($Tnt_um,$um1);Pierwsza umiejêtnoœæ
$um2 = _ArraySearch($Tnt_um,$um2);Druga umiejêtnoœæ
$um3 = _ArraySearch($Tnt_um,$um3);Druga umiejêtnoœæ
if $um1 = $um3 or $um2 = $um3 Then $um3=-1;Trzecia umiejêtnoœæ nie mo¿e byæ taka sama jak druga i pierwsza
if $um1 = $um2 then $um2=-1
if $um1 = -1 Then 
	$Cnt = 0
Else
	global $Znt_time = 1
EndIf
if $um3 <> -1 Then
	FileWrite("log.txt","Rozpoczo³eœ trening "&$Tnt_um[$um1]&", "&$Tnt_um[$um2]&" i "&$Tnt_um[$um3]&", przeznaczy³eœ na nie "&$nt_ile&" PA")
ElseIf $um2 <> -1 Then
	FileWrite("log.txt","Rozpoczo³eœ trening "&$Tnt_um[$um1]&", "&$Tnt_um[$um2]&", przeznaczy³eœ na nie "&$nt_ile&" PA")
ElseIf $um1 <> -1 Then
	FileWrite("log.txt","Rozpoczo³eœ trening "&$Tnt_um[$um1]&", przeznaczy³eœ na to "&$nt_ile&" PA")
EndIf
EndIf
if $Ctrick <> 1 and $Cnt <> 1 Then Exit
While 1
	spr()
	Sleep(500)
	WEnd