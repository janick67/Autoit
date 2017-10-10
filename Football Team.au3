HotKeySet("{esc}","koniec")
HotKeySet("{`}","stop")
Sleep(1000)


#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Documents and Settings\Andrzej\Pulpit\Koda\tricks.kxf
$tricks = GUICreate("d", 131, 301, 438, 142)
$ok = GUICtrlCreateButton("ok", 8, 272, 51, 25)
$reset = GUICtrlCreateButton("reset", 72, 272, 51, 25)
$i1 = GUICtrlCreateInput("", 100, 5, 25, 21)
$i2 = GUICtrlCreateInput("", 100, 31, 25, 21)
$i3 = GUICtrlCreateInput("", 100, 57, 25, 21)
$i4 = GUICtrlCreateInput("", 100, 83, 25, 21)
$i5 = GUICtrlCreateInput("", 100, 109, 25, 21)
$i6 = GUICtrlCreateInput("", 100, 135, 25, 21)
$i7 = GUICtrlCreateInput("", 100, 161, 25, 21)
$i8 = GUICtrlCreateInput("", 100, 187, 25, 21)
$i9 = GUICtrlCreateInput("", 100, 213, 25, 21)
$i10 = GUICtrlCreateInput("", 100, 239, 25, 21)
$in1 = GUICtrlCreateInput("", 5, 5, 90, 21)
$in2 = GUICtrlCreateInput("", 5, 31, 89, 21)
$in3 = GUICtrlCreateInput("", 5, 57, 89, 21)
$in4 = GUICtrlCreateInput("", 5, 83, 89, 21)
$in5 = GUICtrlCreateInput("", 5, 109, 89, 21)
$in6 = GUICtrlCreateInput("", 5, 135, 89, 21)
$in7 = GUICtrlCreateInput("", 5, 161, 89, 21)
$in8 = GUICtrlCreateInput("", 5, 187, 89, 21)
$in9 = GUICtrlCreateInput("", 5, 213, 89, 21)
$in10 = GUICtrlCreateInput("", 5, 239, 89, 21)
Dim $tricks_AccelTable[1][2] = [["{Enter}", $ok]]
GUISetAccelerators($tricks_AccelTable)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Send("{tab}")

GUICtrlSetData($i1,FileReadLine("test.txt",1))
GUICtrlSetData($i2,FileReadLine("test.txt",2))
GUICtrlSetData($i3,FileReadLine("test.txt",3))
GUICtrlSetData($i4,FileReadLine("test.txt",4))
GUICtrlSetData($i5,FileReadLine("test.txt",5))
GUICtrlSetData($i6,FileReadLine("test.txt",6))
GUICtrlSetData($i7,FileReadLine("test.txt",7))
GUICtrlSetData($i8,FileReadLine("test.txt",8))
GUICtrlSetData($i9,FileReadLine("test.txt",9))
GUICtrlSetData($i10,FileReadLine("test.txt",10))

#Region ### 1
$1p="Wspó³czynnik 1 dobrany prawid³owo"
$1o="Zdoby³eœ dziêki temu 200 Obrony"
$11n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$12n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$13n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$14n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$15n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$16n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$17n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$18n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$19n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$110n="Wspó³czynnik 1 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$11d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$12d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$13d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$14d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$15d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$16d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$17d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$18d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$19d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$110d="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$11m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$12m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$13m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$14m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$15m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$16m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$17m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$18m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$19m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$110m="Wspó³czynnik 1 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l11=FileRead("seting1.txt",3)
$l12=FileRead("seting1.txt",4)
$l13=FileRead("seting1.txt",5)
$l14=FileRead("seting1.txt",6)
$l15=FileRead("seting1.txt",7)
$l16=FileRead("seting1.txt",8)
$l17=FileRead("seting1.txt",9)
$l18=FileRead("seting1.txt",10)
$l19=FileRead("seting1.txt",11)
$l110=FileRead("seting1.txt",12)
#EndRegion ### 1 
#Region ### 2
$2p="Wspó³czynnik  dobrany prawid³owo"
$2o="Zdoby³eœ dziêki temu 400 Obrony"
$21n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$22n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$23n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$24n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$25n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$26n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$27n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$28n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$29n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$210n="Wspó³czynnik 2 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$21d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$22d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$23d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$24d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$25d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$26d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$27d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$28d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$29d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$210d="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$21m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$22m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$23m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$24m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$25m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$26m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$27m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$28m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$29m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$210m="Wspó³czynnik 2 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l21=FileRead("seting2.txt",3)
$l22=FileRead("seting2.txt",4)
$l23=FileRead("seting2.txt",5)
$l24=FileRead("seting2.txt",6)
$l25=FileRead("seting2.txt",7)
$l26=FileRead("seting2.txt",8)
$l27=FileRead("seting2.txt",9)
$l28=FileRead("seting2.txt",10)
$l29=FileRead("seting2.txt",11)
$l210=FileRead("seting2.txt",12)
#EndRegion ### 2 
#Region ### 3
$3p="Wspó³czynnik  dobrany prawid³owo"
$3o="Zdoby³eœ dziêki temu 400 Obrony"
$31n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$32n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$33n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$34n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$35n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$36n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$37n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$38n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$39n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$310n="Wspó³czynnik 3 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$31d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$32d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$33d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$34d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$35d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$36d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$37d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$38d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$39d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$310d="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$31m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$32m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$33m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$34m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$35m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$36m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$37m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$38m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$39m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$310m="Wspó³czynnik 3 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l31=FileRead("seting3.txt",3)
$l32=FileRead("seting3.txt",4)
$l33=FileRead("seting3.txt",5)
$l34=FileRead("seting3.txt",6)
$l35=FileRead("seting3.txt",7)
$l36=FileRead("seting3.txt",8)
$l37=FileRead("seting3.txt",9)
$l38=FileRead("seting3.txt",10)
$l39=FileRead("seting3.txt",11)
$l310=FileRead("seting3.txt",12)
#EndRegion ### 3 
#Region ### 4
$4p="Wspó³czynnik  dobrany prawid³owo"
$4o="Zdoby³eœ dziêki temu 400 Obrony"
$41n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$42n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$43n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$44n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$45n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$46n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$47n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$48n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$49n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$410n="Wspó³czynnik 4 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$41d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$42d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$43d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$44d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$45d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$46d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$47d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$48d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$49d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$410d="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$41m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$42m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$43m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$44m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$45m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$46m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$47m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$48m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$49m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$410m="Wspó³czynnik 4 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l41=FileRead("seting4.txt",3)
$l42=FileRead("seting4.txt",4)
$l43=FileRead("seting4.txt",5)
$l44=FileRead("seting4.txt",6)
$l45=FileRead("seting4.txt",7)
$l46=FileRead("seting4.txt",8)
$l47=FileRead("seting4.txt",9)
$l48=FileRead("seting4.txt",10)
$l49=FileRead("seting4.txt",11)
$l410=FileRead("seting4.txt",12)
#EndRegion ### 4 
#Region ### 5
$5p="Wspó³czynnik  dobrany prawid³owo"
$5o="Zdoby³eœ dziêki temu 400 Obrony"
$51n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$52n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$53n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$54n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$55n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$56n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$57n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$58n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$59n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$510n="Wspó³czynnik 5 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$51d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$52d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$53d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$54d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$55d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$56d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$57d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$58d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$59d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$510d="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$51m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$52m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$53m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$54m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$55m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$56m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$57m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$58m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$59m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$510m="Wspó³czynnik 5 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l51=FileRead("seting5.txt",3)
$l52=FileRead("seting5.txt",4)
$l53=FileRead("seting5.txt",5)
$l54=FileRead("seting5.txt",6)
$l55=FileRead("seting5.txt",7)
$l56=FileRead("seting5.txt",8)
$l57=FileRead("seting5.txt",9)
$l58=FileRead("seting5.txt",10)
$l59=FileRead("seting5.txt",11)
$l510=FileRead("seting5.txt",12)
#EndRegion ### 5 
#Region ### 6
$6p="Wspó³czynnik  dobrany prawid³owo"
$6o="Zdoby³eœ dziêki temu 400 Obrony"
$61n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$62n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$63n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$64n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$65n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$66n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$67n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$68n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$69n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$610n="Wspó³czynnik 6 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$61d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$62d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$63d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$64d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$65d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$66d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$67d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$68d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$69d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$610d="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$61m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$62m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$63m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$64m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$65m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$66m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$67m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$68m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$69m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$610m="Wspó³czynnik 6 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l61=FileRead("seting6.txt",3)
$l62=FileRead("seting6.txt",4)
$l63=FileRead("seting6.txt",5)
$l64=FileRead("seting6.txt",6)
$l65=FileRead("seting6.txt",7)
$l66=FileRead("seting6.txt",8)
$l67=FileRead("seting6.txt",9)
$l68=FileRead("seting6.txt",10)
$l69=FileRead("seting6.txt",11)
$l610=FileRead("seting6.txt",12)
#EndRegion ### 6 
#Region ### 7
$7p="Wspó³czynnik  dobrany prawid³owo"
$7o="Zdoby³eœ dziêki temu 400 Obrony"
$71n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$72n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$73n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$74n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$75n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$76n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$77n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$78n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$79n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$710n="Wspó³czynnik 7 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$71d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$72d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$73d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$74d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$75d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$76d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$77d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$78d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$79d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$710d="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$71m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$72m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$73m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$74m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$75m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$76m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$77m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$78m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$79m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$710m="Wspó³czynnik 7 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l71=FileRead("seting7.txt",3)
$l72=FileRead("seting7.txt",4)
$l73=FileRead("seting7.txt",5)
$l74=FileRead("seting7.txt",6)
$l75=FileRead("seting7.txt",7)
$l76=FileRead("seting7.txt",8)
$l77=FileRead("seting7.txt",9)
$l78=FileRead("seting7.txt",10)
$l79=FileRead("seting7.txt",11)
$l710=FileRead("seting7.txt",12)
#EndRegion ### 7 
#Region ### 8
$8p="Wspó³czynnik  dobrany prawid³owo"
$8o="Zdoby³eœ dziêki temu 400 Obrony"
$81n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$82n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$83n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$84n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$85n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$86n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$87n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$88n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$89n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$810n="Wspó³czynnik 8 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$81d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$82d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$83d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$84d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$85d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$86d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$87d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$88d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$89d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$810d="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$81m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$82m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$83m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$84m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$85m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$86m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$87m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$88m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$89m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$810m="Wspó³czynnik 8 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l81=FileRead("seting8.txt",3)
$l82=FileRead("seting8.txt",4)
$l83=FileRead("seting8.txt",5)
$l84=FileRead("seting8.txt",6)
$l85=FileRead("seting8.txt",7)
$l86=FileRead("seting8.txt",8)
$l87=FileRead("seting8.txt",9)
$l88=FileRead("seting8.txt",10)
$l89=FileRead("seting8.txt",11)
$l810=FileRead("seting8.txt",12)
#EndRegion ### 8 
#Region ### 9
$9p="Wspó³czynnik  dobrany prawid³owo"
$9o="Zdoby³eœ dziêki temu 400 Obrony"
$91n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$92n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$93n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$94n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$95n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$96n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$97n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$98n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$99n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$910n="Wspó³czynnik 9 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$91d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$92d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$93d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$94d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$95d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$96d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$97d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$98d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$99d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$910d="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$91m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$92m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$93m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$94m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$95m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$96m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$97m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$98m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$99m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$910m="Wspó³czynnik 9 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l91=FileRead("seting9.txt",3)
$l92=FileRead("seting9.txt",4)
$l93=FileRead("seting9.txt",5)
$l94=FileRead("seting9.txt",6)
$l95=FileRead("seting9.txt",7)
$l96=FileRead("seting9.txt",8)
$l97=FileRead("seting9.txt",9)
$l98=FileRead("seting9.txt",10)
$l99=FileRead("seting9.txt",11)
$l910=FileRead("seting9.txt",12)
#EndRegion ### 9 
#Region ### 10
$10p="Wspó³czynnik  dobrany prawid³owo"
$10o="Zdoby³eœ dziêki temu 400 Obrony"
$101n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 1, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$102n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 2, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$103n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 3, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$104n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 4, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$105n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 5, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$106n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 6, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$107n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 7, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$108n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 8, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$109n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 9, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$1010n="Wspó³czynnik 10 dobrany b³êdnie (wybra³eœ 10, nie uda³o siê ustaliæ czy to za du¿o czy za ma³o - próbuj dalej)"
$101d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 1)"
$102d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 2)"
$103d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 3)"
$104d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 4)"
$105d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 5)"
$106d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 6)"
$107d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 7)"
$108d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 8)"
$109d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 9)"
$1010d="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za du¿o, wybra³eœ 10)"
$101m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 1)"
$102m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 2)"
$103m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 3)"
$104m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 4)"
$105m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 5)"
$106m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 6)"
$107m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 7)"
$108m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 8)"
$109m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 9)"
$1010m="Wspó³czynnik 10 dobrany b³êdnie (ustawi³eœ za ma³o, wybra³eœ 10)"
$l101=FileRead("seting10.txt",3)
$l102=FileRead("seting10.txt",4)
$l103=FileRead("seting10.txt",5)
$l104=FileRead("seting10.txt",6)
$l105=FileRead("seting10.txt",7)
$l106=FileRead("seting10.txt",8)
$l107=FileRead("seting10.txt",9)
$l108=FileRead("seting10.txt",10)
$l109=FileRead("seting10.txt",11)
$l1010=FileRead("seting10.txt",12)
#EndRegion ### 10 
#EndRegion ### w 
$t1=IniRead("seting.ini","dane","1","")
GUICtrlSetData($in1,$t1)
$t2=IniRead("seting.ini","dane","2","")
GUICtrlSetData($in2,$t2)
$t3=IniRead("seting.ini","dane","3","")
GUICtrlSetData($in3,$t3)
$t4=IniRead("seting.ini","dane","4","")
GUICtrlSetData($in4,$t4)
$t5=IniRead("seting.ini","dane","5","")
GUICtrlSetData($in5,$t5)
$t6=IniRead("seting.ini","dane","6","")
GUICtrlSetData($in6,$t6)
$t7=IniRead("seting.ini","dane","7","")
GUICtrlSetData($in7,$t7)
$t8=IniRead("seting.ini","dane","8","")
GUICtrlSetData($in8,$t8)
$t9=IniRead("seting.ini","dane","9","")
GUICtrlSetData($in9,$t9)
$t10=IniRead("seting.ini","dane","10","")
GUICtrlSetData($in10,$t10)
$zi1=IniRead("seting1.txt","","","")
$zi2=IniRead("seting2.ini","","","")
$zi3=IniRead("seting3.ini","","","")
$zi4=IniRead("seting4.ini","","","")
$zi5=IniRead("seting5.ini","","","")
$zi6=IniRead("seting6.ini","","","")
$zi7=IniRead("seting7.ini","","","")
$zi8=IniRead("seting8.ini","","","")
$zi9=IniRead("seting9.ini","","","")
$zi10=IniRead("seting10.ini","","","")
$zii1=IniRead("setin1.ini","d","1","")
$zii2=IniRead("setin1.ini","d","2","")
$zii3=IniRead("setin1.ini","d","3","")
$zii4=IniRead("setin1.ini","d","4","")
$zii5=IniRead("setin1.ini","d","5","")
$zii6=IniRead("setin1.ini","d","6","")
$zii7=IniRead("setin1.ini","d","7","")
$zii8=IniRead("setin1.ini","d","8","")
$zii9=IniRead("setin1.ini","d","9","") 
$zii10=IniRead("setin1.ini","d","10","")
$cs1=IniRead("cs","cs","1","0")
$cs2=IniRead("cs","cs","2","0")
$cs3=IniRead("cs","cs","3","0")
$cs4=IniRead("cs","cs","4","0")
$cs5=IniRead("cs","cs","5","0")
$cs6=IniRead("cs","cs","6","0")
$cs7=IniRead("cs","cs","7","0")
$cs8=IniRead("cs","cs","8","0")
$cs9=IniRead("cs","cs","9","0")
$cs10=IniRead("cs","cs","10","0")

If $zi1=0 Then $zi1=1 
	
$1=0
$2=0
$3=0
$4=0
$5=0
$6=0
$7=0
$8=0
$9=0
$10=0
$msg=0
$x=272
$ws=0
$wsp=0
$wsp1=1

While $msg<>$GUI_EVENT_CLOSE
	$msg = GUIGetMsg()
	
		
		
Select
Case $ws=2
	$wsp=GUICtrlRead($i1)
	$wsp1=GUICtrlRead($i2)
	Case $ws=3
	$wsp=GUICtrlRead($i2)
	$wsp1=GUICtrlRead($i3)
	Case $ws=4
	$wsp=GUICtrlRead($i3)
	$wsp1=GUICtrlRead($i4)
	Case $ws=5
	$wsp=GUICtrlRead($i4)
	$wsp1=GUICtrlRead($i5)
	Case $ws=6
	$wsp=GUICtrlRead($i5)
	$wsp1=GUICtrlRead($i6)
	Case $ws=7
	$wsp=GUICtrlRead($i6)
	$wsp1=GUICtrlRead($i7)
	Case $ws=8
	$wsp=GUICtrlRead($i7)
	$wsp1=GUICtrlRead($i8)
	Case $ws=9
	$wsp=GUICtrlRead($i8)
	$wsp1=GUICtrlRead($i9)
	Case $ws=10
	$wsp=GUICtrlRead($i9)
	$wsp1=GUICtrlRead($i10)
	Case $ws=9
	$wsp=GUICtrlRead($i)
	$wsp1=GUICtrlRead($i10)
	EndSelect
	
	
   
  Select 
  Case GUICtrlRead($i1)=$1p 
	  GUICtrlSetData($i1,$zii1)
  Case GUICtrlRead($i1)=$1o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i1,"5")
	  guictrlsetdata($i2,"5")
  Case GUICtrlRead($i1)=$15n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	guictrlsetdata($i1,"4")
	  $cs1="n"
  Case GUICtrlRead($i1)=$15m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"7")
	  $cs1="m"
  Case GUICtrlRead($i1)=$15d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"3")
	  $cs1="d"
  Case $cs1="n" and GUICtrlRead($i1)=$14n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"6")
	  $cs1="nn"
  Case $cs1="n" and  GUICtrlRead($i1)=$14m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"7")
	  $cs1="nm"
  Case $cs1="n" and  GUICtrlRead($i1)=$14d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"2")
	  $cs1="nd"
  Case $cs1="m" And GUICtrlRead($i1)=$17n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="mn"
  Case $cs1="m" And GUICtrlRead($i1)=$17m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="mm"
  Case $cs1="m" And GUICtrlRead($i1)=$17d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6")
	  $cs1="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs1="d" And GUICtrlRead($i1)=$13n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"2")
	  $cs1="dn"
  Case $cs1="d" And GUICtrlRead($i1)=$13m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"4")
	  $cs1="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs1="d" And GUICtrlRead($i1)=$13d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"1")
	  $cs1="dd"  
  Case $cs1="nn" and  GUICtrlRead($i1)=$16n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"7")
	  $cs1="nnn"
  Case $cs1="nn" and  GUICtrlRead($i1)=$16m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="nnm"
  Case $cs1="nn" and  GUICtrlRead($i1)=$16d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"2")
	  $cs1="nnd"
  Case $cs1="nm" and  GUICtrlRead($i1)=$17n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="nmn"
  Case $cs1="nm" and  GUICtrlRead($i1)=$17m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="nmm"
  Case $cs1="nm" and  GUICtrlRead($i1)=$17d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nd" and  GUICtrlRead($i1)=$12n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"3")
	  $cs1="ndn"
  Case $cs1="nd" and  GUICtrlRead($i1)=$12m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"3")
	  $cs1="koniec" ;koniec                          koniec                              koniec
  Case $cs1="nd" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec"  ; koniec														koniec
  Case $cs1="mn" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="mnn"
  Case $cs1="mn" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec koniec										koniec											koniec
  Case $cs1="mn" and  GUICtrlRead($i1)=$19d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="mnd"
  Case $cs1="mm" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="mmn"
  Case $cs1="mm" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ;        koneic                               koniec										koniec
  Case $cs1="mm" and  GUICtrlRead($i1)=$19d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8")
	  $cs1="koniec"	;									koniec												koniec
  Case $cs1="dn" and  GUICtrlRead($i1)=$12n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"1")
	  $cs1="dnn" 
  Case $cs1="dn" and  GUICtrlRead($i1)=$12m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"4")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="dn" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"2")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="dd" and  GUICtrlRead($i1)=$11n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"2") 
	  $cs1="koniec"  ; koniec 						koniec											koniec
  Case $cs1="dd" and  GUICtrlRead($i1)=$11m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"2")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="dd" and  GUICtrlRead($i1)=$11d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"2")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnn" and  GUICtrlRead($i1)=$17n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"3")
	  $cs1="nnnn" 
  Case $cs1="nnn" and  GUICtrlRead($i1)=$17m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="nnnm"
  Case $cs1="nnn" and  GUICtrlRead($i1)=$17d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"2")
	  $cs1="nnnd"
  Case $cs1="nnm" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"7")
	  $cs1="nnmn" 
  Case $cs1="nnm" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnm" and  GUICtrlRead($i1)=$19d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"7")
	  $cs1="nnmd"
  Case $cs1="nnd" and  GUICtrlRead($i1)=$12n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"3")
	  $cs1="nndn" 
  Case $cs1="nnd" and  GUICtrlRead($i1)=$12m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"3")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnd" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmn" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i1,"8")
	  $cs1="nmnn" 
  Case $cs1="nmn" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmn" and  GUICtrlRead($i1)=$19d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="nmnd"
  Case $cs1="nmm" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="nmmn" 
  Case $cs1="nmm" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmm" and  GUICtrlRead($i1)=$19d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnd" and  GUICtrlRead($i1)=$12n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"3")
	  $cs1="nndn" 
  Case $cs1="nnd" and  GUICtrlRead($i1)=$12m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"3")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnd" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmn" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="nmnn" 
  Case $cs1="nmn" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmn" and  GUICtrlRead($i1)=$19d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8")
	  $cs1="koniec"; koniec 						koniec											koniec
  Case $cs1="ndn" and  GUICtrlRead($i1)=$13n ; koniec 						koniec											koniec 
	  guictrlsetdata($i1,"1")
	  $cs1="koniec"	; koniec 						koniec											koniec 
  Case $cs1="ndn" and  GUICtrlRead($i1)=$13m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="ndn" and  GUICtrlRead($i1)=$13d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="mnn" and  GUICtrlRead($i1)=$18n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"6")
	  $cs1="mnnn"
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="mnd" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mdn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mnd" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mmn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="dnn" and  GUICtrlRead($i1)=$11n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"4")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="dnn" and  GUICtrlRead($i1)=$11m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"4")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="dnn" and  GUICtrlRead($i1)=$11d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"4") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nnnn" and  GUICtrlRead($i1)=$13n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="nnnnn"
  Case $cs1="nnnn" and  GUICtrlRead($i1)=$13m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="nnnnm"
  Case $cs1="nnnn" and  GUICtrlRead($i1)=$13d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"2") 
	  $cs1="nnnnd"
  Case $cs1="nnnm" and  GUICtrlRead($i1)=$19n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="nnnmn"
  Case $cs1="nnnm" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnm" and  GUICtrlRead($i1)=$19d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nnnd" and  GUICtrlRead($i1)=$12n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"3")
	  $cs1="nnndn"
  Case $cs1="nnnd" and  GUICtrlRead($i1)=$12m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"3")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnd" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nnmn" and  GUICtrlRead($i1)=$17n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="nnmnn"
  Case $cs1="nnmn" and  GUICtrlRead($i1)=$17m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"8")
	  $cs1="nnmnm"
  Case $cs1="nnmd" and  GUICtrlRead($i1)=$17n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnmd" and  GUICtrlRead($i1)=$17m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnmd" and  GUICtrlRead($i1)=$17d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nndn" and  GUICtrlRead($i1)=$13n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nndn" and  GUICtrlRead($i1)=$13d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	; koniec 						koniec											koniec 
  Case $cs1="nmnn" and  GUICtrlRead($i1)=$18n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"10")
	  $cs1="nmnnn"
  Case $cs1="nmnn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmnn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nmnd" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6")
	  $cs1="koniec"; koniec 						koniec											koniec
  Case $cs1="nmnd" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nmmn" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmmn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmmn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nndn" and  GUICtrlRead($i1)=$13n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nndn" and  GUICtrlRead($i1)=$13m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nndn" and  GUICtrlRead($i1)=$13d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nmnn" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmnn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmnn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="mnnn" and  GUICtrlRead($i1)=$16n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="mnnn" and  GUICtrlRead($i1)=$16m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnn" and  GUICtrlRead($i1)=$18n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"2") 
	  $cs1="nnnnnn"	
  Case $cs1="nnnnn" and  GUICtrlRead($i1)=$18m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="nnnnnm"
  Case $cs1="nnnnn" and  GUICtrlRead($i1)=$18d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"2")
	  $cs1="nnnnnd"
  Case $cs1="nnnnm" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"10") 
	  $cs1="nnnnmn"	
  Case $cs1="nnnnm" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnm" and  GUICtrlRead($i1)=$19d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8")
	  $cs1="koniec" ; koniec 						koniec											koniec
	  
  Case $cs1="nnnnd" and  GUICtrlRead($i1)=$12n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	
  Case $cs1="nnnnd" and  GUICtrlRead($i1)=$12m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnd" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnmn" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	; koniec 						koniec											koniec
  Case $cs1="nnnmn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnmn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnndn" and  GUICtrlRead($i1)=$13n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	 ;koniec 						koniec											koniec
  Case $cs1="nnndn" and  GUICtrlRead($i1)=$13m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnndn" and  GUICtrlRead($i1)=$13d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnmnn" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	 ;koniec 						koniec											koniec
  Case $cs1="nnmnn" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnmnn" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec  
  Case $cs1="nnmnm" and  GUICtrlRead($i1)=$18n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	 ;koniec 						koniec											koniec
  Case $cs1="nnmnm" and  GUICtrlRead($i1)=$18m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnmnm" and  GUICtrlRead($i1)=$18d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnndn" and  GUICtrlRead($i1)=$13n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	 ;koniec 						koniec											koniec
  Case $cs1="nnndn" and  GUICtrlRead($i1)=$13m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnndn" and  GUICtrlRead($i1)=$13d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nmnnn" and  GUICtrlRead($i1)=$110n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6") 
	  $cs1="koniec"	 ;koniec 						koniec											koniec
  Case $cs1="nnndn" and  GUICtrlRead($i1)=$110d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"6")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnnn" and  GUICtrlRead($i1)=$12n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9") 
	  $cs1="nnnnnnn"	 
  Case $cs1="nnnnnn" and  GUICtrlRead($i1)=$12m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"9")
	  $cs1="nnnnnnm" 
  Case $cs1="nnnnnn" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnnm" and  GUICtrlRead($i1)=$19n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	 ; koniec 						koniec											koniec
  Case $cs1="nnnnnm" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10"); koniec 						koniec											koniec
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnnd" and  GUICtrlRead($i1)=$12n  ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1") 
	  $cs1="koniec"	  ; koniec 						koniec											koniec
  Case $cs1="nnnnnd" and  GUICtrlRead($i1)=$12m  ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec"  ; koniec 						koniec											koniec
  Case $cs1="nnnnnd" and  GUICtrlRead($i1)=$12d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnmn" and  GUICtrlRead($i1)=$110n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8") 
	  $cs1="koniec"	 ; koniec 						koniec											koniec
  Case $cs1="nnnnmn" and  GUICtrlRead($i1)=$110d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"8")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnnnn" and  GUICtrlRead($i1)=$19n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i1,"1")
	  $cs1="nnnnnnnn" 
  Case $cs1="nnnnnnn" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	 ; koniec 						koniec											koniec
  Case $cs1="nnnnnnn" and  GUICtrlRead($i1)=$19d ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"1")
	  $cs1="koniec" ; koniec 						koniec											koniec  
  Case $cs1="nnnnnnm" and  GUICtrlRead($i1)=$19n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnmnnm" and  GUICtrlRead($i1)=$19m ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	 ; koniec 						koniec											koniec
  Case $cs1="nnnnnnnn" and  GUICtrlRead($i1)=$11n ; koniec 						koniec											koniec
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" ; koniec 						koniec											koniec
  Case $cs1="nnnnnnnn" and  GUICtrlRead($i1)=$11m 
	  guictrlsetdata($i1,"10") 
	  $cs1="koniec"	 
  Case $cs1="nnnnnnnn" and  GUICtrlRead($i1)=$11d
	  guictrlsetdata($i1,"10")
	  $cs1="koniec" 
	    Case GUICtrlRead($i2)=$2p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,$zii2)
  Case GUICtrlRead($i2)=$2o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i2,"5")
	  guictrlsetdata($i2,"5")
	  
  Case GUICtrlRead($i2)=$25n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"4")
	  $cs2="n"
  Case GUICtrlRead($i2)=$25m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"7")
	  $cs2="m"
  Case GUICtrlRead($i2)=$25d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"3")
	  $cs2="d"
  Case $cs2="n" and GUICtrlRead($i2)=$24n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"6")
	  $cs2="nn"
  Case $cs2="n" and  GUICtrlRead($i2)=$24m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"7")
	  $cs2="nm"
  Case $cs2="n" and  GUICtrlRead($i2)=$24d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"2")
	  $cs2="nd"
  Case $cs2="m" And GUICtrlRead($i2)=$27n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="mn"
  Case $cs2="m" And GUICtrlRead($i2)=$27m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="mm"
  Case $cs2="m" And GUICtrlRead($i2)=$27d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6")
	  $cs2="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs2="d" And GUICtrlRead($i2)=$23n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"2")
	  $cs2="dn"
  Case $cs2="d" And GUICtrlRead($i2)=$23m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"4")
	  $cs2="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs2="d" And GUICtrlRead($i2)=$23d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"1")
	  $cs2="dd"  
  Case $cs2="nn" and  GUICtrlRead($i2)=$26n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"7")
	  $cs2="nnn"
  Case $cs2="nn" and  GUICtrlRead($i2)=$26m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="nnm"
  Case $cs2="nn" and  GUICtrlRead($i2)=$26d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"2")
	  $cs2="nnd"
  Case $cs2="nm" and  GUICtrlRead($i2)=$27n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="nmn"
  Case $cs2="nm" and  GUICtrlRead($i2)=$27m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="nmm"
  Case $cs2="nm" and  GUICtrlRead($i2)=$27d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nd" and  GUICtrlRead($i2)=$22n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"3")
	  $cs2="ndn"
  Case $cs2="nd" and  GUICtrlRead($i2)=$22m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"3")
	  $cs2="koniec" ;koniec                          koniec                              koniec
  Case $cs2="nd" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec"  ; koniec														koniec
  Case $cs2="mn" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="mnn"
  Case $cs2="mn" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec koniec										koniec											koniec
  Case $cs2="mn" and  GUICtrlRead($i2)=$29d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="mnd"
  Case $cs2="mm" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="mmn"
  Case $cs2="mm" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ;        koneic                               koniec										koniec
  Case $cs2="mm" and  GUICtrlRead($i2)=$29d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8")
	  $cs2="koniec"	;									koniec												koniec
  Case $cs2="dn" and  GUICtrlRead($i2)=$22n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"1")
	  $cs2="dnn" 
  Case $cs2="dn" and  GUICtrlRead($i2)=$22m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"4")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="dn" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"2")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="dd" and  GUICtrlRead($i2)=$21n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"2") 
	  $cs2="koniec"  ; koniec 						koniec											koniec
  Case $cs2="dd" and  GUICtrlRead($i2)=$21m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"2")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="dd" and  GUICtrlRead($i2)=$21d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"2")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnn" and  GUICtrlRead($i2)=$27n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"3")
	  $cs2="nnnn" 
  Case $cs2="nnn" and  GUICtrlRead($i2)=$27m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="nnnm"
  Case $cs2="nnn" and  GUICtrlRead($i2)=$27d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"2")
	  $cs2="nnnd"
  Case $cs2="nnm" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"7")
	  $cs2="nnmn" 
  Case $cs2="nnm" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnm" and  GUICtrlRead($i2)=$29d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"7")
	  $cs2="nnmd"
  Case $cs2="nnd" and  GUICtrlRead($i2)=$22n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"3")
	  $cs2="nndn" 
  Case $cs2="nnd" and  GUICtrlRead($i2)=$22m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"3")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnd" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmn" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i2,"8")
	  $cs2="nmnn" 
  Case $cs2="nmn" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmn" and  GUICtrlRead($i2)=$29d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="nmnd"
  Case $cs2="nmm" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="nmmn" 
  Case $cs2="nmm" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmm" and  GUICtrlRead($i2)=$29d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnd" and  GUICtrlRead($i2)=$22n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"3")
	  $cs2="nndn" 
  Case $cs2="nnd" and  GUICtrlRead($i2)=$22m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"3")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnd" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmn" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="nmnn" 
  Case $cs2="nmn" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmn" and  GUICtrlRead($i2)=$29d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8")
	  $cs2="koniec"; koniec 						koniec											koniec
  Case $cs2="ndn" and  GUICtrlRead($i2)=$23n ; koniec 						koniec											koniec 
	  guictrlsetdata($i2,"1")
	  $cs2="koniec"	; koniec 						koniec											koniec 
  Case $cs2="ndn" and  GUICtrlRead($i2)=$23m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="ndn" and  GUICtrlRead($i2)=$23d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="mnn" and  GUICtrlRead($i2)=$28n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"6")
	  $cs2="mnnn"
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="mnd" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mdn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mnd" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mmn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="dnn" and  GUICtrlRead($i2)=$21n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"4")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="dnn" and  GUICtrlRead($i2)=$21m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"4")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="dnn" and  GUICtrlRead($i2)=$21d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"4") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nnnn" and  GUICtrlRead($i2)=$23n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="nnnnn"
  Case $cs2="nnnn" and  GUICtrlRead($i2)=$23m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="nnnnm"
  Case $cs2="nnnn" and  GUICtrlRead($i2)=$23d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"2") 
	  $cs2="nnnnd"
  Case $cs2="nnnm" and  GUICtrlRead($i2)=$29n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="nnnmn"
  Case $cs2="nnnm" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnm" and  GUICtrlRead($i2)=$29d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nnnd" and  GUICtrlRead($i2)=$22n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"3")
	  $cs2="nnndn"
  Case $cs2="nnnd" and  GUICtrlRead($i2)=$22m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"3")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnd" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nnmn" and  GUICtrlRead($i2)=$27n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="nnmnn"
  Case $cs2="nnmn" and  GUICtrlRead($i2)=$27m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"8")
	  $cs2="nnmnm"
  Case $cs2="nnmd" and  GUICtrlRead($i2)=$27n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnmd" and  GUICtrlRead($i2)=$27m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnmd" and  GUICtrlRead($i2)=$27d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nndn" and  GUICtrlRead($i2)=$23n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nndn" and  GUICtrlRead($i2)=$23d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	; koniec 						koniec											koniec 
  Case $cs2="nmnn" and  GUICtrlRead($i2)=$28n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"10")
	  $cs2="nmnnn"
  Case $cs2="nmnn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmnn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nmnd" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6")
	  $cs2="koniec"; koniec 						koniec											koniec
  Case $cs2="nmnd" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nmmn" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmmn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmmn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nndn" and  GUICtrlRead($i2)=$23n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nndn" and  GUICtrlRead($i2)=$23m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nndn" and  GUICtrlRead($i2)=$23d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nmnn" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmnn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmnn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="mnnn" and  GUICtrlRead($i2)=$26n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="mnnn" and  GUICtrlRead($i2)=$26m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnn" and  GUICtrlRead($i2)=$28n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"2") 
	  $cs2="nnnnnn"	
  Case $cs2="nnnnn" and  GUICtrlRead($i2)=$28m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="nnnnnm"
  Case $cs2="nnnnn" and  GUICtrlRead($i2)=$28d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"2")
	  $cs2="nnnnnd"
  Case $cs2="nnnnm" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"10") 
	  $cs2="nnnnmn"	
  Case $cs2="nnnnm" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnm" and  GUICtrlRead($i2)=$29d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8")
	  $cs2="koniec" ; koniec 						koniec											koniec
	  
  Case $cs2="nnnnd" and  GUICtrlRead($i2)=$22n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	
  Case $cs2="nnnnd" and  GUICtrlRead($i2)=$22m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnd" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnmn" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	; koniec 						koniec											koniec
  Case $cs2="nnnmn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnmn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnndn" and  GUICtrlRead($i2)=$23n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	 ;koniec 						koniec											koniec
  Case $cs2="nnndn" and  GUICtrlRead($i2)=$23m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnndn" and  GUICtrlRead($i2)=$23d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnmnn" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	 ;koniec 						koniec											koniec
  Case $cs2="nnmnn" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnmnn" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec  
  Case $cs2="nnmnm" and  GUICtrlRead($i2)=$28n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	 ;koniec 						koniec											koniec
  Case $cs2="nnmnm" and  GUICtrlRead($i2)=$28m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnmnm" and  GUICtrlRead($i2)=$28d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnndn" and  GUICtrlRead($i2)=$23n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	 ;koniec 						koniec											koniec
  Case $cs2="nnndn" and  GUICtrlRead($i2)=$23m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnndn" and  GUICtrlRead($i2)=$23d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nmnnn" and  GUICtrlRead($i2)=$210n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6") 
	  $cs2="koniec"	 ;koniec 						koniec											koniec
  Case $cs2="nnndn" and  GUICtrlRead($i2)=$210d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"6")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnnn" and  GUICtrlRead($i2)=$22n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9") 
	  $cs2="nnnnnnn"	 
  Case $cs2="nnnnnn" and  GUICtrlRead($i2)=$22m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"9")
	  $cs2="nnnnnnm" 
  Case $cs2="nnnnnn" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnnm" and  GUICtrlRead($i2)=$29n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	 ; koniec 						koniec											koniec
  Case $cs2="nnnnnm" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10"); koniec 						koniec											koniec
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnnd" and  GUICtrlRead($i2)=$22n  ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1") 
	  $cs2="koniec"	  ; koniec 						koniec											koniec
  Case $cs2="nnnnnd" and  GUICtrlRead($i2)=$22m  ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec"  ; koniec 						koniec											koniec
  Case $cs2="nnnnnd" and  GUICtrlRead($i2)=$22d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnmn" and  GUICtrlRead($i2)=$210n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8") 
	  $cs2="koniec"	 ; koniec 						koniec											koniec
  Case $cs2="nnnnmn" and  GUICtrlRead($i2)=$210d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"8")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnnnn" and  GUICtrlRead($i2)=$29n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i2,"1")
	  $cs2="nnnnnnnn" 
  Case $cs2="nnnnnnn" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	 ; koniec 						koniec											koniec
  Case $cs2="nnnnnnn" and  GUICtrlRead($i2)=$29d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"1")
	  $cs2="koniec" ; koniec 						koniec											koniec  
  Case $cs2="nnnnnnm" and  GUICtrlRead($i2)=$29n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnmnnm" and  GUICtrlRead($i2)=$29m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	 ; koniec 						koniec											koniec
  Case $cs2="nnnnnnnn" and  GUICtrlRead($i2)=$21n ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case $cs2="nnnnnnnn" and  GUICtrlRead($i2)=$21m ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10") 
	  $cs2="koniec"	 ; koniec 						koniec											koniec
  Case $cs2="nnnnnnnn" and  GUICtrlRead($i2)=$21d ; koniec 						koniec											koniec
	  guictrlsetdata($i2,"10")
	  $cs2="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i3)=$3p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,$zii1)
  Case GUICtrlRead($i3)=$3o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i3,"5")
	  guictrlsetdata($i3,"5")
	  
  Case GUICtrlRead($i3)=$35n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"4")
	  $cs3="n"
  Case GUICtrlRead($i3)=$35m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"7")
	  $cs3="m"
  Case GUICtrlRead($i3)=$35d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"3")
	  $cs3="d"
  Case $cs3="n" and GUICtrlRead($i3)=$34n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"6")
	  $cs3="nn"
  Case $cs3="n" and  GUICtrlRead($i3)=$34m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"7")
	  $cs3="nm"
  Case $cs3="n" and  GUICtrlRead($i3)=$34d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"2")
	  $cs3="nd"
  Case $cs3="m" And GUICtrlRead($i3)=$37n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="mn"
  Case $cs3="m" And GUICtrlRead($i3)=$37m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="mm"
  Case $cs3="m" And GUICtrlRead($i3)=$37d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6")
	  $cs3="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs3="d" And GUICtrlRead($i3)=$33n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"2")
	  $cs3="dn"
  Case $cs3="d" And GUICtrlRead($i3)=$33m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"4")
	  $cs3="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs3="d" And GUICtrlRead($i3)=$33d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"1")
	  $cs3="dd"  
  Case $cs3="nn" and  GUICtrlRead($i3)=$36n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"7")
	  $cs3="nnn"
  Case $cs3="nn" and  GUICtrlRead($i3)=$36m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="nnm"
  Case $cs3="nn" and  GUICtrlRead($i3)=$36d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"2")
	  $cs3="nnd"
  Case $cs3="nm" and  GUICtrlRead($i3)=$37n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="nmn"
  Case $cs3="nm" and  GUICtrlRead($i3)=$37m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="nmm"
  Case $cs3="nm" and  GUICtrlRead($i3)=$37d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nd" and  GUICtrlRead($i3)=$32n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"3")
	  $cs3="ndn"
  Case $cs3="nd" and  GUICtrlRead($i3)=$32m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"3")
	  $cs3="koniec" ;koniec                          koniec                              koniec
  Case $cs3="nd" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec"  ; koniec														koniec
  Case $cs3="mn" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="mnn"
  Case $cs3="mn" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec koniec										koniec											koniec
  Case $cs3="mn" and  GUICtrlRead($i3)=$39d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="mnd"
  Case $cs3="mm" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="mmn"
  Case $cs3="mm" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ;        koneic                               koniec										koniec
  Case $cs3="mm" and  GUICtrlRead($i3)=$39d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8")
	  $cs3="koniec"	;									koniec												koniec
  Case $cs3="dn" and  GUICtrlRead($i3)=$32n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"1")
	  $cs3="dnn" 
  Case $cs3="dn" and  GUICtrlRead($i3)=$32m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"4")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="dn" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"2")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="dd" and  GUICtrlRead($i3)=$31n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"2") 
	  $cs3="koniec"  ; koniec 						koniec											koniec
  Case $cs3="dd" and  GUICtrlRead($i3)=$31m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"2")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="dd" and  GUICtrlRead($i3)=$31d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"2")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnn" and  GUICtrlRead($i3)=$37n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"3")
	  $cs3="nnnn" 
  Case $cs3="nnn" and  GUICtrlRead($i3)=$37m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="nnnm"
  Case $cs3="nnn" and  GUICtrlRead($i3)=$37d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"2")
	  $cs3="nnnd"
  Case $cs3="nnm" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"7")
	  $cs3="nnmn" 
  Case $cs3="nnm" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnm" and  GUICtrlRead($i3)=$39d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"7")
	  $cs3="nnmd"
  Case $cs3="nnd" and  GUICtrlRead($i3)=$32n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"3")
	  $cs3="nndn" 
  Case $cs3="nnd" and  GUICtrlRead($i3)=$32m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"3")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnd" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmn" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i3,"8")
	  $cs3="nmnn" 
  Case $cs3="nmn" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmn" and  GUICtrlRead($i3)=$39d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="nmnd"
  Case $cs3="nmm" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="nmmn" 
  Case $cs3="nmm" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmm" and  GUICtrlRead($i3)=$39d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnd" and  GUICtrlRead($i3)=$32n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"3")
	  $cs3="nndn" 
  Case $cs3="nnd" and  GUICtrlRead($i3)=$32m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"3")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnd" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmn" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="nmnn" 
  Case $cs3="nmn" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmn" and  GUICtrlRead($i3)=$39d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8")
	  $cs3="koniec"; koniec 						koniec											koniec
  Case $cs3="ndn" and  GUICtrlRead($i3)=$33n ; koniec 						koniec											koniec 
	  guictrlsetdata($i3,"1")
	  $cs3="koniec"	; koniec 						koniec											koniec 
  Case $cs3="ndn" and  GUICtrlRead($i3)=$33m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="ndn" and  GUICtrlRead($i3)=$33d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="mnn" and  GUICtrlRead($i3)=$38n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"6")
	  $cs3="mnnn"
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="mnd" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mdn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mnd" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mmn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="dnn" and  GUICtrlRead($i3)=$31n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"4")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="dnn" and  GUICtrlRead($i3)=$31m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"4")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="dnn" and  GUICtrlRead($i3)=$31d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"4") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nnnn" and  GUICtrlRead($i3)=$33n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="nnnnn"
  Case $cs3="nnnn" and  GUICtrlRead($i3)=$33m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="nnnnm"
  Case $cs3="nnnn" and  GUICtrlRead($i3)=$33d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"2") 
	  $cs3="nnnnd"
  Case $cs3="nnnm" and  GUICtrlRead($i3)=$39n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="nnnmn"
  Case $cs3="nnnm" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnm" and  GUICtrlRead($i3)=$39d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nnnd" and  GUICtrlRead($i3)=$32n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"3")
	  $cs3="nnndn"
  Case $cs3="nnnd" and  GUICtrlRead($i3)=$32m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"3")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnd" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nnmn" and  GUICtrlRead($i3)=$37n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="nnmnn"
  Case $cs3="nnmn" and  GUICtrlRead($i3)=$37m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"8")
	  $cs3="nnmnm"
  Case $cs3="nnmd" and  GUICtrlRead($i3)=$37n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnmd" and  GUICtrlRead($i3)=$37m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnmd" and  GUICtrlRead($i3)=$37d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nndn" and  GUICtrlRead($i3)=$33n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nndn" and  GUICtrlRead($i3)=$33d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	; koniec 						koniec											koniec 
  Case $cs3="nmnn" and  GUICtrlRead($i3)=$38n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"10")
	  $cs3="nmnnn"
  Case $cs3="nmnn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmnn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nmnd" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6")
	  $cs3="koniec"; koniec 						koniec											koniec
  Case $cs3="nmnd" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nmmn" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmmn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmmn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nndn" and  GUICtrlRead($i3)=$33n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nndn" and  GUICtrlRead($i3)=$33m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nndn" and  GUICtrlRead($i3)=$33d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nmnn" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmnn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmnn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="mnnn" and  GUICtrlRead($i3)=$36n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="mnnn" and  GUICtrlRead($i3)=$36m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnn" and  GUICtrlRead($i3)=$38n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"2") 
	  $cs3="nnnnnn"	
  Case $cs3="nnnnn" and  GUICtrlRead($i3)=$38m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="nnnnnm"
  Case $cs3="nnnnn" and  GUICtrlRead($i3)=$38d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"2")
	  $cs3="nnnnnd"
  Case $cs3="nnnnm" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"10") 
	  $cs3="nnnnmn"	
  Case $cs3="nnnnm" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnm" and  GUICtrlRead($i3)=$39d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8")
	  $cs3="koniec" ; koniec 						koniec											koniec
	  
  Case $cs3="nnnnd" and  GUICtrlRead($i3)=$32n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	
  Case $cs3="nnnnd" and  GUICtrlRead($i3)=$32m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnd" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnmn" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	; koniec 						koniec											koniec
  Case $cs3="nnnmn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnmn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnndn" and  GUICtrlRead($i3)=$33n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	 ;koniec 						koniec											koniec
  Case $cs3="nnndn" and  GUICtrlRead($i3)=$33m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnndn" and  GUICtrlRead($i3)=$33d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnmnn" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	 ;koniec 						koniec											koniec
  Case $cs3="nnmnn" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnmnn" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec  
  Case $cs3="nnmnm" and  GUICtrlRead($i3)=$38n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	 ;koniec 						koniec											koniec
  Case $cs3="nnmnm" and  GUICtrlRead($i3)=$38m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnmnm" and  GUICtrlRead($i3)=$38d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnndn" and  GUICtrlRead($i3)=$33n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	 ;koniec 						koniec											koniec
  Case $cs3="nnndn" and  GUICtrlRead($i3)=$33m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnndn" and  GUICtrlRead($i3)=$33d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nmnnn" and  GUICtrlRead($i3)=$310n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6") 
	  $cs3="koniec"	 ;koniec 						koniec											koniec
  Case $cs3="nnndn" and  GUICtrlRead($i3)=$310d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"6")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnnn" and  GUICtrlRead($i3)=$32n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9") 
	  $cs3="nnnnnnn"	 
  Case $cs3="nnnnnn" and  GUICtrlRead($i3)=$32m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"9")
	  $cs3="nnnnnnm" 
  Case $cs3="nnnnnn" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnnm" and  GUICtrlRead($i3)=$39n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	 ; koniec 						koniec											koniec
  Case $cs3="nnnnnm" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10"); koniec 						koniec											koniec
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnnd" and  GUICtrlRead($i3)=$32n  ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1") 
	  $cs3="koniec"	  ; koniec 						koniec											koniec
  Case $cs3="nnnnnd" and  GUICtrlRead($i3)=$32m  ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec"  ; koniec 						koniec											koniec
  Case $cs3="nnnnnd" and  GUICtrlRead($i3)=$32d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnmn" and  GUICtrlRead($i3)=$310n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8") 
	  $cs3="koniec"	 ; koniec 						koniec											koniec
  Case $cs3="nnnnmn" and  GUICtrlRead($i3)=$310d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"8")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnnnn" and  GUICtrlRead($i3)=$39n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i3,"1")
	  $cs3="nnnnnnnn" 
  Case $cs3="nnnnnnn" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	 ; koniec 						koniec											koniec
  Case $cs3="nnnnnnn" and  GUICtrlRead($i3)=$39d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"1")
	  $cs3="koniec" ; koniec 						koniec											koniec  
  Case $cs3="nnnnnnm" and  GUICtrlRead($i3)=$39n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnmnnm" and  GUICtrlRead($i3)=$39m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	 ; koniec 						koniec											koniec
  Case $cs3="nnnnnnnn" and  GUICtrlRead($i3)=$31n ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case $cs3="nnnnnnnn" and  GUICtrlRead($i3)=$31m ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10") 
	  $cs3="koniec"	 ; koniec 						koniec											koniec
  Case $cs3="nnnnnnnn" and  GUICtrlRead($i3)=$31d ; koniec 						koniec											koniec
	  guictrlsetdata($i3,"10")
	  $cs3="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i4)=$4p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,$zii1)
  Case GUICtrlRead($i4)=$4o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i4,"5")
	  guictrlsetdata($i4,"5")
	  
  Case GUICtrlRead($i4)=$45n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"4")
	  $cs4="n"
  Case GUICtrlRead($i4)=$45m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"7")
	  $cs4="m"
  Case GUICtrlRead($i4)=$45d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"3")
	  $cs4="d"
  Case $cs4="n" and GUICtrlRead($i4)=$44n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"6")
	  $cs4="nn"
  Case $cs4="n" and  GUICtrlRead($i4)=$44m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"7")
	  $cs4="nm"
  Case $cs4="n" and  GUICtrlRead($i4)=$44d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"2")
	  $cs4="nd"
  Case $cs4="m" And GUICtrlRead($i4)=$47n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="mn"
  Case $cs4="m" And GUICtrlRead($i4)=$47m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="mm"
  Case $cs4="m" And GUICtrlRead($i4)=$47d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6")
	  $cs4="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs4="d" And GUICtrlRead($i4)=$43n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"2")
	  $cs4="dn"
  Case $cs4="d" And GUICtrlRead($i4)=$43m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"4")
	  $cs4="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs4="d" And GUICtrlRead($i4)=$43d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"1")
	  $cs4="dd"  
  Case $cs4="nn" and  GUICtrlRead($i4)=$46n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"7")
	  $cs4="nnn"
  Case $cs4="nn" and  GUICtrlRead($i4)=$46m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="nnm"
  Case $cs4="nn" and  GUICtrlRead($i4)=$46d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"2")
	  $cs4="nnd"
  Case $cs4="nm" and  GUICtrlRead($i4)=$47n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="nmn"
  Case $cs4="nm" and  GUICtrlRead($i4)=$47m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="nmm"
  Case $cs4="nm" and  GUICtrlRead($i4)=$47d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nd" and  GUICtrlRead($i4)=$42n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"3")
	  $cs4="ndn"
  Case $cs4="nd" and  GUICtrlRead($i4)=$42m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"3")
	  $cs4="koniec" ;koniec                          koniec                              koniec
  Case $cs4="nd" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec"  ; koniec														koniec
  Case $cs4="mn" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="mnn"
  Case $cs4="mn" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec koniec										koniec											koniec
  Case $cs4="mn" and  GUICtrlRead($i4)=$49d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="mnd"
  Case $cs4="mm" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="mmn"
  Case $cs4="mm" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ;        koneic                               koniec										koniec
  Case $cs4="mm" and  GUICtrlRead($i4)=$49d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8")
	  $cs4="koniec"	;									koniec												koniec
  Case $cs4="dn" and  GUICtrlRead($i4)=$42n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"1")
	  $cs4="dnn" 
  Case $cs4="dn" and  GUICtrlRead($i4)=$42m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"4")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="dn" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"2")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="dd" and  GUICtrlRead($i4)=$41n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"2") 
	  $cs4="koniec"  ; koniec 						koniec											koniec
  Case $cs4="dd" and  GUICtrlRead($i4)=$41m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"2")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="dd" and  GUICtrlRead($i4)=$41d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"2")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnn" and  GUICtrlRead($i4)=$47n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"3")
	  $cs4="nnnn" 
  Case $cs4="nnn" and  GUICtrlRead($i4)=$47m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="nnnm"
  Case $cs4="nnn" and  GUICtrlRead($i4)=$47d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"2")
	  $cs4="nnnd"
  Case $cs4="nnm" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"7")
	  $cs4="nnmn" 
  Case $cs4="nnm" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnm" and  GUICtrlRead($i4)=$49d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"7")
	  $cs4="nnmd"
  Case $cs4="nnd" and  GUICtrlRead($i4)=$42n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"3")
	  $cs4="nndn" 
  Case $cs4="nnd" and  GUICtrlRead($i4)=$42m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"3")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnd" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmn" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i4,"8")
	  $cs4="nmnn" 
  Case $cs4="nmn" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmn" and  GUICtrlRead($i4)=$49d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="nmnd"
  Case $cs4="nmm" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="nmmn" 
  Case $cs4="nmm" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmm" and  GUICtrlRead($i4)=$49d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnd" and  GUICtrlRead($i4)=$42n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"3")
	  $cs4="nndn" 
  Case $cs4="nnd" and  GUICtrlRead($i4)=$42m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"3")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnd" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmn" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="nmnn" 
  Case $cs4="nmn" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmn" and  GUICtrlRead($i4)=$49d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8")
	  $cs4="koniec"; koniec 						koniec											koniec
  Case $cs4="ndn" and  GUICtrlRead($i4)=$43n ; koniec 						koniec											koniec 
	  guictrlsetdata($i4,"1")
	  $cs4="koniec"	; koniec 						koniec											koniec 
  Case $cs4="ndn" and  GUICtrlRead($i4)=$43m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="ndn" and  GUICtrlRead($i4)=$43d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="mnn" and  GUICtrlRead($i4)=$48n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"6")
	  $cs4="mnnn"
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="mnd" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mdn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mnd" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mmn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="dnn" and  GUICtrlRead($i4)=$41n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"4")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="dnn" and  GUICtrlRead($i4)=$41m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"4")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="dnn" and  GUICtrlRead($i4)=$41d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"4") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nnnn" and  GUICtrlRead($i4)=$43n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="nnnnn"
  Case $cs4="nnnn" and  GUICtrlRead($i4)=$43m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="nnnnm"
  Case $cs4="nnnn" and  GUICtrlRead($i4)=$43d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"2") 
	  $cs4="nnnnd"
  Case $cs4="nnnm" and  GUICtrlRead($i4)=$49n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="nnnmn"
  Case $cs4="nnnm" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnm" and  GUICtrlRead($i4)=$49d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nnnd" and  GUICtrlRead($i4)=$42n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"3")
	  $cs4="nnndn"
  Case $cs4="nnnd" and  GUICtrlRead($i4)=$42m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"3")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnd" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nnmn" and  GUICtrlRead($i4)=$47n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="nnmnn"
  Case $cs4="nnmn" and  GUICtrlRead($i4)=$47m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"8")
	  $cs4="nnmnm"
  Case $cs4="nnmd" and  GUICtrlRead($i4)=$47n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnmd" and  GUICtrlRead($i4)=$47m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnmd" and  GUICtrlRead($i4)=$47d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nndn" and  GUICtrlRead($i4)=$43n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nndn" and  GUICtrlRead($i4)=$43d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	; koniec 						koniec											koniec 
  Case $cs4="nmnn" and  GUICtrlRead($i4)=$48n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"10")
	  $cs4="nmnnn"
  Case $cs4="nmnn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmnn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nmnd" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6")
	  $cs4="koniec"; koniec 						koniec											koniec
  Case $cs4="nmnd" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nmmn" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmmn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmmn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nndn" and  GUICtrlRead($i4)=$43n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nndn" and  GUICtrlRead($i4)=$43m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nndn" and  GUICtrlRead($i4)=$43d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nmnn" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmnn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmnn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="mnnn" and  GUICtrlRead($i4)=$46n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="mnnn" and  GUICtrlRead($i4)=$46m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnn" and  GUICtrlRead($i4)=$48n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"2") 
	  $cs4="nnnnnn"	
  Case $cs4="nnnnn" and  GUICtrlRead($i4)=$48m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="nnnnnm"
  Case $cs4="nnnnn" and  GUICtrlRead($i4)=$48d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"2")
	  $cs4="nnnnnd"
  Case $cs4="nnnnm" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"10") 
	  $cs4="nnnnmn"	
  Case $cs4="nnnnm" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnm" and  GUICtrlRead($i4)=$49d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8")
	  $cs4="koniec" ; koniec 						koniec											koniec
	  
  Case $cs4="nnnnd" and  GUICtrlRead($i4)=$42n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	
  Case $cs4="nnnnd" and  GUICtrlRead($i4)=$42m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnd" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnmn" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	; koniec 						koniec											koniec
  Case $cs4="nnnmn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnmn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnndn" and  GUICtrlRead($i4)=$43n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	 ;koniec 						koniec											koniec
  Case $cs4="nnndn" and  GUICtrlRead($i4)=$43m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnndn" and  GUICtrlRead($i4)=$43d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnmnn" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	 ;koniec 						koniec											koniec
  Case $cs4="nnmnn" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnmnn" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec  
  Case $cs4="nnmnm" and  GUICtrlRead($i4)=$48n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	 ;koniec 						koniec											koniec
  Case $cs4="nnmnm" and  GUICtrlRead($i4)=$48m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnmnm" and  GUICtrlRead($i4)=$48d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnndn" and  GUICtrlRead($i4)=$43n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	 ;koniec 						koniec											koniec
  Case $cs4="nnndn" and  GUICtrlRead($i4)=$43m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnndn" and  GUICtrlRead($i4)=$43d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nmnnn" and  GUICtrlRead($i4)=$410n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6") 
	  $cs4="koniec"	 ;koniec 						koniec											koniec
  Case $cs4="nnndn" and  GUICtrlRead($i4)=$410d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"6")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnnn" and  GUICtrlRead($i4)=$42n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9") 
	  $cs4="nnnnnnn"	 
  Case $cs4="nnnnnn" and  GUICtrlRead($i4)=$42m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"9")
	  $cs4="nnnnnnm" 
  Case $cs4="nnnnnn" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnnm" and  GUICtrlRead($i4)=$49n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	 ; koniec 						koniec											koniec
  Case $cs4="nnnnnm" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10"); koniec 						koniec											koniec
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnnd" and  GUICtrlRead($i4)=$42n  ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1") 
	  $cs4="koniec"	  ; koniec 						koniec											koniec
  Case $cs4="nnnnnd" and  GUICtrlRead($i4)=$42m  ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec"  ; koniec 						koniec											koniec
  Case $cs4="nnnnnd" and  GUICtrlRead($i4)=$42d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnmn" and  GUICtrlRead($i4)=$410n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8") 
	  $cs4="koniec"	 ; koniec 						koniec											koniec
  Case $cs4="nnnnmn" and  GUICtrlRead($i4)=$410d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"8")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnnnn" and  GUICtrlRead($i4)=$49n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i4,"1")
	  $cs4="nnnnnnnn" 
  Case $cs4="nnnnnnn" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	 ; koniec 						koniec											koniec
  Case $cs4="nnnnnnn" and  GUICtrlRead($i4)=$49d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"1")
	  $cs4="koniec" ; koniec 						koniec											koniec  
  Case $cs4="nnnnnnm" and  GUICtrlRead($i4)=$49n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnmnnm" and  GUICtrlRead($i4)=$49m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	 ; koniec 						koniec											koniec
  Case $cs4="nnnnnnnn" and  GUICtrlRead($i4)=$41n ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case $cs4="nnnnnnnn" and  GUICtrlRead($i4)=$41m ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10") 
	  $cs4="koniec"	 ; koniec 						koniec											koniec
  Case $cs4="nnnnnnnn" and  GUICtrlRead($i4)=$41d ; koniec 						koniec											koniec
	  guictrlsetdata($i4,"10")
	  $cs4="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i5)=$5p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,$zii1)
  Case GUICtrlRead($i5)=$5o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i5,"5")
	  guictrlsetdata($i5,"5")
	  
  Case GUICtrlRead($i5)=$55n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"4")
	  $cs5="n"
  Case GUICtrlRead($i5)=$55m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"7")
	  $cs5="m"
  Case GUICtrlRead($i5)=$55d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"3")
	  $cs5="d"
  Case $cs5="n" and GUICtrlRead($i5)=$54n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"6")
	  $cs5="nn"
  Case $cs5="n" and  GUICtrlRead($i5)=$54m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"7")
	  $cs5="nm"
  Case $cs5="n" and  GUICtrlRead($i5)=$54d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"2")
	  $cs5="nd"
  Case $cs5="m" And GUICtrlRead($i5)=$57n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="mn"
  Case $cs5="m" And GUICtrlRead($i5)=$57m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="mm"
  Case $cs5="m" And GUICtrlRead($i5)=$57d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6")
	  $cs5="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs5="d" And GUICtrlRead($i5)=$53n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"2")
	  $cs5="dn"
  Case $cs5="d" And GUICtrlRead($i5)=$53m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"4")
	  $cs5="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs5="d" And GUICtrlRead($i5)=$53d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"1")
	  $cs5="dd"  
  Case $cs5="nn" and  GUICtrlRead($i5)=$56n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"7")
	  $cs5="nnn"
  Case $cs5="nn" and  GUICtrlRead($i5)=$56m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="nnm"
  Case $cs5="nn" and  GUICtrlRead($i5)=$56d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"2")
	  $cs5="nnd"
  Case $cs5="nm" and  GUICtrlRead($i5)=$57n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="nmn"
  Case $cs5="nm" and  GUICtrlRead($i5)=$57m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="nmm"
  Case $cs5="nm" and  GUICtrlRead($i5)=$57d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nd" and  GUICtrlRead($i5)=$52n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"3")
	  $cs5="ndn"
  Case $cs5="nd" and  GUICtrlRead($i5)=$52m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"3")
	  $cs5="koniec" ;koniec                          koniec                              koniec
  Case $cs5="nd" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec"  ; koniec														koniec
  Case $cs5="mn" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="mnn"
  Case $cs5="mn" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec koniec										koniec											koniec
  Case $cs5="mn" and  GUICtrlRead($i5)=$59d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="mnd"
  Case $cs5="mm" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="mmn"
  Case $cs5="mm" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ;        koneic                               koniec										koniec
  Case $cs5="mm" and  GUICtrlRead($i5)=$59d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8")
	  $cs5="koniec"	;									koniec												koniec
  Case $cs5="dn" and  GUICtrlRead($i5)=$52n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"1")
	  $cs5="dnn" 
  Case $cs5="dn" and  GUICtrlRead($i5)=$52m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"4")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="dn" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"2")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="dd" and  GUICtrlRead($i5)=$51n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"2") 
	  $cs5="koniec"  ; koniec 						koniec											koniec
  Case $cs5="dd" and  GUICtrlRead($i5)=$51m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"2")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="dd" and  GUICtrlRead($i5)=$51d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"2")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnn" and  GUICtrlRead($i5)=$57n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"3")
	  $cs5="nnnn" 
  Case $cs5="nnn" and  GUICtrlRead($i5)=$57m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="nnnm"
  Case $cs5="nnn" and  GUICtrlRead($i5)=$57d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"2")
	  $cs5="nnnd"
  Case $cs5="nnm" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"7")
	  $cs5="nnmn" 
  Case $cs5="nnm" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnm" and  GUICtrlRead($i5)=$59d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"7")
	  $cs5="nnmd"
  Case $cs5="nnd" and  GUICtrlRead($i5)=$52n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"3")
	  $cs5="nndn" 
  Case $cs5="nnd" and  GUICtrlRead($i5)=$52m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"3")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnd" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmn" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i5,"8")
	  $cs5="nmnn" 
  Case $cs5="nmn" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmn" and  GUICtrlRead($i5)=$59d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="nmnd"
  Case $cs5="nmm" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="nmmn" 
  Case $cs5="nmm" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmm" and  GUICtrlRead($i5)=$59d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnd" and  GUICtrlRead($i5)=$52n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"3")
	  $cs5="nndn" 
  Case $cs5="nnd" and  GUICtrlRead($i5)=$52m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"3")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnd" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmn" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="nmnn" 
  Case $cs5="nmn" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmn" and  GUICtrlRead($i5)=$59d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8")
	  $cs5="koniec"; koniec 						koniec											koniec
  Case $cs5="ndn" and  GUICtrlRead($i5)=$53n ; koniec 						koniec											koniec 
	  guictrlsetdata($i5,"1")
	  $cs5="koniec"	; koniec 						koniec											koniec 
  Case $cs5="ndn" and  GUICtrlRead($i5)=$53m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="ndn" and  GUICtrlRead($i5)=$53d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="mnn" and  GUICtrlRead($i5)=$58n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"6")
	  $cs5="mnnn"
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="mnd" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mdn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mnd" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mmn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="dnn" and  GUICtrlRead($i5)=$51n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"4")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="dnn" and  GUICtrlRead($i5)=$51m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"4")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="dnn" and  GUICtrlRead($i5)=$51d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"4") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nnnn" and  GUICtrlRead($i5)=$53n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="nnnnn"
  Case $cs5="nnnn" and  GUICtrlRead($i5)=$53m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="nnnnm"
  Case $cs5="nnnn" and  GUICtrlRead($i5)=$53d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"2") 
	  $cs5="nnnnd"
  Case $cs5="nnnm" and  GUICtrlRead($i5)=$59n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="nnnmn"
  Case $cs5="nnnm" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnm" and  GUICtrlRead($i5)=$59d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nnnd" and  GUICtrlRead($i5)=$52n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"3")
	  $cs5="nnndn"
  Case $cs5="nnnd" and  GUICtrlRead($i5)=$52m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"3")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnd" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nnmn" and  GUICtrlRead($i5)=$57n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="nnmnn"
  Case $cs5="nnmn" and  GUICtrlRead($i5)=$57m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"8")
	  $cs5="nnmnm"
  Case $cs5="nnmd" and  GUICtrlRead($i5)=$57n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnmd" and  GUICtrlRead($i5)=$57m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnmd" and  GUICtrlRead($i5)=$57d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nndn" and  GUICtrlRead($i5)=$53n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nndn" and  GUICtrlRead($i5)=$53d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	; koniec 						koniec											koniec 
  Case $cs5="nmnn" and  GUICtrlRead($i5)=$58n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"10")
	  $cs5="nmnnn"
  Case $cs5="nmnn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmnn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nmnd" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6")
	  $cs5="koniec"; koniec 						koniec											koniec
  Case $cs5="nmnd" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nmmn" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmmn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmmn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nndn" and  GUICtrlRead($i5)=$53n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nndn" and  GUICtrlRead($i5)=$53m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nndn" and  GUICtrlRead($i5)=$53d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nmnn" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmnn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmnn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="mnnn" and  GUICtrlRead($i5)=$56n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="mnnn" and  GUICtrlRead($i5)=$56m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnn" and  GUICtrlRead($i5)=$58n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"2") 
	  $cs5="nnnnnn"	
  Case $cs5="nnnnn" and  GUICtrlRead($i5)=$58m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="nnnnnm"
  Case $cs5="nnnnn" and  GUICtrlRead($i5)=$58d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"2")
	  $cs5="nnnnnd"
  Case $cs5="nnnnm" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"10") 
	  $cs5="nnnnmn"	
  Case $cs5="nnnnm" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnm" and  GUICtrlRead($i5)=$59d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8")
	  $cs5="koniec" ; koniec 						koniec											koniec
	  
  Case $cs5="nnnnd" and  GUICtrlRead($i5)=$52n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	
  Case $cs5="nnnnd" and  GUICtrlRead($i5)=$52m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnd" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnmn" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	; koniec 						koniec											koniec
  Case $cs5="nnnmn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnmn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnndn" and  GUICtrlRead($i5)=$53n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	 ;koniec 						koniec											koniec
  Case $cs5="nnndn" and  GUICtrlRead($i5)=$53m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnndn" and  GUICtrlRead($i5)=$53d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnmnn" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	 ;koniec 						koniec											koniec
  Case $cs5="nnmnn" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnmnn" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec  
  Case $cs5="nnmnm" and  GUICtrlRead($i5)=$58n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	 ;koniec 						koniec											koniec
  Case $cs5="nnmnm" and  GUICtrlRead($i5)=$58m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnmnm" and  GUICtrlRead($i5)=$58d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnndn" and  GUICtrlRead($i5)=$53n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	 ;koniec 						koniec											koniec
  Case $cs5="nnndn" and  GUICtrlRead($i5)=$53m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnndn" and  GUICtrlRead($i5)=$53d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nmnnn" and  GUICtrlRead($i5)=$510n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6") 
	  $cs5="koniec"	 ;koniec 						koniec											koniec
  Case $cs5="nnndn" and  GUICtrlRead($i5)=$510d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"6")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnnn" and  GUICtrlRead($i5)=$52n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9") 
	  $cs5="nnnnnnn"	 
  Case $cs5="nnnnnn" and  GUICtrlRead($i5)=$52m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"9")
	  $cs5="nnnnnnm" 
  Case $cs5="nnnnnn" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnnm" and  GUICtrlRead($i5)=$59n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	 ; koniec 						koniec											koniec
  Case $cs5="nnnnnm" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10"); koniec 						koniec											koniec
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnnd" and  GUICtrlRead($i5)=$52n  ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1") 
	  $cs5="koniec"	  ; koniec 						koniec											koniec
  Case $cs5="nnnnnd" and  GUICtrlRead($i5)=$52m  ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec"  ; koniec 						koniec											koniec
  Case $cs5="nnnnnd" and  GUICtrlRead($i5)=$52d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnmn" and  GUICtrlRead($i5)=$510n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8") 
	  $cs5="koniec"	 ; koniec 						koniec											koniec
  Case $cs5="nnnnmn" and  GUICtrlRead($i5)=$510d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"8")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnnnn" and  GUICtrlRead($i5)=$59n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i5,"1")
	  $cs5="nnnnnnnn" 
  Case $cs5="nnnnnnn" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	 ; koniec 						koniec											koniec
  Case $cs5="nnnnnnn" and  GUICtrlRead($i5)=$59d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"1")
	  $cs5="koniec" ; koniec 						koniec											koniec  
  Case $cs5="nnnnnnm" and  GUICtrlRead($i5)=$59n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnmnnm" and  GUICtrlRead($i5)=$59m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	 ; koniec 						koniec											koniec
  Case $cs5="nnnnnnnn" and  GUICtrlRead($i5)=$51n ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case $cs5="nnnnnnnn" and  GUICtrlRead($i5)=$51m ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10") 
	  $cs5="koniec"	 ; koniec 						koniec											koniec
  Case $cs5="nnnnnnnn" and  GUICtrlRead($i5)=$51d ; koniec 						koniec											koniec
	  guictrlsetdata($i5,"10")
	  $cs5="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i6)=$6p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,$zii1)
  Case GUICtrlRead($i6)=$6o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i6,"5")
	  guictrlsetdata($i6,"5")
	  
  Case GUICtrlRead($i6)=$65n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"4")
	  $cs6="n"
  Case GUICtrlRead($i6)=$65m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"7")
	  $cs6="m"
  Case GUICtrlRead($i6)=$65d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"3")
	  $cs6="d"
  Case $cs6="n" and GUICtrlRead($i6)=$64n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"6")
	  $cs6="nn"
  Case $cs6="n" and  GUICtrlRead($i6)=$64m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"7")
	  $cs6="nm"
  Case $cs6="n" and  GUICtrlRead($i6)=$64d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"2")
	  $cs6="nd"
  Case $cs6="m" And GUICtrlRead($i6)=$67n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="mn"
  Case $cs6="m" And GUICtrlRead($i6)=$67m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="mm"
  Case $cs6="m" And GUICtrlRead($i6)=$67d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6")
	  $cs6="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs6="d" And GUICtrlRead($i6)=$63n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"2")
	  $cs6="dn"
  Case $cs6="d" And GUICtrlRead($i6)=$63m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"4")
	  $cs6="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs6="d" And GUICtrlRead($i6)=$63d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"1")
	  $cs6="dd"  
  Case $cs6="nn" and  GUICtrlRead($i6)=$66n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"7")
	  $cs6="nnn"
  Case $cs6="nn" and  GUICtrlRead($i6)=$66m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="nnm"
  Case $cs6="nn" and  GUICtrlRead($i6)=$66d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"2")
	  $cs6="nnd"
  Case $cs6="nm" and  GUICtrlRead($i6)=$67n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="nmn"
  Case $cs6="nm" and  GUICtrlRead($i6)=$67m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="nmm"
  Case $cs6="nm" and  GUICtrlRead($i6)=$67d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nd" and  GUICtrlRead($i6)=$62n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"3")
	  $cs6="ndn"
  Case $cs6="nd" and  GUICtrlRead($i6)=$62m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"3")
	  $cs6="koniec" ;koniec                          koniec                              koniec
  Case $cs6="nd" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec"  ; koniec														koniec
  Case $cs6="mn" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="mnn"
  Case $cs6="mn" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec koniec										koniec											koniec
  Case $cs6="mn" and  GUICtrlRead($i6)=$69d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="mnd"
  Case $cs6="mm" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="mmn"
  Case $cs6="mm" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ;        koneic                               koniec										koniec
  Case $cs6="mm" and  GUICtrlRead($i6)=$69d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8")
	  $cs6="koniec"	;									koniec												koniec
  Case $cs6="dn" and  GUICtrlRead($i6)=$62n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"1")
	  $cs6="dnn" 
  Case $cs6="dn" and  GUICtrlRead($i6)=$62m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"4")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="dn" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"2")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="dd" and  GUICtrlRead($i6)=$61n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"2") 
	  $cs6="koniec"  ; koniec 						koniec											koniec
  Case $cs6="dd" and  GUICtrlRead($i6)=$61m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"2")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="dd" and  GUICtrlRead($i6)=$61d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"2")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnn" and  GUICtrlRead($i6)=$67n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"3")
	  $cs6="nnnn" 
  Case $cs6="nnn" and  GUICtrlRead($i6)=$67m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="nnnm"
  Case $cs6="nnn" and  GUICtrlRead($i6)=$67d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"2")
	  $cs6="nnnd"
  Case $cs6="nnm" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"7")
	  $cs6="nnmn" 
  Case $cs6="nnm" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnm" and  GUICtrlRead($i6)=$69d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"7")
	  $cs6="nnmd"
  Case $cs6="nnd" and  GUICtrlRead($i6)=$62n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"3")
	  $cs6="nndn" 
  Case $cs6="nnd" and  GUICtrlRead($i6)=$62m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"3")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnd" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmn" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i6,"8")
	  $cs6="nmnn" 
  Case $cs6="nmn" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmn" and  GUICtrlRead($i6)=$69d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="nmnd"
  Case $cs6="nmm" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="nmmn" 
  Case $cs6="nmm" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmm" and  GUICtrlRead($i6)=$69d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnd" and  GUICtrlRead($i6)=$62n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"3")
	  $cs6="nndn" 
  Case $cs6="nnd" and  GUICtrlRead($i6)=$62m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"3")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnd" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmn" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="nmnn" 
  Case $cs6="nmn" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmn" and  GUICtrlRead($i6)=$69d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8")
	  $cs6="koniec"; koniec 						koniec											koniec
  Case $cs6="ndn" and  GUICtrlRead($i6)=$63n ; koniec 						koniec											koniec 
	  guictrlsetdata($i6,"1")
	  $cs6="koniec"	; koniec 						koniec											koniec 
  Case $cs6="ndn" and  GUICtrlRead($i6)=$63m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="ndn" and  GUICtrlRead($i6)=$63d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="mnn" and  GUICtrlRead($i6)=$68n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"6")
	  $cs6="mnnn"
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="mnd" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mdn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mnd" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mmn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="dnn" and  GUICtrlRead($i6)=$61n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"4")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="dnn" and  GUICtrlRead($i6)=$61m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"4")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="dnn" and  GUICtrlRead($i6)=$61d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"4") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nnnn" and  GUICtrlRead($i6)=$63n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="nnnnn"
  Case $cs6="nnnn" and  GUICtrlRead($i6)=$63m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="nnnnm"
  Case $cs6="nnnn" and  GUICtrlRead($i6)=$63d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"2") 
	  $cs6="nnnnd"
  Case $cs6="nnnm" and  GUICtrlRead($i6)=$69n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="nnnmn"
  Case $cs6="nnnm" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnm" and  GUICtrlRead($i6)=$69d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nnnd" and  GUICtrlRead($i6)=$62n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"3")
	  $cs6="nnndn"
  Case $cs6="nnnd" and  GUICtrlRead($i6)=$62m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"3")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnd" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nnmn" and  GUICtrlRead($i6)=$67n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="nnmnn"
  Case $cs6="nnmn" and  GUICtrlRead($i6)=$67m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"8")
	  $cs6="nnmnm"
  Case $cs6="nnmd" and  GUICtrlRead($i6)=$67n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnmd" and  GUICtrlRead($i6)=$67m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnmd" and  GUICtrlRead($i6)=$67d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nndn" and  GUICtrlRead($i6)=$63n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nndn" and  GUICtrlRead($i6)=$63d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	; koniec 						koniec											koniec 
  Case $cs6="nmnn" and  GUICtrlRead($i6)=$68n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"10")
	  $cs6="nmnnn"
  Case $cs6="nmnn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmnn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nmnd" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6")
	  $cs6="koniec"; koniec 						koniec											koniec
  Case $cs6="nmnd" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nmmn" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmmn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmmn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nndn" and  GUICtrlRead($i6)=$63n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nndn" and  GUICtrlRead($i6)=$63m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nndn" and  GUICtrlRead($i6)=$63d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nmnn" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmnn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmnn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="mnnn" and  GUICtrlRead($i6)=$66n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="mnnn" and  GUICtrlRead($i6)=$66m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnn" and  GUICtrlRead($i6)=$68n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"2") 
	  $cs6="nnnnnn"	
  Case $cs6="nnnnn" and  GUICtrlRead($i6)=$68m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="nnnnnm"
  Case $cs6="nnnnn" and  GUICtrlRead($i6)=$68d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"2")
	  $cs6="nnnnnd"
  Case $cs6="nnnnm" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"10") 
	  $cs6="nnnnmn"	
  Case $cs6="nnnnm" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnm" and  GUICtrlRead($i6)=$69d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8")
	  $cs6="koniec" ; koniec 						koniec											koniec
	  
  Case $cs6="nnnnd" and  GUICtrlRead($i6)=$62n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	
  Case $cs6="nnnnd" and  GUICtrlRead($i6)=$62m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnd" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnmn" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	; koniec 						koniec											koniec
  Case $cs6="nnnmn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnmn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnndn" and  GUICtrlRead($i6)=$63n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	 ;koniec 						koniec											koniec
  Case $cs6="nnndn" and  GUICtrlRead($i6)=$63m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnndn" and  GUICtrlRead($i6)=$63d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnmnn" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	 ;koniec 						koniec											koniec
  Case $cs6="nnmnn" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnmnn" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec  
  Case $cs6="nnmnm" and  GUICtrlRead($i6)=$68n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	 ;koniec 						koniec											koniec
  Case $cs6="nnmnm" and  GUICtrlRead($i6)=$68m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnmnm" and  GUICtrlRead($i6)=$68d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnndn" and  GUICtrlRead($i6)=$63n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	 ;koniec 						koniec											koniec
  Case $cs6="nnndn" and  GUICtrlRead($i6)=$63m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnndn" and  GUICtrlRead($i6)=$63d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nmnnn" and  GUICtrlRead($i6)=$610n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6") 
	  $cs6="koniec"	 ;koniec 						koniec											koniec
  Case $cs6="nnndn" and  GUICtrlRead($i6)=$610d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"6")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnnn" and  GUICtrlRead($i6)=$62n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9") 
	  $cs6="nnnnnnn"	 
  Case $cs6="nnnnnn" and  GUICtrlRead($i6)=$62m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"9")
	  $cs6="nnnnnnm" 
  Case $cs6="nnnnnn" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnnm" and  GUICtrlRead($i6)=$69n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	 ; koniec 						koniec											koniec
  Case $cs6="nnnnnm" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10"); koniec 						koniec											koniec
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnnd" and  GUICtrlRead($i6)=$62n  ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1") 
	  $cs6="koniec"	  ; koniec 						koniec											koniec
  Case $cs6="nnnnnd" and  GUICtrlRead($i6)=$62m  ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec"  ; koniec 						koniec											koniec
  Case $cs6="nnnnnd" and  GUICtrlRead($i6)=$62d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnmn" and  GUICtrlRead($i6)=$610n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8") 
	  $cs6="koniec"	 ; koniec 						koniec											koniec
  Case $cs6="nnnnmn" and  GUICtrlRead($i6)=$610d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"8")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnnnn" and  GUICtrlRead($i6)=$69n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i6,"1")
	  $cs6="nnnnnnnn" 
  Case $cs6="nnnnnnn" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	 ; koniec 						koniec											koniec
  Case $cs6="nnnnnnn" and  GUICtrlRead($i6)=$69d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"1")
	  $cs6="koniec" ; koniec 						koniec											koniec  
  Case $cs6="nnnnnnm" and  GUICtrlRead($i6)=$69n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnmnnm" and  GUICtrlRead($i6)=$69m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	 ; koniec 						koniec											koniec
  Case $cs6="nnnnnnnn" and  GUICtrlRead($i6)=$61n ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case $cs6="nnnnnnnn" and  GUICtrlRead($i6)=$61m ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10") 
	  $cs6="koniec"	 ; koniec 						koniec											koniec
  Case $cs6="nnnnnnnn" and  GUICtrlRead($i6)=$61d ; koniec 						koniec											koniec
	  guictrlsetdata($i6,"10")
	  $cs6="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i7)=$7p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,$zii1)
  Case GUICtrlRead($i7)=$7o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i7,"5")
	  guictrlsetdata($i7,"5")
	  
  Case GUICtrlRead($i7)=$75n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"4")
	  $cs7="n"
  Case GUICtrlRead($i7)=$75m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"7")
	  $cs7="m"
  Case GUICtrlRead($i7)=$75d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"3")
	  $cs7="d"
  Case $cs7="n" and GUICtrlRead($i7)=$74n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"6")
	  $cs7="nn"
  Case $cs7="n" and  GUICtrlRead($i7)=$74m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"7")
	  $cs7="nm"
  Case $cs7="n" and  GUICtrlRead($i7)=$74d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"2")
	  $cs7="nd"
  Case $cs7="m" And GUICtrlRead($i7)=$77n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="mn"
  Case $cs7="m" And GUICtrlRead($i7)=$77m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="mm"
  Case $cs7="m" And GUICtrlRead($i7)=$77d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6")
	  $cs7="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs7="d" And GUICtrlRead($i7)=$73n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"2")
	  $cs7="dn"
  Case $cs7="d" And GUICtrlRead($i7)=$73m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"4")
	  $cs7="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs7="d" And GUICtrlRead($i7)=$73d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"1")
	  $cs7="dd"  
  Case $cs7="nn" and  GUICtrlRead($i7)=$76n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"7")
	  $cs7="nnn"
  Case $cs7="nn" and  GUICtrlRead($i7)=$76m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="nnm"
  Case $cs7="nn" and  GUICtrlRead($i7)=$76d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"2")
	  $cs7="nnd"
  Case $cs7="nm" and  GUICtrlRead($i7)=$77n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="nmn"
  Case $cs7="nm" and  GUICtrlRead($i7)=$77m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="nmm"
  Case $cs7="nm" and  GUICtrlRead($i7)=$77d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nd" and  GUICtrlRead($i7)=$72n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"3")
	  $cs7="ndn"
  Case $cs7="nd" and  GUICtrlRead($i7)=$72m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"3")
	  $cs7="koniec" ;koniec                          koniec                              koniec
  Case $cs7="nd" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec"  ; koniec														koniec
  Case $cs7="mn" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="mnn"
  Case $cs7="mn" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec koniec										koniec											koniec
  Case $cs7="mn" and  GUICtrlRead($i7)=$79d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="mnd"
  Case $cs7="mm" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="mmn"
  Case $cs7="mm" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ;        koneic                               koniec										koniec
  Case $cs7="mm" and  GUICtrlRead($i7)=$79d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8")
	  $cs7="koniec"	;									koniec												koniec
  Case $cs7="dn" and  GUICtrlRead($i7)=$72n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"1")
	  $cs7="dnn" 
  Case $cs7="dn" and  GUICtrlRead($i7)=$72m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"4")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="dn" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"2")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="dd" and  GUICtrlRead($i7)=$71n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"2") 
	  $cs7="koniec"  ; koniec 						koniec											koniec
  Case $cs7="dd" and  GUICtrlRead($i7)=$71m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"2")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="dd" and  GUICtrlRead($i7)=$71d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"2")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnn" and  GUICtrlRead($i7)=$77n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"3")
	  $cs7="nnnn" 
  Case $cs7="nnn" and  GUICtrlRead($i7)=$77m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="nnnm"
  Case $cs7="nnn" and  GUICtrlRead($i7)=$77d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"2")
	  $cs7="nnnd"
  Case $cs7="nnm" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"7")
	  $cs7="nnmn" 
  Case $cs7="nnm" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnm" and  GUICtrlRead($i7)=$79d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"7")
	  $cs7="nnmd"
  Case $cs7="nnd" and  GUICtrlRead($i7)=$72n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"3")
	  $cs7="nndn" 
  Case $cs7="nnd" and  GUICtrlRead($i7)=$72m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"3")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnd" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmn" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i7,"8")
	  $cs7="nmnn" 
  Case $cs7="nmn" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmn" and  GUICtrlRead($i7)=$79d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="nmnd"
  Case $cs7="nmm" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="nmmn" 
  Case $cs7="nmm" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmm" and  GUICtrlRead($i7)=$79d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnd" and  GUICtrlRead($i7)=$72n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"3")
	  $cs7="nndn" 
  Case $cs7="nnd" and  GUICtrlRead($i7)=$72m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"3")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnd" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmn" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="nmnn" 
  Case $cs7="nmn" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmn" and  GUICtrlRead($i7)=$79d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8")
	  $cs7="koniec"; koniec 						koniec											koniec
  Case $cs7="ndn" and  GUICtrlRead($i7)=$73n ; koniec 						koniec											koniec 
	  guictrlsetdata($i7,"1")
	  $cs7="koniec"	; koniec 						koniec											koniec 
  Case $cs7="ndn" and  GUICtrlRead($i7)=$73m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="ndn" and  GUICtrlRead($i7)=$73d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="mnn" and  GUICtrlRead($i7)=$78n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"6")
	  $cs7="mnnn"
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="mnd" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mdn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mnd" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mmn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="dnn" and  GUICtrlRead($i7)=$71n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"4")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="dnn" and  GUICtrlRead($i7)=$71m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"4")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="dnn" and  GUICtrlRead($i7)=$71d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"4") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nnnn" and  GUICtrlRead($i7)=$73n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="nnnnn"
  Case $cs7="nnnn" and  GUICtrlRead($i7)=$73m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="nnnnm"
  Case $cs7="nnnn" and  GUICtrlRead($i7)=$73d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"2") 
	  $cs7="nnnnd"
  Case $cs7="nnnm" and  GUICtrlRead($i7)=$79n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="nnnmn"
  Case $cs7="nnnm" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnm" and  GUICtrlRead($i7)=$79d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nnnd" and  GUICtrlRead($i7)=$72n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"3")
	  $cs7="nnndn"
  Case $cs7="nnnd" and  GUICtrlRead($i7)=$72m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"3")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnd" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nnmn" and  GUICtrlRead($i7)=$77n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="nnmnn"
  Case $cs7="nnmn" and  GUICtrlRead($i7)=$77m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"8")
	  $cs7="nnmnm"
  Case $cs7="nnmd" and  GUICtrlRead($i7)=$77n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnmd" and  GUICtrlRead($i7)=$77m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnmd" and  GUICtrlRead($i7)=$77d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nndn" and  GUICtrlRead($i7)=$73n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nndn" and  GUICtrlRead($i7)=$73d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	; koniec 						koniec											koniec 
  Case $cs7="nmnn" and  GUICtrlRead($i7)=$78n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"10")
	  $cs7="nmnnn"
  Case $cs7="nmnn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmnn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nmnd" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6")
	  $cs7="koniec"; koniec 						koniec											koniec
  Case $cs7="nmnd" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nmmn" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmmn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmmn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nndn" and  GUICtrlRead($i7)=$73n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nndn" and  GUICtrlRead($i7)=$73m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nndn" and  GUICtrlRead($i7)=$73d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nmnn" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmnn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmnn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="mnnn" and  GUICtrlRead($i7)=$76n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="mnnn" and  GUICtrlRead($i7)=$76m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnn" and  GUICtrlRead($i7)=$78n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"2") 
	  $cs7="nnnnnn"	
  Case $cs7="nnnnn" and  GUICtrlRead($i7)=$78m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="nnnnnm"
  Case $cs7="nnnnn" and  GUICtrlRead($i7)=$78d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"2")
	  $cs7="nnnnnd"
  Case $cs7="nnnnm" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"10") 
	  $cs7="nnnnmn"	
  Case $cs7="nnnnm" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnm" and  GUICtrlRead($i7)=$79d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8")
	  $cs7="koniec" ; koniec 						koniec											koniec
	  
  Case $cs7="nnnnd" and  GUICtrlRead($i7)=$72n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	
  Case $cs7="nnnnd" and  GUICtrlRead($i7)=$72m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnd" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnmn" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	; koniec 						koniec											koniec
  Case $cs7="nnnmn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnmn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnndn" and  GUICtrlRead($i7)=$73n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	 ;koniec 						koniec											koniec
  Case $cs7="nnndn" and  GUICtrlRead($i7)=$73m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnndn" and  GUICtrlRead($i7)=$73d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnmnn" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	 ;koniec 						koniec											koniec
  Case $cs7="nnmnn" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnmnn" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec  
  Case $cs7="nnmnm" and  GUICtrlRead($i7)=$78n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	 ;koniec 						koniec											koniec
  Case $cs7="nnmnm" and  GUICtrlRead($i7)=$78m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnmnm" and  GUICtrlRead($i7)=$78d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnndn" and  GUICtrlRead($i7)=$73n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	 ;koniec 						koniec											koniec
  Case $cs7="nnndn" and  GUICtrlRead($i7)=$73m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnndn" and  GUICtrlRead($i7)=$73d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nmnnn" and  GUICtrlRead($i7)=$710n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6") 
	  $cs7="koniec"	 ;koniec 						koniec											koniec
  Case $cs7="nnndn" and  GUICtrlRead($i7)=$710d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"6")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnnn" and  GUICtrlRead($i7)=$72n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9") 
	  $cs7="nnnnnnn"	 
  Case $cs7="nnnnnn" and  GUICtrlRead($i7)=$72m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"9")
	  $cs7="nnnnnnm" 
  Case $cs7="nnnnnn" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnnm" and  GUICtrlRead($i7)=$79n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	 ; koniec 						koniec											koniec
  Case $cs7="nnnnnm" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10"); koniec 						koniec											koniec
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnnd" and  GUICtrlRead($i7)=$72n  ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1") 
	  $cs7="koniec"	  ; koniec 						koniec											koniec
  Case $cs7="nnnnnd" and  GUICtrlRead($i7)=$72m  ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec"  ; koniec 						koniec											koniec
  Case $cs7="nnnnnd" and  GUICtrlRead($i7)=$72d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnmn" and  GUICtrlRead($i7)=$710n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8") 
	  $cs7="koniec"	 ; koniec 						koniec											koniec
  Case $cs7="nnnnmn" and  GUICtrlRead($i7)=$710d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"8")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnnnn" and  GUICtrlRead($i7)=$79n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i7,"1")
	  $cs7="nnnnnnnn" 
  Case $cs7="nnnnnnn" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	 ; koniec 						koniec											koniec
  Case $cs7="nnnnnnn" and  GUICtrlRead($i7)=$79d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"1")
	  $cs7="koniec" ; koniec 						koniec											koniec  
  Case $cs7="nnnnnnm" and  GUICtrlRead($i7)=$79n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnmnnm" and  GUICtrlRead($i7)=$79m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	 ; koniec 						koniec											koniec
  Case $cs7="nnnnnnnn" and  GUICtrlRead($i7)=$71n ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case $cs7="nnnnnnnn" and  GUICtrlRead($i7)=$71m ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10") 
	  $cs7="koniec"	 ; koniec 						koniec											koniec
  Case $cs7="nnnnnnnn" and  GUICtrlRead($i7)=$71d ; koniec 						koniec											koniec
	  guictrlsetdata($i7,"10")
	  $cs7="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i8)=$8p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,$zii1)
  Case GUICtrlRead($i8)=$8o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i8,"5")
	  guictrlsetdata($i8,"5")
	  
  Case GUICtrlRead($i8)=$85n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"4")
	  $cs8="n"
  Case GUICtrlRead($i8)=$85m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"7")
	  $cs8="m"
  Case GUICtrlRead($i8)=$85d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"3")
	  $cs8="d"
  Case $cs8="n" and GUICtrlRead($i8)=$84n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"6")
	  $cs8="nn"
  Case $cs8="n" and  GUICtrlRead($i8)=$84m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"7")
	  $cs8="nm"
  Case $cs8="n" and  GUICtrlRead($i8)=$84d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"2")
	  $cs8="nd"
  Case $cs8="m" And GUICtrlRead($i8)=$87n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="mn"
  Case $cs8="m" And GUICtrlRead($i8)=$87m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="mm"
  Case $cs8="m" And GUICtrlRead($i8)=$87d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6")
	  $cs8="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs8="d" And GUICtrlRead($i8)=$83n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"2")
	  $cs8="dn"
  Case $cs8="d" And GUICtrlRead($i8)=$83m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"4")
	  $cs8="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs8="d" And GUICtrlRead($i8)=$83d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"1")
	  $cs8="dd"  
  Case $cs8="nn" and  GUICtrlRead($i8)=$86n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"7")
	  $cs8="nnn"
  Case $cs8="nn" and  GUICtrlRead($i8)=$86m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="nnm"
  Case $cs8="nn" and  GUICtrlRead($i8)=$86d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"2")
	  $cs8="nnd"
  Case $cs8="nm" and  GUICtrlRead($i8)=$87n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="nmn"
  Case $cs8="nm" and  GUICtrlRead($i8)=$87m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="nmm"
  Case $cs8="nm" and  GUICtrlRead($i8)=$87d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nd" and  GUICtrlRead($i8)=$82n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"3")
	  $cs8="ndn"
  Case $cs8="nd" and  GUICtrlRead($i8)=$82m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"3")
	  $cs8="koniec" ;koniec                          koniec                              koniec
  Case $cs8="nd" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec"  ; koniec														koniec
  Case $cs8="mn" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="mnn"
  Case $cs8="mn" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec koniec										koniec											koniec
  Case $cs8="mn" and  GUICtrlRead($i8)=$89d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="mnd"
  Case $cs8="mm" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="mmn"
  Case $cs8="mm" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ;        koneic                               koniec										koniec
  Case $cs8="mm" and  GUICtrlRead($i8)=$89d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8")
	  $cs8="koniec"	;									koniec												koniec
  Case $cs8="dn" and  GUICtrlRead($i8)=$82n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"1")
	  $cs8="dnn" 
  Case $cs8="dn" and  GUICtrlRead($i8)=$82m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"4")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="dn" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"2")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="dd" and  GUICtrlRead($i8)=$81n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"2") 
	  $cs8="koniec"  ; koniec 						koniec											koniec
  Case $cs8="dd" and  GUICtrlRead($i8)=$81m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"2")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="dd" and  GUICtrlRead($i8)=$81d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"2")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnn" and  GUICtrlRead($i8)=$87n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"3")
	  $cs8="nnnn" 
  Case $cs8="nnn" and  GUICtrlRead($i8)=$87m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="nnnm"
  Case $cs8="nnn" and  GUICtrlRead($i8)=$87d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"2")
	  $cs8="nnnd"
  Case $cs8="nnm" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"7")
	  $cs8="nnmn" 
  Case $cs8="nnm" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnm" and  GUICtrlRead($i8)=$89d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"7")
	  $cs8="nnmd"
  Case $cs8="nnd" and  GUICtrlRead($i8)=$82n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"3")
	  $cs8="nndn" 
  Case $cs8="nnd" and  GUICtrlRead($i8)=$82m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"3")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnd" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmn" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i8,"8")
	  $cs8="nmnn" 
  Case $cs8="nmn" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmn" and  GUICtrlRead($i8)=$89d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="nmnd"
  Case $cs8="nmm" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="nmmn" 
  Case $cs8="nmm" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmm" and  GUICtrlRead($i8)=$89d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnd" and  GUICtrlRead($i8)=$82n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"3")
	  $cs8="nndn" 
  Case $cs8="nnd" and  GUICtrlRead($i8)=$82m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"3")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnd" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmn" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="nmnn" 
  Case $cs8="nmn" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmn" and  GUICtrlRead($i8)=$89d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8")
	  $cs8="koniec"; koniec 						koniec											koniec
  Case $cs8="ndn" and  GUICtrlRead($i8)=$83n ; koniec 						koniec											koniec 
	  guictrlsetdata($i8,"1")
	  $cs8="koniec"	; koniec 						koniec											koniec 
  Case $cs8="ndn" and  GUICtrlRead($i8)=$83m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="ndn" and  GUICtrlRead($i8)=$83d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="mnn" and  GUICtrlRead($i8)=$88n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"6")
	  $cs8="mnnn"
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="mnd" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mdn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mnd" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mmn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="dnn" and  GUICtrlRead($i8)=$81n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"4")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="dnn" and  GUICtrlRead($i8)=$81m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"4")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="dnn" and  GUICtrlRead($i8)=$81d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"4") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nnnn" and  GUICtrlRead($i8)=$83n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="nnnnn"
  Case $cs8="nnnn" and  GUICtrlRead($i8)=$83m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="nnnnm"
  Case $cs8="nnnn" and  GUICtrlRead($i8)=$83d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"2") 
	  $cs8="nnnnd"
  Case $cs8="nnnm" and  GUICtrlRead($i8)=$89n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="nnnmn"
  Case $cs8="nnnm" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnm" and  GUICtrlRead($i8)=$89d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nnnd" and  GUICtrlRead($i8)=$82n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"3")
	  $cs8="nnndn"
  Case $cs8="nnnd" and  GUICtrlRead($i8)=$82m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"3")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnd" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nnmn" and  GUICtrlRead($i8)=$87n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="nnmnn"
  Case $cs8="nnmn" and  GUICtrlRead($i8)=$87m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"8")
	  $cs8="nnmnm"
  Case $cs8="nnmd" and  GUICtrlRead($i8)=$87n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnmd" and  GUICtrlRead($i8)=$87m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnmd" and  GUICtrlRead($i8)=$87d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nndn" and  GUICtrlRead($i8)=$83n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nndn" and  GUICtrlRead($i8)=$83d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	; koniec 						koniec											koniec 
  Case $cs8="nmnn" and  GUICtrlRead($i8)=$88n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"10")
	  $cs8="nmnnn"
  Case $cs8="nmnn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmnn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nmnd" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6")
	  $cs8="koniec"; koniec 						koniec											koniec
  Case $cs8="nmnd" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nmmn" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmmn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmmn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nndn" and  GUICtrlRead($i8)=$83n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nndn" and  GUICtrlRead($i8)=$83m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nndn" and  GUICtrlRead($i8)=$83d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nmnn" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmnn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmnn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="mnnn" and  GUICtrlRead($i8)=$86n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="mnnn" and  GUICtrlRead($i8)=$86m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnn" and  GUICtrlRead($i8)=$88n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"2") 
	  $cs8="nnnnnn"	
  Case $cs8="nnnnn" and  GUICtrlRead($i8)=$88m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="nnnnnm"
  Case $cs8="nnnnn" and  GUICtrlRead($i8)=$88d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"2")
	  $cs8="nnnnnd"
  Case $cs8="nnnnm" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"10") 
	  $cs8="nnnnmn"	
  Case $cs8="nnnnm" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnm" and  GUICtrlRead($i8)=$89d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8")
	  $cs8="koniec" ; koniec 						koniec											koniec
	  
  Case $cs8="nnnnd" and  GUICtrlRead($i8)=$82n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	
  Case $cs8="nnnnd" and  GUICtrlRead($i8)=$82m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnd" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnmn" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	; koniec 						koniec											koniec
  Case $cs8="nnnmn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnmn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnndn" and  GUICtrlRead($i8)=$83n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	 ;koniec 						koniec											koniec
  Case $cs8="nnndn" and  GUICtrlRead($i8)=$83m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnndn" and  GUICtrlRead($i8)=$83d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnmnn" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	 ;koniec 						koniec											koniec
  Case $cs8="nnmnn" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnmnn" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec  
  Case $cs8="nnmnm" and  GUICtrlRead($i8)=$88n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	 ;koniec 						koniec											koniec
  Case $cs8="nnmnm" and  GUICtrlRead($i8)=$88m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnmnm" and  GUICtrlRead($i8)=$88d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnndn" and  GUICtrlRead($i8)=$83n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	 ;koniec 						koniec											koniec
  Case $cs8="nnndn" and  GUICtrlRead($i8)=$83m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnndn" and  GUICtrlRead($i8)=$83d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nmnnn" and  GUICtrlRead($i8)=$810n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6") 
	  $cs8="koniec"	 ;koniec 						koniec											koniec
  Case $cs8="nnndn" and  GUICtrlRead($i8)=$810d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"6")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnnn" and  GUICtrlRead($i8)=$82n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9") 
	  $cs8="nnnnnnn"	 
  Case $cs8="nnnnnn" and  GUICtrlRead($i8)=$82m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"9")
	  $cs8="nnnnnnm" 
  Case $cs8="nnnnnn" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnnm" and  GUICtrlRead($i8)=$89n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	 ; koniec 						koniec											koniec
  Case $cs8="nnnnnm" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10"); koniec 						koniec											koniec
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnnd" and  GUICtrlRead($i8)=$82n  ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1") 
	  $cs8="koniec"	  ; koniec 						koniec											koniec
  Case $cs8="nnnnnd" and  GUICtrlRead($i8)=$82m  ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec"  ; koniec 						koniec											koniec
  Case $cs8="nnnnnd" and  GUICtrlRead($i8)=$82d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnmn" and  GUICtrlRead($i8)=$810n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8") 
	  $cs8="koniec"	 ; koniec 						koniec											koniec
  Case $cs8="nnnnmn" and  GUICtrlRead($i8)=$810d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"8")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnnnn" and  GUICtrlRead($i8)=$89n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i8,"1")
	  $cs8="nnnnnnnn" 
  Case $cs8="nnnnnnn" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	 ; koniec 						koniec											koniec
  Case $cs8="nnnnnnn" and  GUICtrlRead($i8)=$89d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"1")
	  $cs8="koniec" ; koniec 						koniec											koniec  
  Case $cs8="nnnnnnm" and  GUICtrlRead($i8)=$89n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnmnnm" and  GUICtrlRead($i8)=$89m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	 ; koniec 						koniec											koniec
  Case $cs8="nnnnnnnn" and  GUICtrlRead($i8)=$81n ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case $cs8="nnnnnnnn" and  GUICtrlRead($i8)=$81m ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10") 
	  $cs8="koniec"	 ; koniec 						koniec											koniec
  Case $cs8="nnnnnnnn" and  GUICtrlRead($i8)=$81d ; koniec 						koniec											koniec
	  guictrlsetdata($i8,"10")
	  $cs8="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i9)=$9p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,$zii1)
  Case GUICtrlRead($i9)=$9o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i9,"5")
	  guictrlsetdata($i9,"5")
	  
  Case GUICtrlRead($i9)=$95n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"4")
	  $cs9="n"
  Case GUICtrlRead($i9)=$95m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"7")
	  $cs9="m"
  Case GUICtrlRead($i9)=$95d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"3")
	  $cs9="d"
  Case $cs9="n" and GUICtrlRead($i9)=$94n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"6")
	  $cs9="nn"
  Case $cs9="n" and  GUICtrlRead($i9)=$94m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"7")
	  $cs9="nm"
  Case $cs9="n" and  GUICtrlRead($i9)=$94d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"2")
	  $cs9="nd"
  Case $cs9="m" And GUICtrlRead($i9)=$97n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="mn"
  Case $cs9="m" And GUICtrlRead($i9)=$97m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="mm"
  Case $cs9="m" And GUICtrlRead($i9)=$97d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6")
	  $cs9="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs9="d" And GUICtrlRead($i9)=$93n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"2")
	  $cs9="dn"
  Case $cs9="d" And GUICtrlRead($i9)=$93m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"4")
	  $cs9="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs9="d" And GUICtrlRead($i9)=$93d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"1")
	  $cs9="dd"  
  Case $cs9="nn" and  GUICtrlRead($i9)=$96n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"7")
	  $cs9="nnn"
  Case $cs9="nn" and  GUICtrlRead($i9)=$96m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="nnm"
  Case $cs9="nn" and  GUICtrlRead($i9)=$96d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"2")
	  $cs9="nnd"
  Case $cs9="nm" and  GUICtrlRead($i9)=$97n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="nmn"
  Case $cs9="nm" and  GUICtrlRead($i9)=$97m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="nmm"
  Case $cs9="nm" and  GUICtrlRead($i9)=$97d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nd" and  GUICtrlRead($i9)=$92n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"3")
	  $cs9="ndn"
  Case $cs9="nd" and  GUICtrlRead($i9)=$92m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"3")
	  $cs9="koniec" ;koniec                          koniec                              koniec
  Case $cs9="nd" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec"  ; koniec														koniec
  Case $cs9="mn" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="mnn"
  Case $cs9="mn" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec koniec										koniec											koniec
  Case $cs9="mn" and  GUICtrlRead($i9)=$99d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="mnd"
  Case $cs9="mm" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="mmn"
  Case $cs9="mm" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ;        koneic                               koniec										koniec
  Case $cs9="mm" and  GUICtrlRead($i9)=$99d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8")
	  $cs9="koniec"	;									koniec												koniec
  Case $cs9="dn" and  GUICtrlRead($i9)=$92n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"1")
	  $cs9="dnn" 
  Case $cs9="dn" and  GUICtrlRead($i9)=$92m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"4")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="dn" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"2")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="dd" and  GUICtrlRead($i9)=$91n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"2") 
	  $cs9="koniec"  ; koniec 						koniec											koniec
  Case $cs9="dd" and  GUICtrlRead($i9)=$91m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"2")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="dd" and  GUICtrlRead($i9)=$91d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"2")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnn" and  GUICtrlRead($i9)=$97n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"3")
	  $cs9="nnnn" 
  Case $cs9="nnn" and  GUICtrlRead($i9)=$97m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="nnnm"
  Case $cs9="nnn" and  GUICtrlRead($i9)=$97d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"2")
	  $cs9="nnnd"
  Case $cs9="nnm" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"7")
	  $cs9="nnmn" 
  Case $cs9="nnm" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnm" and  GUICtrlRead($i9)=$99d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"7")
	  $cs9="nnmd"
  Case $cs9="nnd" and  GUICtrlRead($i9)=$92n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"3")
	  $cs9="nndn" 
  Case $cs9="nnd" and  GUICtrlRead($i9)=$92m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"3")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnd" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmn" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i9,"8")
	  $cs9="nmnn" 
  Case $cs9="nmn" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmn" and  GUICtrlRead($i9)=$99d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="nmnd"
  Case $cs9="nmm" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="nmmn" 
  Case $cs9="nmm" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmm" and  GUICtrlRead($i9)=$99d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnd" and  GUICtrlRead($i9)=$92n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"3")
	  $cs9="nndn" 
  Case $cs9="nnd" and  GUICtrlRead($i9)=$92m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"3")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnd" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmn" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="nmnn" 
  Case $cs9="nmn" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmn" and  GUICtrlRead($i9)=$99d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8")
	  $cs9="koniec"; koniec 						koniec											koniec
  Case $cs9="ndn" and  GUICtrlRead($i9)=$93n ; koniec 						koniec											koniec 
	  guictrlsetdata($i9,"1")
	  $cs9="koniec"	; koniec 						koniec											koniec 
  Case $cs9="ndn" and  GUICtrlRead($i9)=$93m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="ndn" and  GUICtrlRead($i9)=$93d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="mnn" and  GUICtrlRead($i9)=$98n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"6")
	  $cs9="mnnn"
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="mnd" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mdn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mnd" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mmn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="dnn" and  GUICtrlRead($i9)=$91n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"4")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="dnn" and  GUICtrlRead($i9)=$91m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"4")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="dnn" and  GUICtrlRead($i9)=$91d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"4") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nnnn" and  GUICtrlRead($i9)=$93n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="nnnnn"
  Case $cs9="nnnn" and  GUICtrlRead($i9)=$93m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="nnnnm"
  Case $cs9="nnnn" and  GUICtrlRead($i9)=$93d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"2") 
	  $cs9="nnnnd"
  Case $cs9="nnnm" and  GUICtrlRead($i9)=$99n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="nnnmn"
  Case $cs9="nnnm" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnm" and  GUICtrlRead($i9)=$99d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nnnd" and  GUICtrlRead($i9)=$92n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"3")
	  $cs9="nnndn"
  Case $cs9="nnnd" and  GUICtrlRead($i9)=$92m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"3")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnd" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nnmn" and  GUICtrlRead($i9)=$97n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="nnmnn"
  Case $cs9="nnmn" and  GUICtrlRead($i9)=$97m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"8")
	  $cs9="nnmnm"
  Case $cs9="nnmd" and  GUICtrlRead($i9)=$97n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnmd" and  GUICtrlRead($i9)=$97m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnmd" and  GUICtrlRead($i9)=$97d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nndn" and  GUICtrlRead($i9)=$93n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nndn" and  GUICtrlRead($i9)=$93d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	; koniec 						koniec											koniec 
  Case $cs9="nmnn" and  GUICtrlRead($i9)=$98n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"10")
	  $cs9="nmnnn"
  Case $cs9="nmnn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmnn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nmnd" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6")
	  $cs9="koniec"; koniec 						koniec											koniec
  Case $cs9="nmnd" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nmmn" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmmn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmmn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nndn" and  GUICtrlRead($i9)=$93n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nndn" and  GUICtrlRead($i9)=$93m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nndn" and  GUICtrlRead($i9)=$93d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nmnn" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmnn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmnn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="mnnn" and  GUICtrlRead($i9)=$96n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="mnnn" and  GUICtrlRead($i9)=$96m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnn" and  GUICtrlRead($i9)=$98n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"2") 
	  $cs9="nnnnnn"	
  Case $cs9="nnnnn" and  GUICtrlRead($i9)=$98m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="nnnnnm"
  Case $cs9="nnnnn" and  GUICtrlRead($i9)=$98d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"2")
	  $cs9="nnnnnd"
  Case $cs9="nnnnm" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"10") 
	  $cs9="nnnnmn"	
  Case $cs9="nnnnm" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnm" and  GUICtrlRead($i9)=$99d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8")
	  $cs9="koniec" ; koniec 						koniec											koniec
	  
  Case $cs9="nnnnd" and  GUICtrlRead($i9)=$92n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	
  Case $cs9="nnnnd" and  GUICtrlRead($i9)=$92m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnd" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnmn" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	; koniec 						koniec											koniec
  Case $cs9="nnnmn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnmn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnndn" and  GUICtrlRead($i9)=$93n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	 ;koniec 						koniec											koniec
  Case $cs9="nnndn" and  GUICtrlRead($i9)=$93m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnndn" and  GUICtrlRead($i9)=$93d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnmnn" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	 ;koniec 						koniec											koniec
  Case $cs9="nnmnn" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnmnn" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec  
  Case $cs9="nnmnm" and  GUICtrlRead($i9)=$98n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	 ;koniec 						koniec											koniec
  Case $cs9="nnmnm" and  GUICtrlRead($i9)=$98m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnmnm" and  GUICtrlRead($i9)=$98d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnndn" and  GUICtrlRead($i9)=$93n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	 ;koniec 						koniec											koniec
  Case $cs9="nnndn" and  GUICtrlRead($i9)=$93m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnndn" and  GUICtrlRead($i9)=$93d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nmnnn" and  GUICtrlRead($i9)=$910n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6") 
	  $cs9="koniec"	 ;koniec 						koniec											koniec
  Case $cs9="nnndn" and  GUICtrlRead($i9)=$910d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"6")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnnn" and  GUICtrlRead($i9)=$92n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9") 
	  $cs9="nnnnnnn"	 
  Case $cs9="nnnnnn" and  GUICtrlRead($i9)=$92m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"9")
	  $cs9="nnnnnnm" 
  Case $cs9="nnnnnn" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnnm" and  GUICtrlRead($i9)=$99n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	 ; koniec 						koniec											koniec
  Case $cs9="nnnnnm" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10"); koniec 						koniec											koniec
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnnd" and  GUICtrlRead($i9)=$92n  ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1") 
	  $cs9="koniec"	  ; koniec 						koniec											koniec
  Case $cs9="nnnnnd" and  GUICtrlRead($i9)=$92m  ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec"  ; koniec 						koniec											koniec
  Case $cs9="nnnnnd" and  GUICtrlRead($i9)=$92d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnmn" and  GUICtrlRead($i9)=$910n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8") 
	  $cs9="koniec"	 ; koniec 						koniec											koniec
  Case $cs9="nnnnmn" and  GUICtrlRead($i9)=$910d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"8")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnnnn" and  GUICtrlRead($i9)=$99n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i9,"1")
	  $cs9="nnnnnnnn" 
  Case $cs9="nnnnnnn" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	 ; koniec 						koniec											koniec
  Case $cs9="nnnnnnn" and  GUICtrlRead($i9)=$99d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"1")
	  $cs9="koniec" ; koniec 						koniec											koniec  
  Case $cs9="nnnnnnm" and  GUICtrlRead($i9)=$99n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnmnnm" and  GUICtrlRead($i9)=$99m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	 ; koniec 						koniec											koniec
  Case $cs9="nnnnnnnn" and  GUICtrlRead($i9)=$91n ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case $cs9="nnnnnnnn" and  GUICtrlRead($i9)=$91m ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10") 
	  $cs9="koniec"	 ; koniec 						koniec											koniec
  Case $cs9="nnnnnnnn" and  GUICtrlRead($i9)=$91d ; koniec 						koniec											koniec
	  guictrlsetdata($i9,"10")
	  $cs9="koniec" ; koniec 						koniec											koniec
  Case GUICtrlRead($i10)=$10p ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,$zii1)
  Case GUICtrlRead($i10)=$10o 	;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  Sleep(1000)
	  guictrlsetdata($i10,"5")
	  guictrlsetdata($i10,"5")
	  
  Case GUICtrlRead($i10)=$105n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"4")
	  $cs10="n"
  Case GUICtrlRead($i10)=$105m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"7")
	  $cs10="m"
  Case GUICtrlRead($i10)=$105d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"3")
	  $cs10="d"
  Case $cs10="n" and GUICtrlRead($i10)=$104n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"6")
	  $cs10="nn"
  Case $cs10="n" and  GUICtrlRead($i10)=$104m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"7")
	  $cs10="nm"
  Case $cs10="n" and  GUICtrlRead($i10)=$104d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"2")
	  $cs10="nd"
  Case $cs10="m" And GUICtrlRead($i10)=$107n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="mn"
  Case $cs10="m" And GUICtrlRead($i10)=$107m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="mm"
  Case $cs10="m" And GUICtrlRead($i10)=$107d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6")
	  $cs10="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs10="d" And GUICtrlRead($i10)=$103n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"2")
	  $cs10="dn"
  Case $cs10="d" And GUICtrlRead($i10)=$103m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"4")
	  $cs10="koniec" ;konieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckonieckoniec
  Case $cs10="d" And GUICtrlRead($i10)=$103d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"1")
	  $cs10="dd"  
  Case $cs10="nn" and  GUICtrlRead($i10)=$106n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"7")
	  $cs10="nnn"
  Case $cs10="nn" and  GUICtrlRead($i10)=$106m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="nnm"
  Case $cs10="nn" and  GUICtrlRead($i10)=$106d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"2")
	  $cs10="nnd"
  Case $cs10="nm" and  GUICtrlRead($i10)=$107n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="nmn"
  Case $cs10="nm" and  GUICtrlRead($i10)=$107m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="nmm"
  Case $cs10="nm" and  GUICtrlRead($i10)=$107d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nd" and  GUICtrlRead($i10)=$102n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"3")
	  $cs10="ndn"
  Case $cs10="nd" and  GUICtrlRead($i10)=$102m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"3")
	  $cs10="koniec" ;koniec                          koniec                              koniec
  Case $cs10="nd" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec"  ; koniec														koniec
  Case $cs10="mn" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="mnn"
  Case $cs10="mn" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec koniec										koniec											koniec
  Case $cs10="mn" and  GUICtrlRead($i10)=$109d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="mnd"
  Case $cs10="mm" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="mmn"
  Case $cs10="mm" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ;        koneic                               koniec										koniec
  Case $cs10="mm" and  GUICtrlRead($i10)=$109d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8")
	  $cs10="koniec"	;									koniec												koniec
  Case $cs10="dn" and  GUICtrlRead($i10)=$102n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"1")
	  $cs10="dnn" 
  Case $cs10="dn" and  GUICtrlRead($i10)=$102m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"4")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="dn" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"2")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="dd" and  GUICtrlRead($i10)=$101n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"2") 
	  $cs10="koniec"  ; koniec 						koniec											koniec
  Case $cs10="dd" and  GUICtrlRead($i10)=$101m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"2")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="dd" and  GUICtrlRead($i10)=$101d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"2")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnn" and  GUICtrlRead($i10)=$107n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"3")
	  $cs10="nnnn" 
  Case $cs10="nnn" and  GUICtrlRead($i10)=$107m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="nnnm"
  Case $cs10="nnn" and  GUICtrlRead($i10)=$107d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"2")
	  $cs10="nnnd"
  Case $cs10="nnm" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"7")
	  $cs10="nnmn" 
  Case $cs10="nnm" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnm" and  GUICtrlRead($i10)=$109d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"7")
	  $cs10="nnmd"
  Case $cs10="nnd" and  GUICtrlRead($i10)=$102n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"3")
	  $cs10="nndn" 
  Case $cs10="nnd" and  GUICtrlRead($i10)=$102m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"3")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnd" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmn" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"         
	  guictrlsetdata($i10,"8")
	  $cs10="nmnn" 
  Case $cs10="nmn" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmn" and  GUICtrlRead($i10)=$109d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="nmnd"
  Case $cs10="nmm" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="nmmn" 
  Case $cs10="nmm" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmm" and  GUICtrlRead($i10)=$109d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnd" and  GUICtrlRead($i10)=$102n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"3")
	  $cs10="nndn" 
  Case $cs10="nnd" and  GUICtrlRead($i10)=$102m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"3")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnd" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmn" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="nmnn" 
  Case $cs10="nmn" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmn" and  GUICtrlRead($i10)=$109d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8")
	  $cs10="koniec"; koniec 						koniec											koniec
  Case $cs10="ndn" and  GUICtrlRead($i10)=$103n ; koniec 						koniec											koniec 
	  guictrlsetdata($i10,"1")
	  $cs10="koniec"	; koniec 						koniec											koniec 
  Case $cs10="ndn" and  GUICtrlRead($i10)=$103m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="ndn" and  GUICtrlRead($i10)=$103d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="mnn" and  GUICtrlRead($i10)=$108n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"6")
	  $cs10="mnnn"
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="mnd" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mdn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mnd" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mmn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="dnn" and  GUICtrlRead($i10)=$101n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"4")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="dnn" and  GUICtrlRead($i10)=$101m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"4")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="dnn" and  GUICtrlRead($i10)=$101d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"4") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nnnn" and  GUICtrlRead($i10)=$103n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="nnnnn"
  Case $cs10="nnnn" and  GUICtrlRead($i10)=$103m  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="nnnnm"
  Case $cs10="nnnn" and  GUICtrlRead($i10)=$103d  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"2") 
	  $cs10="nnnnd"
  Case $cs10="nnnm" and  GUICtrlRead($i10)=$109n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="nnnmn"
  Case $cs10="nnnm" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnm" and  GUICtrlRead($i10)=$109d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nnnd" and  GUICtrlRead($i10)=$102n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"3")
	  $cs10="nnndn"
  Case $cs10="nnnd" and  GUICtrlRead($i10)=$102m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"3")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnd" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nnmn" and  GUICtrlRead($i10)=$107n   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="nnmnn"
  Case $cs10="nnmn" and  GUICtrlRead($i10)=$107m   ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"8")
	  $cs10="nnmnm"
  Case $cs10="nnmd" and  GUICtrlRead($i10)=$107n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnmd" and  GUICtrlRead($i10)=$107m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnmd" and  GUICtrlRead($i10)=$107d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nndn" and  GUICtrlRead($i10)=$103n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nndn" and  GUICtrlRead($i10)=$103d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	; koniec 						koniec											koniec 
  Case $cs10="nmnn" and  GUICtrlRead($i10)=$108n  ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"10")
	  $cs10="nmnnn"
  Case $cs10="nmnn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmnn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nmnd" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6")
	  $cs10="koniec"; koniec 						koniec											koniec
  Case $cs10="nmnd" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nmmn" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmmn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmmn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nndn" and  GUICtrlRead($i10)=$103n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nndn" and  GUICtrlRead($i10)=$103m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nndn" and  GUICtrlRead($i10)=$103d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nmnn" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmnn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmnn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="mnnn" and  GUICtrlRead($i10)=$106n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="mnnn" and  GUICtrlRead($i10)=$106m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnn" and  GUICtrlRead($i10)=$108n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"2") 
	  $cs10="nnnnnn"	
  Case $cs10="nnnnn" and  GUICtrlRead($i10)=$108m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="nnnnnm"
  Case $cs10="nnnnn" and  GUICtrlRead($i10)=$108d ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"2")
	  $cs10="nnnnnd"
  Case $cs10="nnnnm" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"10") 
	  $cs10="nnnnmn"	
  Case $cs10="nnnnm" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnm" and  GUICtrlRead($i10)=$109d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8")
	  $cs10="koniec" ; koniec 						koniec											koniec
	  
  Case $cs10="nnnnd" and  GUICtrlRead($i10)=$102n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	
  Case $cs10="nnnnd" and  GUICtrlRead($i10)=$102m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnd" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnmn" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	; koniec 						koniec											koniec
  Case $cs10="nnnmn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnmn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnndn" and  GUICtrlRead($i10)=$103n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	 ;koniec 						koniec											koniec
  Case $cs10="nnndn" and  GUICtrlRead($i10)=$103m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnndn" and  GUICtrlRead($i10)=$103d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnmnn" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	 ;koniec 						koniec											koniec
  Case $cs10="nnmnn" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnmnn" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec  
  Case $cs10="nnmnm" and  GUICtrlRead($i10)=$108n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	 ;koniec 						koniec											koniec
  Case $cs10="nnmnm" and  GUICtrlRead($i10)=$108m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnmnm" and  GUICtrlRead($i10)=$108d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnndn" and  GUICtrlRead($i10)=$103n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	 ;koniec 						koniec											koniec
  Case $cs10="nnndn" and  GUICtrlRead($i10)=$103m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnndn" and  GUICtrlRead($i10)=$103d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nmnnn" and  GUICtrlRead($i10)=$1010n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6") 
	  $cs10="koniec"	 ;koniec 						koniec											koniec
  Case $cs10="nnndn" and  GUICtrlRead($i10)=$1010d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"6")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnnn" and  GUICtrlRead($i10)=$102n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9") 
	  $cs10="nnnnnnn"	 
  Case $cs10="nnnnnn" and  GUICtrlRead($i10)=$102m ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"9")
	  $cs10="nnnnnnm" 
  Case $cs10="nnnnnn" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnnm" and  GUICtrlRead($i10)=$109n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	 ; koniec 						koniec											koniec
  Case $cs10="nnnnnm" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10"); koniec 						koniec											koniec
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnnd" and  GUICtrlRead($i10)=$102n  ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1") 
	  $cs10="koniec"	  ; koniec 						koniec											koniec
  Case $cs10="nnnnnd" and  GUICtrlRead($i10)=$102m  ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec"  ; koniec 						koniec											koniec
  Case $cs10="nnnnnd" and  GUICtrlRead($i10)=$102d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnmn" and  GUICtrlRead($i10)=$1010n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8") 
	  $cs10="koniec"	 ; koniec 						koniec											koniec
  Case $cs10="nnnnmn" and  GUICtrlRead($i10)=$1010d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"8")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnnnn" and  GUICtrlRead($i10)=$109n ;"zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
	  guictrlsetdata($i10,"1")
	  $cs10="nnnnnnnn" 
  Case $cs10="nnnnnnn" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	 ; koniec 						koniec											koniec
  Case $cs10="nnnnnnn" and  GUICtrlRead($i10)=$109d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"1")
	  $cs10="koniec" ; koniec 						koniec											koniec  
  Case $cs10="nnnnnnm" and  GUICtrlRead($i10)=$109n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnmnnm" and  GUICtrlRead($i10)=$109m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	 ; koniec 						koniec											koniec
  Case $cs10="nnnnnnnn" and  GUICtrlRead($i10)=$101n ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  Case $cs10="nnnnnnnn" and  GUICtrlRead($i10)=$101m ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10") 
	  $cs10="koniec"	 ; koniec 						koniec											koniec
  Case $cs10="nnnnnnnn" and  GUICtrlRead($i10)=$101d ; koniec 						koniec											koniec
	  guictrlsetdata($i10,"10")
	  $cs10="koniec" ; koniec 						koniec											koniec
  EndSelect
  IniWrite("cs","cs","1",$cs1)
  IniWrite("cs","cs","2",$cs2)
IniWrite("cs","cs","3",$cs3)
	IniWrite("cs","cs","4",$cs4)
	IniWrite("cs","cs","5",$cs5)
	IniWrite("cs","cs","6",$cs6)
	IniWrite("cs","cs","7",$cs7)
	IniWrite("cs","cs","8",$cs8)
	IniWrite("cs","cs","9",$cs9)
	IniWrite("cs","cs","10",$cs10)
	$w = 0
		If GUICtrlRead($i1) >0 And 	GUICtrlRead($i1)<11 Then
	$1= GUICtrlRead($in1)&GUICtrlRead($i1)
	$w=$w+1
	EndIf

	
	If GUICtrlRead($i2) >0 And 	GUICtrlRead($i2)<11 Then
	$2= GUICtrlRead($in2)&GUICtrlRead($i2)
	$w=$w+1
EndIf

If GUICtrlRead($i3) >0 And 	GUICtrlRead($i3)<11 Then
	$3= GUICtrlRead($in3)&GUICtrlRead($i3)
	$w=$w+1
EndIf

If GUICtrlRead($i4) >0 And 	GUICtrlRead($i4)<11 Then
	$4= GUICtrlRead($in4)&GUICtrlRead($i4)
	$w=$w+1
EndIf

If GUICtrlRead($i5) >0 And 	GUICtrlRead($i5)<11 Then
	$5= GUICtrlRead($in5)&GUICtrlRead($i5)
	$w=$w+1
EndIf

If GUICtrlRead($i6) >0 And 	GUICtrlRead($i6)<11 Then
	$6= GUICtrlRead($in6)&GUICtrlRead($i6)
	$w=$w+1
	EndIf
	
	If GUICtrlRead($i7) >0 And 	GUICtrlRead($i7)<11 Then
	$7= GUICtrlRead($in7)&GUICtrlRead($i7)
	$w=$w+1
EndIf

If GUICtrlRead($i8) >0 And 	GUICtrlRead($i8)<11 Then
	$8= GUICtrlRead($in8)&GUICtrlRead($i8)
	$w=$w+1
EndIf

If GUICtrlRead($i9) >0 And 	GUICtrlRead($i9)<11 Then
	$9= GUICtrlRead($in9)&GUICtrlRead($i9)
	$w=$w+1
EndIf

If GUICtrlRead($i10) >0 And 	GUICtrlRead($i10)<11 Then
	$10= GUICtrlRead($in10)&GUICtrlRead($i10)
	$w=$w+1
EndIf

If $msg = $reset Then
	reset()
EndIf
	If $msg = $ok Then
			Select 
	Case $w = 1
		GUICtrlSetData($in1, $1)
		WinActivate("Football Team")
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
		zapisz()
		s()
		Exit
	Case $w = 2
			
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		WinActivate("Football Team")
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()
			s()
			exit
	Case $w = 3
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
			Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
					zapisz()	
					s()
				Exit
	Case $w = 4
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
			Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
				zapisz()
				s()
				Exit
	Case $w = 5
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
		
	Case $w = 6
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
	Case $w = 7
				WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
					Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
					Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()
			s()
				Exit
	Case $w = 8
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		GUICtrlSetData($in8, $8)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i8) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i8) = 2
				Send("{RIGHT}")
			Case guictrlread($i8) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
		
	Case $w = 9
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		GUICtrlSetData($in8, $8)
		GUICtrlSetData($in9, $9)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
				Send("{tab}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{tab}")
			EndSelect
			Select
				Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i8) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i8) = 2
				Send("{RIGHT}")
			Case guictrlread($i8) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
			Case guictrlread($i9) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i9) = 2
				Send("{RIGHT}")
			Case guictrlread($i9) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
s()			
				Exit
	
	Case $w = 10
			WinActivate("Football Team")
		GUICtrlSetData($in1, $1)
		GUICtrlSetData($in2, $2)
		GUICtrlSetData($in3, $3)
		GUICtrlSetData($in4, $4)
		GUICtrlSetData($in5, $5)
		GUICtrlSetData($in6, $6)
		GUICtrlSetData($in7, $7)
		GUICtrlSetData($in8, $8)
		GUICtrlSetData($in9, $9)
		GUICtrlSetData($in10, $10)
		Send("{tab}") ;1
		Send("{tab}") ;2
		Send("{tab}") ;3
		Send("{tab}") ;4
		Send("{tab}") ;5
		Send("{tab}") ;6
		Send("{tab}") ;7
		Send("{tab}") ;8
		Send("{tab}") ;9
		Send("{tab}") ;10
		Send("{tab}") ;11
		Send("{tab}") ;12
		Send("{tab}") ;13
		Send("{tab}") ;14
		Send("{tab}") ;15
		Send("{tab}") ;16
		Send("{tab}") ;17
		Send("{tab}") ;18
		Send("{tab}") ;19
		Select
			Case guictrlread($i1) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i1) = 2
				Send("{RIGHT}")
			Case guictrlread($i1) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i1) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
			Case guictrlread($i2) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i2) = 2
				Send("{RIGHT}")
			Case guictrlread($i2) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i2) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
			Case guictrlread($i3) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i3) = 2
				Send("{RIGHT}")
			Case guictrlread($i3) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i3) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i4) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i4) = 2
				Send("{RIGHT}")
			Case guictrlread($i4) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i4) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i5) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i5) = 2
				Send("{RIGHT}")
			Case guictrlread($i5) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i5) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i6) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i6) = 2
				Send("{RIGHT}")
			Case guictrlread($i6) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i6) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i7) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i7) = 2
				Send("{RIGHT}")
			Case guictrlread($i7) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i7) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i8) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i8) = 2
				Send("{RIGHT}")
			Case guictrlread($i8) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i8) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i9) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i9) = 2
				Send("{RIGHT}")
			Case guictrlread($i9) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i9) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			Send("{tab}")
			Select
				Case guictrlread($i10) = 1
				Send("{right}")
				Send("{left}")
			Case guictrlread($i10) = 2
				Send("{RIGHT}")
			Case guictrlread($i10) = 3
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 4
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 5
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 6
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 7
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 8
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 9
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			Case guictrlread($i10) = 10
				Send("{RIGHT}")	
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
				Send("{RIGHT}")
			EndSelect
			zapisz()	
			s()
				Exit
			EndSelect
			EndIf

 WEnd

	


	
	Func s()
IniWrite("seting1.txt","","",$zi1&@CRLF&GUICtrlRead($i1))
IniWrite("seting2.txt","","",$zi2&@CRLF&GUICtrlRead($i2))
IniWrite("seting3.txt","","",$zi3&@CRLF&GUICtrlRead($i3))
IniWrite("seting4.txt","","",$zi4&@CRLF&GUICtrlRead($i4))
IniWrite("seting5.txt","","",$zi5&@CRLF&GUICtrlRead($i5))
IniWrite("seting6.txt","","",$zi6&@CRLF&GUICtrlRead($i6))
IniWrite("seting7.txt","","",$zi7&@CRLF&GUICtrlRead($i7))
IniWrite("seting8.txt","","",$zi8&@CRLF&GUICtrlRead($i8))
IniWrite("seting9.txt","","",$zi9&@CRLF&GUICtrlRead($i9))
IniWrite("seting10.txt","","",$zi10&@CRLF&GUICtrlRead($i10))
IniWrite("setin1.ini","d","1",GUICtrlRead($i1))
IniWrite("setin1.ini","d","2",GUICtrlRead($i2))
IniWrite("setin1.ini","d","3",GUICtrlRead($i3))
IniWrite("setin1.ini","d","4",GUICtrlRead($i4))
IniWrite("setin1.ini","d","5",GUICtrlRead($i5))
IniWrite("setin1.ini","d","6",GUICtrlRead($i6))
IniWrite("setin1.ini","d","7",GUICtrlRead($i7))
IniWrite("setin1.ini","d","8",GUICtrlRead($i8))
IniWrite("setin1.ini","d","9",GUICtrlRead($i9))
IniWrite("setin1.ini","d","10",GUICtrlRead($i10))

   EndFunc


Func reset()
IniDelete("seting.ini","dane")
	if FileExists("seting.ini") Then
$t1=IniRead("seting.ini","dane","1","")
GUICtrlSetData($in1,$t1)
$t2=IniRead("seting.ini","dane","2","")
GUICtrlSetData($in2,$t2)
$t3=IniRead("seting.ini","dane","3","")
GUICtrlSetData($in3,$t3)
$t4=IniRead("seting.ini","dane","4","")
GUICtrlSetData($in4,$t4)
$t5=IniRead("seting.ini","dane","5","")
GUICtrlSetData($in5,$t5)
$t6=IniRead("seting.ini","dane","6","")
GUICtrlSetData($in6,$t6)
$t7=IniRead("seting.ini","dane","7","")
GUICtrlSetData($in7,$t7)
$t8=IniRead("seting.ini","dane","8","")
GUICtrlSetData($in8,$t8)
$t9=IniRead("seting.ini","dane","9","")
GUICtrlSetData($in9,$t9)
$t10=IniRead("seting.ini","dane","10","")
GUICtrlSetData($in10,$t10)
EndIf
	EndFunc
	Func zapisz()
IniWrite("seting.ini","dane","1",GUICtrlRead($in1))
IniWrite("seting.ini","dane","2",GUICtrlRead($in2))
IniWrite("seting.ini","dane","3",GUICtrlRead($in3))
IniWrite("seting.ini","dane","4",GUICtrlRead($in4))
IniWrite("seting.ini","dane","5",GUICtrlRead($in5))
IniWrite("seting.ini","dane","6",GUICtrlRead($in6))
IniWrite("seting.ini","dane","7",GUICtrlRead($in7))
IniWrite("seting.ini","dane","8",GUICtrlRead($in8))
IniWrite("seting.ini","dane","9",GUICtrlRead($in9))
IniWrite("seting.ini","dane","10",GUICtrlRead($in10))
   EndFunc
	
	

   Func stop()
	$x=500
	EndFunc
Func koniec()
	Exit
	EndFunc