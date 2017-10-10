$set=IniRead("cwiersz.txt","cmd","set",0)
MsgBox(0,"",$set)
Run(@ComSpec, "", $set)
$col=IniRead("cwiersz.txt","cmd","color",0)
$tit=IniRead("cwiersz.txt","cmd","title","Wiersz")
$pro=IniRead("cwiersz.txt","cmd","prompt","$t:")
$d=IniRead("cwiersz.txt","cmd","dodatek","")
WinWait("[CLASS:ConsoleWindowClass]")
ControlSend("[CLASS:ConsoleWindowClass]", "", "", "Color "&$col&"{enter}title "&$tit&"{enter}prompt "&$pro&"{enter}cls{enter}"&$d)
ControlShow("[CLASS:ConsoleWindowClass]", "", "")
Exit



