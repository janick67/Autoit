Opt("MouseCoordMode", 0) ;wsp�rz�dne wzgl�dne
Opt("SendKeyDelay", 100)  ;czas mi�dzy "wci�ni�ciami" klawiszy

Run(@WindowsDir & "\Notepad.exe") ;uruchomienie notatnika
Sleep(1000)
If ProcessExists("notepad.exe") Then
   MsgBox(0, "Test:", "Notatnik zosta� uruchomiony, aby kontynuowa� naci�nij OK")
Else
   MsgBox(0, "Test:", "Notatnik nie zosta� uruchomiony, aby kontynuowa� naci�nij OK")
EndIf
Sleep(1000)

Send("Jan Worwa"&@LF&"z domu Worwa") ;pisanie do edytora
Sleep(100)
Send("{ENTER}") ;klawisz ENTER
Sleep(2000)
$size=WinGetClientSize("[ACTIVE]") ;odczytanie wielko�ci okna
MouseMove($size[0]-10,10,50) ;przesuni�cie kursora myszki
Sleep(500)
MouseClick("left") ;klik lewym klawiszem
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("Ciota.txt")
Sleep(250)
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")    ;wej�cie na �ciezke
MouseMove(680,300)
MouseClick("left")
Send("{ENTER}")
Send("Pulpit")
Send("{ENTER}")
Sleep(500)
$size=WinGetClientSize("[ACTIVE]")
MouseMove($size[0]-50,450,50)
MouseClick("left")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("{Backspace}")
Send("�arcikowa�em")
Sleep(1000)
Send("{Enter}")
Send("{Enter}")
Send("Jasiu ")
$size=WinGetClientSize("[ACTIVE]") ;odczytanie wielko�ci okna
MouseMove($size[0]-10,10,50) ;przesuni�cie kursora myszki
Sleep(500)
MouseClick("left") ;klik lewym klawiszem
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("Ja�.txt")
Sleep(100)
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")
Send("{TAB}")    ;wej�cie na �ciezke
MouseMove(680,300)
MouseClick("left")
Send("{ENTER}")
Send("Pulpit")
Send("{ENTER}")
Sleep(500)
$size=WinGetClientSize("[ACTIVE]")
MouseMove($size[0]-150,450,50)
MouseClick("left")