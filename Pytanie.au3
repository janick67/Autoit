Sleep(XXX*1000) ;zamiast XXX wpisz ile SEKUND ma zaczeka� przed zadaniem pytania

if MsgBox(36,"","XXX")=6 Then ;Je�li zosta�o naci�ni�te TAK to   ;Zamiast XXX wpisz pytanie
   MsgBox(0,"","XXX") ;;Zamiast XXX co mawy wyskoczy� je�li naci�nie TAK
   Send("{`}say XXX{Enter}") ;Zamiast XXX to co ma napisac w cs na czacie
Else ;Je�eli zosta�o naci�ni�te NIE to
   MsgBox(0,"","XXX") ;Zamiast XXX co mawy wyskoczy� je�li naci�nie NIE
   ProcessClose("hl.exe") ;Proces kt�ry ma zostac zamkni�ty po naci�ni�ciu NIE
                           ;Znajdz sobie w necie jak zmieni� tapete w Autoit
EndIf ;koniec
