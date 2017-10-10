#include <FTPEx.au3>

$host = "cba.pl"
   $dir = "/Teksty/"
   $user = "admin@ftautoit.cba.pl"
   $pwd = "janick67a"
   $port = 21

$Open = _FTP_Open('MyFTP Control')
$Conn = _FTP_Connect($Open, $host, $user, $pwd)

Local $h_Handle
$aFile = _FTP_FindFileFirst($Conn, "/pub/software/programming/pcre/", $h_Handle)

$FindClose = _FTP_FindFileClose($h_Handle)
ConsoleWrite('$FindClose = ' & $FindClose & '  -> Error code: ' & @error & @crlf)

$Ftpc = _FTP_Close($Open)
