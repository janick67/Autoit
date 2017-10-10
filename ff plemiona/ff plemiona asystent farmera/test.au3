#include "FF.au3"
#include <Array.au3>


_FFStart("https://pl116.plemiona.pl/game.php?village=41377&village=41377&screen=am_farm&group=176122",0,2)
If _FFIsConnected() Then

;~ 	_FFClick("button_middle","class")
;~ 	_FFClick("world_button_active","class")

;~ 	_FFOpenURL("https://pl118.plemiona.pl/game.php?village=9703&screen=market&mode=exchange")
;~ 	_FFclick("farm_village_6793 farm_icon farm_icon_b","class")
;~ 	_FFclick("farm_village_16573 farm_icon farm_icon_b","class")
	dim $wioski[110][9]
	$wioski=_FFTableWriteToArray("plunder_list","id")
EndIf

_ArrayDisplay($wioski)
				