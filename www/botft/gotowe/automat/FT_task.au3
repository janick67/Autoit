Global $Gtask_tk, $GLtask_tk, $Gtask_mp, $Gtask_pm, $Gtask_ps, $Gtask_pzg
func gtask()
	$Gtask_tk = GUICtrlCreateButton("Skorzystaj z treningu klubowego",5,25,180,20);Przycisk - Skorzystaj z treningu klubowego
	$GLtask_tk = GUICtrlCreateLabel("",190,28,40,20);Ile um mo¿na wytrenowaæ w treningu klubowym
	$Gtask_mp = GUICtrlCreateButton("Zap³aæ menad¿erowi",5,50,180,20);Przycisk - Zap³aæ menagerowi
	$Gtask_pm = GUICtrlCreateButton("Skorzystaj z premi",5,75,180,20);Przycisk - Skorzystaj z premi
	$Gtask_ps = GUICtrlCreateButton("Przelicz s³awe",5,100,180,20);Przycisk - Przelicz s³awe
	$Gtask_pzg = GUICtrlCreateButton("Stocz pojedynek z gwiazd¹",5,125,180,20);Przycisk - Stocz pojedynek z gwiazd¹
EndFunc

func task_premia()
$kod = "GET /manager_ajax.php?bonus=tak HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po³¹czenie z serwerem
TCPSend($iSocket, $kod);Wys³anie zapytania
EndFunc

func task_pensjamenagera()
$kod = "GET /manager_ajax.php?pensja=tak HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po³¹czenie z serwerem
TCPSend($iSocket, $kod);Wys³anie zapytania
EndFunc

Func task_slawa()
$kod = "GET /slawa.php HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po³¹czenie z serwerem
TCPSend($iSocket, $kod);Wys³anie zapytania
EndFunc

Func task_tk()
$kod = "GET /trening_ajax.php?v=tk&next=true HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po³¹czenie z serwerem
TCPSend($iSocket, $kod);Wys³anie zapytania
EndFunc

Func task_iletk()
$kod = "GET /trening_ajax.php?v=tk HTTP/1.1" & @CRLF & "Host:" & $host & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF
$re = hsend($host,$kod)
$p = StringInStr($re,'<b>')+3
$k = StringInStr($re,' UM',0,1,$p)
$w = StringMid($re,$p,$k-$p)
return $w
EndFunc

func task_getakcje($ile)
$post = "wycofaj="&$ile
$kod = "POST /akcje_schowek.php?v=wyc HTTP/1.1" & @CRLF & "Host: s5.footballteam.pl" & @CRLF & "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" & @CRLF & "Content-Length: "& StringLen($post) & @CRLF & "Cookie: " & $Zsesja & @CRLF & "Connection: keep-alive" & @CRLF & @CRLF & $post & @CRLF
$sName_To_IP = TCPNameToIP($host);zmianna hosta na nr ip
$iSocket = TCPConnect($sName_To_IP, 80);Po³¹czenie z serwerem
TCPSend($iSocket, $kod);Wys³anie zapytania
EndFunc