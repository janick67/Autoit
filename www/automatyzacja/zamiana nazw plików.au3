$mask = "C:\Documents and Settings\Admin\Moje dokumenty\Dropbox\WWW\pliki\interncje\" ;pliki z rozszerzeniem BMP w katalogu windows
$search = FileFindFirstFile($mask&"*")
If $search = -1 Then
   MsgBox(0, $mask, "Brak plików!")
   Exit
EndIf
MsgBox(0,"",$search)
While 1
   $file = FileFindNextFile($search)
   if stringlen($file)=0 then Exit
   $rfile=FileRead($mask&$file)
   FileDelete($mask&$file)
   $nn=StringReplace($file,"intencje","")
   ConsoleWrite(FileWrite($mask&$nn,$rfile))
   WEnd
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   