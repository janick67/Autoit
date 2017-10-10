#include<Array.au3>
HotKeySet("{esc}","koniecsesji")
dim $dane[21][4]
dim $gry[21][3]
$w=0
$start=000
start()
While 1
	Sleep(1000)
	for $i=0 to 20 
	if StringInStr(aktywne(),$gry[$i][0]) and ProcessExists($gry[$i][1])<>0 Then
		if $gry[$i][2]=0 Then
		$gry[$i][2]=TimerInit()
		EndIf
	Else
		if $gry[$i][2]<>0 Then
		IniWrite($dane[$w][0]&".txt",@MON&":"&@MDAY,"gry",IniRead($dane[$w][0]&".txt",@MON&":"&@MDAY,"gry","")&$gry[$i][0]&"; "&TimerDiff($gry[$i][2])&";;  ")
		$gry[$i][2]=0
		EndIf
	EndIf
	Next
WEnd

func start()
for $i=0 to 20 
	$dane[$i][0]=IniRead("config.ini","nick",$i,"")
	$dane[$i][1]=IniRead("config.ini","password",$i,"")
	$dane[$i][2]=IniRead("config.ini","dostep",$i,"")
	$gry[$i][0]=IniRead("config.ini","gry",$i,"")
	$gry[$i][1]=IniRead("config.ini","gry procesy",$i,"")
Next
$dostep=-1
	while $dostep = -1 
	$whaslo=InputBox("Haslo","Wpisz has³o","password","*",180,130)
	for $i=0 to 20
	if $whaslo = $dane[$i][1] Then
	if $whaslo > "" then 
		$dostep=$dane[$i][2]
		$w=$i
		EndIf
	EndIf
		Next
	WEnd
	MsgBox(0,"","Czeœæ "&$dane[$w][0])
	$dane[$w][3]=TimerInit()
	$start=zmianacz()
	EndFunc

func stop()

EndFunc

func koniec()
	Exit
EndFunc

Func zmianacz($zad = 0,$czwsec = 0,$ret = 0)
	if $zad = 0 Then
		Return(((@HOUR*60)+@MIN)*60+@SEC)
	Else
$hour=($czwsec-Mod($czwsec,3600))/3600 
$min=(Mod($czwsec,3600)-Mod(Mod($czwsec,3600),60))/60
$sec=$czwsec-$hour*3600-$min*60
Switch $ret
Case 0
	Return($hour&":"&$min&":"&$sec)
Case 1
	Return($hour)
Case 2
	Return($min)
Case 3
	Return($sec)
 	EndSwitch
		EndIf
	EndFunc

func koniecsesji()
	IniWrite($dane[$w][0]&".txt",@MON&":"&@MDAY,"Czas",IniRead($dane[$w][0]&".txt",@MON&":"&@MDAY,"Czas","")&TimerDiff($dane[$w][3])&"; "&$start&";;  ")
	start()
EndFunc

func aktywne()
	$aktywne=0
	 $lista = WinList()
 for $i=1 to $lista[0][0]-1
	  If BitAnd( WinGetState($lista[$i][1]), 2 ) Then $aktywne&=$lista[$i][0]	  
	 Next
	 Return($aktywne)
	EndFunc