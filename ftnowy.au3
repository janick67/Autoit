#Include <FF.au3>
$email="janick67a@interia.pl"
$pass="janick67a"
_FFStart("http://www.classic.footballteam.pl/index.php?action=trening")
If _FFIsConnected() Then
	$sObj = _FFXpath("/html/body/div[3]/div/div[3]/div[5]/table/tbody/tr/td[2]") ; get the image with the alt-text test_bild_3 ...
	_FFClick($sObj) ; ... and click on it
	EndIf