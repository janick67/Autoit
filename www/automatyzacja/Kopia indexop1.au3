#include <Word.au3>
#include <FTPEx.au3>

$index=@ScriptDir & "/index.html"
$index1naftp="/indext.html"
$index2naftp="/indext2.html"
$host = "ftp.strefa.pl"
$dir = "/"
$user = "rdzawka+marianie.pl"
$pwd = "MICobid83#"
$port = 21
$FTP_Open = _FTP_Open("FTP")
$FTP_Conn = _FTP_Connect($FTP_Open, $host, $user, $pwd)
download()
Exit
If Not @error Then ConsoleWrite("-> Connection Success" & @LF)
download()
$op=FileOpenDialog("Wybierz plik z og³oszeniami","C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\WWW\pliki\og³oszenia","pliki Microsoft Word(*.doc)",3)
if stringlen($op)<7 then Exit
$gindex=kodowanie(txtinhtml(pogloszen(doctotxt($op)),clerindex(FileRead($index))))
FileDelete("index~~1.html")
FileWrite("index~~1.html",$gindex)
upload()   
FileDelete("index.html")
FileDelete("index~1.html")

ShellExecute("www.rdzawka.marianie.pl/"&$index2naftp)
Sleep(2000)
Send("{F5}")
Sleep(4000)
if MsgBox(4,"Index","Strona dobrze wygl¹da?")=6 Then
	_FTP_FileDelete($FTP_Conn,$index1naftp)
	If Not @error Then ConsoleWrite("-> File delete Success" & @LF)
	_FTP_FileRename($FTP_Conn,$index2naftp,$index1naftp)
	If Not @error Then ConsoleWrite("-> File rename Success" & @LF)
	_FTP_FileDelete($FTP_Conn,$index2naftp)
	If Not @error Then ConsoleWrite("-> File delete Success" & @LF)
	ShellExecute("www.rdzawka.marianie.pl"&$index1naftp)	
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
   $FTP_Put = _FTP_FilePut($FTP_Conn,"index~~1.html",$index2naftp)
   If Not @error Then ConsoleWrite("-> File put Success" & @LF)
   If @error Then
      MsgBox(48, "B³¹d!", "Niepoprawne dane o FTP! Proszê poprawiæ na poprawne!")
   EndIf
EndFunc


func download() 	   
    _FTP_FileGet($FTP_Conn, "/index.html",$index)
        If Not @error Then ConsoleWrite("-> File Get Success" & @LF)
	EndFunc

func clerindex($plik)
$p=StringInStr($plik,"wna</h1>")
$k=StringInStr($plik,"</div>",1,1,$p)
$tp=StringLeft($plik,$p+7)
$tk=StringTrimLeft($plik,$k-1)
$ck=$tp&$tk
return $ck
EndFunc

func txtinhtml($txt,$plik)
$z=StringReplace($plik,"wna</h1>","wna</h1>"&@CRLF&$txt)
return($z)
EndFunc

Func doctotxt($nazwa)
$app = _WordCreate($nazwa)
WinActivate(StringTrimLeft($nazwa,StringInStr($nazwa,"\",1,-1)))
send("{ctrldown}ac{ctrlup}")
_WordQuit($app)
return ClipGet()
EndFunc

Func pogloszen($s)
$s=StringReplace($s,@CRLF,"<br>")
$s=StringReplace($s,"	","&nbsp;&nbsp;&nbsp;&nbsp;")
$s=StringReplace($s,"<br><br>","<br>")
$center=StringInStr($s,"&nbsp;&nbsp;&nbsp;&nbsp;")
$cz1=StringLeft($s,$center-7)
$cz2=StringTrimLeft($s,$center-3)
$cs='<p style="margin: 0pt; padding: 0pt; text-align: right; color: rgb(102, 102, 102); font-weight: bold;"><span class="date">'&@YEAR&" "&@MON&" "&@MDAY&'</span></p><p style="text-align: center; font-weight: bold;">'&$cz1&"</p><p>"&$cz2&"</p>"
Return $cs
EndFunc
