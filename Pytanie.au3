Sleep(XXX*1000) ;zamiast XXX wpisz ile SEKUND ma zaczekaæ przed zadaniem pytania

if MsgBox(36,"","XXX")=6 Then ;Jeœli zosta³o naciœniête TAK to   ;Zamiast XXX wpisz pytanie
   MsgBox(0,"","XXX") ;;Zamiast XXX co mawy wyskoczyæ jeœli naciœnie TAK
   Send("{`}say XXX{Enter}") ;Zamiast XXX to co ma napisac w cs na czacie
Else ;Je¿eli zosta³o naciœniête NIE to
   MsgBox(0,"","XXX") ;Zamiast XXX co mawy wyskoczyæ jeœli naciœnie NIE
   ProcessClose("hl.exe") ;Proces który ma zostac zamkniêty po naciœniêciu NIE
                           ;Znajdz sobie w necie jak zmieniæ tapete w Autoit
EndIf ;koniec
