#include <FTPEx.au3>
#include <Array.au3>
upload()
Global $fileini= FileOpen(@Computername&".txt")
   MsgBox(0,"",$fileini)
func spr()
$host = "ftp.drivehq.com"
   $user = "janick67"
   $pwd = "janick67a"
   
   $FTP_Open = _FTP_Open("FTP")
   $FTP_Conn = _FTP_Connect($FTP_Open, $host, $user, $pwd)
	if _FTP_FileOpen($FTP_Conn , "/AutoitNewVer.exe") <> 0 then MsgBox(0,"","Akyualizacja")
		MsgBox(0,"","Nie uda³o sie")
	EndFunc

func download()
   $host = "cba.pl"
   $dir = "/Teksty/"
   $user = "admin@ftautoit.cba.pl"
   $pwd = "janick67a"
   $port = 21
   $file = "haslo.txt"
   
   $FTP_Open = _FTP_Open("FTP")
   $FTP_Conn = _FTP_Connect($FTP_Open, $host, $user, $pwd)
   
   If Not @error Then ConsoleWrite("-> Connection Success" & @LF)
	   
    _FTP_FileGet($FTP_Conn, "/Teksty/haslo.txt", @ScriptDir & "\file_downloaded.txt")

        If Not @error Then ConsoleWrite("-> File Get Success" & @LF)

        _FTP_Close($FTP_Open)
        ConsoleWrite("-> Connection Closed" & @LF)
	EndFunc

func upload()
   $host = "cba.pl"
   $dir = "/Teksty/"
   $user = "admin@ftautoit.cba.pl"
   $pwd = "janick67a"
   $port = 21
   $file = @ScriptDir & "\haslo.txt"
   
   $FTP_Open = _FTP_Open("FTP")
   $FTP_Conn = _FTP_Connect($FTP_Open, $host, $user, $pwd)
   $FTP_Put = _FTP_FilePut($FTP_Conn, $fileini,"/s.txt")
   If @error Then
      MsgBox(48, "B³¹d!", "Niepoprawne dane o FTP! Proszê poprawiæ na poprawne!")
   EndIf
EndFunc

