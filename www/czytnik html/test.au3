$plik=FileRead("index.html")
$z=StringReplace($plik,"wna</h1>","wna</h1>"&@CRLF&FileRead("op.txt"))