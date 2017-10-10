#include <FF.au3>

	_FFSTART("http://www.prisonwars.pl/")
			 While(1)
				Send("{ctrldown}{shiftdown}s{ctrlup}{shiftup}")
				 MouseClick("")
		 Sleep(1200)
		 MouseClick("")
		Sleep(12000)
	 If _FFConnect() Then
	
		 _ffopenurl("http://prisonwars.pl/422522/")
		 
	 EndIf
	
	 WEnd