#include "FT_nt.au3"
#include "FT_post.au3"
#include "FT_trick.au3"
#include "FT.au3"
#include <Array.au3>

MsgBox(0,"","")

global $Zsesja = idsesji();funkcja uzyskuje id sesji
MsgBox(0,"","")
loguj("janick67a@interia.pl","janick67a",5)
loadtop();�aduje podstawowe staty
post_get()
trick_spr2()
func trick_spr2();Sprawdza czy s� wiadomo�ci z treningu
	local $autor = _ArrayFindAll($Tpost,"Informacja","","","","",2);Szuka w�r�d pobranych wiadomo�ci informacji od autora Informacja
	if $autor <> -1 Then;Je�eli co� znalaz�o to:
		for $i = 0 to UBound($autor)-1;Wszystkie znalezione elementy
			if $Tpost[$autor[$i]][3] = "Raport z treningu" and IniRead($Ztrick_file,"Przeczytane",$Tpost[$autor[$i]][0],0) = 0 then;Wiadomo�� o temacie Raport z treningu
				slog("Sprawdzono raporty z trick�w nr "&$i+1)
				$Twsp = trick_read($Tpost[$autor[$i]][0])
				_ArrayDisplay($Twsp)
				if StringInStr($Twsp[1][0],"ulacje") > 0 and $Ttrick[$i][2] <= $Twsp[0][1] Then;Je�eli uko�czono trick
					trick_lvl($Twsp[0][0], $Twsp[0][1]+1);Uko�czono poziom
					slog("Gratulacje nauczy�e� sie tricku "&$Twsp[0][0]&" na poziomie "&$Twsp[0][1])
					ContinueLoop
				EndIf
				$iz = 0;Ile zmian
				for $ii = 1 to $Twsp[0][1]
					$iz += trick_liczba($Twsp[0][0], $Twsp[0][1], $ii, $Twsp[$ii][0], $Twsp[$ii][1]);Trick, poziom, wsp, liczba, opcja(za ma�o, za du�o itp.)
				Next
				if $iz > 0 Then slog("Zapisano "&$iz&" zmian w pliku "&$Ztrick_file&" w tricku "&$Twsp[0][0]);Je�eli co� si� zmieni�o to pisze to w logu
			EndIf
		Next
	Else;Je�eli nie znaleziono wiadomo�ci to pisze w logu
		slog("Nie masz nowych wiadomo�ci z treningu trick�w")
	EndIf
	_ArrayDisplay($Ttrick)
EndFunc;trick_spr