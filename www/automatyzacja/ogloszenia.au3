#include <Word.au3>
#include <FTPEx.au3>

$og=@ScriptDir & "/ogloszenia.html"
$host = "ftp.strefa.pl"
$dir = "/"
$user = "rdzawka+marianie.pl"
$pwd = "MICobid83#"
$port = 21
$FTP_Open = _FTP_Open("FTP")
$FTP_Conn = _FTP_Connect($FTP_Open, $host, $user, $pwd)

If Not @error Then ConsoleWrite("-> Connection Success" & @LF)
download("/ogloszenia.html",$og)
$gogloszenia=txtinhtmlo(pogloszen(),clerogloszenia(FileRead("ogloszenia.html")))
MsgBox(0,"",$gogloszenia)
FileDelete("ogloszenia~~1.html")
FileWrite("ogloszenia~~1.html",$gogloszenia)
upload()   
FileDelete("ogloszenia.html")
FileDelete("ogloszenia~~1.html")

ShellExecute("www.rdzawka.marianie.pl/ogloszeniat.html")
Sleep(2000)
Send("{F5}")
Sleep(4000)
if MsgBox(4,"Ogloszenia","Strona dobrze wygl¹da?")=6 Then
	_FTP_FileDelete($FTP_Conn,"ogloszenia.html")
	If Not @error Then ConsoleWrite("-> File delete Success" & @LF)
	_FTP_FileRename($FTP_Conn,"ogloszeniat.html","ogloszenia.html")
	If Not @error Then ConsoleWrite("-> File rename Success" & @LF)
	_FTP_FileDelete($FTP_Conn,"ogloszeniat.html")
	If Not @error Then ConsoleWrite("-> File delete Success" & @LF)
	ShellExecute("www.rdzawka.marianie.pl/ogloszenia.html")	
	Sleep(1000)
	Send("{F5}")
Else
	MsgBox(0,"","Uruchom jeszcze raz")
	EndIf
_FTP_Close($FTP_Open)
If Not @error Then ConsoleWrite("-> FTP close Success" & @LF)
func kodowanie($s)
	for $i = 1 to IniRead("C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\ja\www\automatyzacja\kodowanie.ini","Polskie",0,"")
		$s=StringReplace($s,IniRead("C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\ja\www\automatyzacja\kodowanie.ini","Polskie",$i,""),IniRead("C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\ja\www\automatyzacja\kodowanie.ini","Odmiana",$i,""),0,1)
		Next
	Return $s
	EndFunc

func upload()
   $FTP_Put = _FTP_FilePut($FTP_Conn,"ogloszenia~~1.html","ogloszeniat.html")
   If Not @error Then ConsoleWrite("-> File put Success" & @LF)
   If @error Then
      MsgBox(48, "B³¹d!", "Niepoprawne dane o FTP! Proszê poprawiæ na poprawne!")
   EndIf
EndFunc


func download($plik,$zapis) 	   
    _FTP_FileGet($FTP_Conn, $plik,$zapis)
        If Not @error Then ConsoleWrite("-> File Get Success" & @LF)
	EndFunc

func clerogloszenia($plik)
$p=StringInStr($plik,'<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;"><br>',1,7)
$k=StringInStr($plik,"</h1>",1,2,$p)
$tp=StringLeft($plik,$p-2)
$tk=StringTrimLeft($plik,$k+5)
$ck=$tp&$tk
return $ck
EndFunc

func txtinhtmlo($txt,$plik)
$z=StringReplace($plik,'<div class="post">','<div class="post">'&@CRLF&$txt)
return($z)
EndFunc

Func pogloszen()
	$plog="ogloszeniaIVp.html"
	$plogpn="IV Niedziela Wielkiego Postu"
	$plogda="2013 03 10"
$cs='<h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px;"><br><a href="pliki/'&$plog&'">Og³oszenia - '&$plogpn&'</a></h1><h1 class="atitle" style="background-image: none; padding-left: 0px; margin-left: 10px; text-align: right;"><small><a style="color: rgb(79, 130, 203); font-weight: normal;" href="pliki/'&$plog&'">czytaj og³oszenia</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '&$plogda&'&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</small></h1>'
Return $cs
EndFunc