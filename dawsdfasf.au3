#include <minclude.au3>
#include <FF.au3>
If test()>287 Then
		MsgBox(0,"","Roz³¹czanie")
$fo = Run(@ComSpec, "", @SW_hide, $STDIN_CHILD + $STDOUT_CHILD)
StdinWrite($fo, "cls" & @CRLF)
StdinWrite($fo, "rasdial /disconnect" & @CRLF)
StdinWrite($fo, "Exit" & @CRLF)
	 EndIf
MsgBox(0,"",test())
If test()=286 Then
		MsgBox(0,"","£¹czenie")
		Send("{ctrldown}{shiftdown}s{shiftup}{ctrlup}")
	 EndIf
	 MsgBox(0,"",test())