#include"FT_trick.au3"
#include"FT.au3"
TCPStartup()
$nick = IniRead("t.ini","Ustawienia","Nick","")
$email = IniRead("t.ini","Ustawienia","Email","")
$pass = IniRead("t.ini","Ustawienia","Pass","")
$serw = IniRead("t.ini","Ustawienia","Serw","")
$trick = _ArraySearch($Ttrick,IniRead("t.ini","Ustawienia","Trick",""),0,0,0,0,1,0)
if $nick = "" or $email = "" or $pass = "" or $serw = "" or not StringIsInt($trick) then Exit
FileDelete("t.ini")
Global $Ztrick_file = "trick_"&$nick&".ini"
Global $Zsesja = trick_idsesji();funkcja uzyskuje id sesji
trick_loguj($email,$pass,$serw)
$kod = "GET /trening_ajax.php?v=tricki HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
trick_hsend($host,$kod);Odebranie wiadomoœci o treningu
trick_post_get()
trick_spr()
If not FileExists($Ztrick_file) Then trick_file($Ztrick_file)
trick_lvl_down();Zapisuje poziomy trickow do pliku
trick_lvl_get();Wczytuje poziomy tricków do tablicy z pliku
trick_learn($trick)