#include <minclude.au3>
$email=FileRead("email1.txt")

Func odbiorca($email)
$oto=StringInStr($email,"To: ",1)
ConsoleWrite('TO::Znale�ono "To: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("TO::Znale�enie ko�ca danej lini."&@LF)
$poto=StringMid($email,$oto+4,$ato-$oto-5)
ConsoleWrite("TO::Zczytano odbiorce."&@LF)
return $poto
EndFunc ;<-- func odbiorca

func temat($email)
$oto=StringInStr($email,"Subject: ",1)
ConsoleWrite('SUB::Znale�ono "Subject: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("SUB::Znale�enie ko�ca danej lini."&@LF)
$poto=StringMid($email,$oto+9,$ato-$oto-10)
ConsoleWrite("SUB::Zczytano temat."&@LF)
return $poto
	EndFunc ;<-- func temat
	
func nadawca($email)
$oto=StringInStr($email,"From: ",1)
ConsoleWrite('FROM::Znale�ono "From: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("FROM::Znale�enie ko�ca danej lini."&@LF)
$poto=StringMid($email,$oto+6,$ato-$oto-7)
ConsoleWrite("FROM::Zczytano temat."&@LF)
return $poto
	EndFunc ;<-- func nadawca
	
	func tresc($email)
$oto=StringInStr($email,"X-Antivirus-Status:",1)
ConsoleWrite('FROM::Znale�ono "From: ".'&@LF)
$ato=StringInStr($email,@LF,1,1,$oto)
ConsoleWrite("FROM::Znale�enie ko�ca danej lini."&@LF)
$poto=StringMid($email,$oto+28)
ConsoleWrite("FROM::Zczytano temat."&@LF)
return $poto
	EndFunc ;<-- func tresc
	sendsms("Do: "&odbiorca($email)&@LF&"Od: "&nadawca($email)&@lf&"Temat: "&temat($email))
