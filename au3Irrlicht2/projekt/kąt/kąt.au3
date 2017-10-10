			$x = 3 - 4
            $y = 1 - 5
            $tg =atan($y/ $x) * (180 / (4 * ATan(1)))
            if($tg >= 0) Then
				
                  if($x <= 0) Then
                        MsgBox(0,"",90 + abs($tg))
						else
                       MsgBox(0,"", $tg + 270     )            
					   EndIf
            else 
                  if($x <= 0) Then
                        MsgBox(0,"",  (90 - abs($tg)))
                  else
                        MsgBox(0,"", 180 + (90 - abs($tg)))
					EndIf
					EndIf
Exit
