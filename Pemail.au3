#include <array.au3>
#include <_pop3.au3>
 #include <minclude.au3>
 
Global $MyPopServer = "poczta.interia.pl"
Global $MyLogin = "janick67a@interia.pl"
Global $MyPasswd = "janick67a"
$plik="email.ini"
dim $kod[3000]
dim $p[3000]
	 _pop3Connect($MyPopServer, $MyLogin, $MyPasswd,110)
	 FileWrite("email.txt",_pop3retr(1))
	 Exit
If @error Then
MsgBox(0, "Error", "Unable to connect to " & $MyPopServer & @CR & @error)
Exit
Else
ConsoleWrite("Connected to server pop3 " & $MyPopServer & @CR)
EndIf

$reset=0
$uidlP = _NumberOfMessages()
odbierz()
While 1
Sleep(1000)
Local $uidl = _NumberOfMessages()
ConsoleWrite(_NumberOfMessages())
If $uidlP <> $uidl Then
	odbierz()
EndIf
WEnd

func odbierz()
$nw=$Messages
		for $i=1 to $nw[0]
	$email=_pop3retr(StringLeft($nw[$i],1))
	_pop3dele(StringLeft($nw[$i],1))
		MsgBox(0, "test", "Do: "&odbiorca($email)&@LF&"Od: "&nadawca($email)&@lf&"Temat: "&temat($email),5)
Beep(100,100)
sendsms(" Do: "&odbiorca($email)&@LF&" Od: "&nadawca($email)&@lf&" Temat: "&temat($email))
Next
	_pop3quit()
_pop3disconnect()
_pop3Connect($MyPopServer, $MyLogin, $MyPasswd,110)
$uidlP = _NumberOfMessages()
EndFunc


Func wys()
	ustarej(wkodu($Messages))
	$nw=sznowej($Messages)
	if $nw[0]>0 Then
		for $i=1 to $nw[0]
			$m0=IniRead($plik,"Kody",0,0)
	IniWrite($plik,"Kody",0,$m0+1)
	$zs=StringInStr($Messages[$i]," ",1,1)
	IniWrite($plik,"Kody",$m0+1,StringTrimLeft($Messages[$i],$zs))
	$email=_pop3retr(StringLeft($nw[$i],1))
		MsgBox(0, "test", "Do: "&odbiorca($email)&@LF&"Od: "&nadawca($email)&@lf&"Temat: "&temat($email),5)
;~ sendsms("Do: "&odbiorca($email)&@LF&"Od: "&nadawca($email)&@lf&"Temat: "&temat($email))
Next
		endif

	EndFunc

Func _NumberOfMessages()
	if $reset=1 Then
	_pop3Disconnect()
	 _pop3Connect($MyPopServer, $MyLogin, $MyPasswd,110)
	 $reset=0
	 EndIf
Global $Messages = _Pop3Uidl()
If Not @Error Then
$Return = UBound($Messages) -1
$reset=1
Else
@error
EndIf
Return $Return
EndFunc

Func odbiorca($email)
$oto=StringInStr($email,"To: ",1)
ConsoleWrite('TO::ZnaleŸono "To: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("TO::ZnaleŸenie koñca danej lini."&@LF)
$poto=StringMid($email,$oto+4,$ato-$oto-5)
ConsoleWrite("TO::Zczytano odbiorce."&@LF)
return $poto
EndFunc ;<-- func odbiorca

func temat($email)
$oto=StringInStr($email,"Subject: ",1)
ConsoleWrite('SUB::ZnaleŸono "Subject: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("SUB::ZnaleŸenie koñca danej lini."&@LF)
$poto=StringMid($email,$oto+9,$ato-$oto-10)
ConsoleWrite("SUB::Zczytano temat."&@LF)
return $poto
	EndFunc ;<-- func temat
	
func nadawca($email)
$oto=StringInStr($email,"From: ",1)
ConsoleWrite('FROM::ZnaleŸono "From: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("FROM::ZnaleŸenie koñca danej lini."&@LF)
$poto=StringMid($email,$oto+6,$ato-$oto-7)
ConsoleWrite("FROM::Zczytano temat."&@LF)
return $poto
	EndFunc ;<-- func nadawca
	
	func tresc($email)
$oto=StringInStr($email,"X-Antivirus-Status:",1)
ConsoleWrite('FROM::ZnaleŸono "From: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("FROM::ZnaleŸenie koñca danej lini."&@LF)
$poto=StringMid($email,$oto+28)
ConsoleWrite("FROM::Zczytano temat."&@LF)
return $poto
	EndFunc ;<-- func tresc
	
func czpliku($plik)
for $i=1 to IniRead($plik,"Kody",0,0)
	if IniRead($plik,"Kody",$i,0) = "" Then
		for $x=$i to IniRead($plik,"Kody",0,0)
			if IniRead($plik,"Kody",$x,0)<>"" Then
				$x=IniRead($plik,"Kody",0,0)
				IniWrite($plik,"Kody",$i,IniRead($plik,"Kody",$x,""))
				IniWrite($plik,"Kody",$x,"")
				IniWrite($plik,"Kody",0,IniRead($plik,"Kody",0,0)-1)
				EndIf
			Next
		EndIf
	Next
EndFunc

func wkodu($mes)
	for $i=1 to $mes[0]
	$zs=StringInStr($mes[$i]," ",1,1)
	$kod[$i]=StringTrimLeft($mes[$i],$zs)
Next
$kod[0]=$mes[0]
return $kod
	EndFunc
	
func ustarej($mes)
for $i=1 to IniRead($plik,"Kody",0,0)

	for $x=1 to $mes[0]
		 if IniRead($plik,"Kody",$i,"") = $mes[$x] then $p[$i]+=1
	Next
	
Next
for $i=1 to IniRead($plik,"Kody",0,0)
	if $p[$i]<1 then IniWrite($plik,"Kody",$i,"")
	Next
EndFunc


func sznowej($mes)
	for $i=1 to $mes[0]
		for $x=1 to IniRead($plik,"Kody",0,"")
			if StringMid($mes[$i],3,20) = IniRead($plik,"Kody",$x,"") Then $mes[$i]=0
		Next
	Next
	$mesdo=0
	
		$i=1
	While $i <> UBound($mes)
		if $mes[$i]=0 then
			$mesdo+=1
		endif
		$i+=1
	WEnd
		
	$mes[0]-=$mesdo
	Return $mes
EndFunc