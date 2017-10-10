#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
HotKeySet("{esc}","q")
Dim $in[91]
$wylos=0
$ra=0
$poi=0
$ileza=1
$pow=0
Sleep(1000)
 _arraydisplay($in)
While 1
		ConsoleWrite("G³ówna pentla")
		uzupelnij()
WEnd

func wyczysc()   
   for $i=1 to 81 step 1
	  $in[$i]=0
   Next
   uzupelnij()
   EndFunc

Func uzupelnij()
   $pow+=1
   ConsoleWrite(" "&$pow)
   if $pow<1000 Then
       for $i=1 to 81 step 1
	  spr($i)
   Next
EndIf

if $pow>1000 Then
   $pow=0
EndIf

   if $in[81]>0 Then  zapisz() 
	  
 ConsoleWrite("koniec")
   EndFunc





func spr($spi)
   $poi=0
   Switch $spi
   case 1
	  Do
	
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
 $in[$spi]=$ra
    case 10
	  Do
		 
		  $poi+=1
		  $ra=Random(1,9,1)
	  Until  $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
	  $in[$spi]=$ra
   case 19
	  Do

		  $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
	  $in[$spi]=$ra
    case 28
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]    
	  $in[$spi]=$ra
    case 37
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  $in[$spi]=$ra
    case 46
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  GUICtrlSetData($in[$spi],$ra)
    case 55
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
    case 64
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
    case 73
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[1] and $ra<>$in[10] and $ra<>$in[19] and $ra<>$in[28] and $ra<>$in[37] and $ra<>$in[46] and $ra<>$in[55] and $ra<>$in[64] and $ra<>$in[73]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
	  
	  
	
	
	   case 2 
	  Do 
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
	  $in[$spi]=$ra
	  case 11
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
	  $in[$spi]=$ra
	  case 20
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
	  $in[$spi]=$ra
	  case 29
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  $in[$spi]=$ra
	  case 38
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  $in[$spi]=$ra
	  case 47
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  $in[$spi]=$ra
	  case 56
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
	  case 65
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
	  case 74
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[2] and $ra<>$in[11] and $ra<>$in[20] and $ra<>$in[29] and $ra<>$in[38] and $ra<>$in[47] and $ra<>$in[56] and $ra<>$in[65] and $ra<>$in[74]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
	  
	  


	   case 3
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
	  $in[$spi]=$ra
	  case 12
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
	  $in[$spi]=$ra
	  case 21
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21]
$in[$spi]=$ra
	  case 30
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  $in[$spi]=$ra
	  case 39
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  $in[$spi]=$ra
	  case 48
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48]
	  $in[$spi]=$ra
	  case 57
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
	  case 66
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra
	  case 75
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[3] and $ra<>$in[12] and $ra<>$in[21] and $ra<>$in[30] and $ra<>$in[39] and $ra<>$in[48] and $ra<>$in[57] and $ra<>$in[66] and $ra<>$in[75]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75]
	  $in[$spi]=$ra

	  
	  
	  
	   case 4
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	  case 13
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	  case 22
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	  case 31
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]   
	  $in[$spi]=$ra
	  case 40
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	  case 49
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	  case 58
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	  case 67
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	  case 76
	  Do
		 
		  $ra=Random(1,9,1)
		   $poi+=1
	  Until $ra<>$in[4] and $ra<>$in[13] and $ra<>$in[22] and $ra<>$in[31] and $ra<>$in[40] and $ra<>$in[49] and $ra<>$in[58] and $ra<>$in[67] and $ra<>$in[76]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	  
	  
	  
	   case 5
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	  case 14
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	  case 23
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	  case 32
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	  case 41
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	  case 50
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	  case 59
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	  case 68
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	  case 77
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[5] and $ra<>$in[14] and $ra<>$in[23] and $ra<>$in[32] and $ra<>$in[41] and $ra<>$in[50] and $ra<>$in[59] and $ra<>$in[68] and $ra<>$in[77]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	  
	  
	  
	  
	   case 6
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	   case 15
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	   case 24
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24]
	  $in[$spi]=$ra
	   case 33
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	   case 42
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	   case 51
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[40] and $ra<>$in[40] and $ra<>$in[42] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51]
	  $in[$spi]=$ra
	   case 60
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	   case 69
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	   case 78
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[6] and $ra<>$in[15] and $ra<>$in[24] and $ra<>$in[33] and $ra<>$in[42] and $ra<>$in[51] and $ra<>$in[60] and $ra<>$in[69] and $ra<>$in[78]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78]
	  $in[$spi]=$ra
	  
	  
	   case 7
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	  case 16
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	  case 25
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	  case 34
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>GUICtrlRead($in[7]) and $ra<>GUICtrlRead($in[16]) and $ra<>GUICtrlRead($in[25]) and $ra<>GUICtrlRead($in[34]) and $ra<>GUICtrlRead($in[43]) and $ra<>GUICtrlRead($in[52]) and $ra<>GUICtrlRead($in[61]) and $ra<>GUICtrlRead($in[70]) and $ra<>GUICtrlRead($in[79])    And $ra<>GUICtrlRead($in[28]) and $ra<>GUICtrlRead($in[29]) and $ra<>GUICtrlRead($in[30]) and $ra<>GUICtrlRead($in[31]) and $ra<>GUICtrlRead($in[32]) and $ra<>GUICtrlRead($in[33]) and $ra<>GUICtrlRead($in[34]) and $ra<>GUICtrlRead($in[35]) and $ra<>GUICtrlRead($in[36])    and $ra<>GUICtrlRead($in[34]) and $ra<>GUICtrlRead($in[35]) and $ra<>GUICtrlRead($in[36]) and $ra<>GUICtrlRead($in[43]) and $ra<>GUICtrlRead($in[44]) and $ra<>GUICtrlRead($in[45]) and $ra<>GUICtrlRead($in[52]) and $ra<>GUICtrlRead($in[53]) and $ra<>GUICtrlRead($in[54])
	  $in[$spi]=$ra
	  case 43
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	  case 52
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	  case 61
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	  case 70
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	  case 79
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[7] and $ra<>$in[16] and $ra<>$in[25] and $ra<>$in[34] and $ra<>$in[43] and $ra<>$in[52] and $ra<>$in[61] and $ra<>$in[70] and $ra<>$in[79]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	  
	  
	  
	  
	   case 8
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	  case 17
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	  case 26
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	  case 35
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	  case 44
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	  case 53
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	  case 62
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	  case 71
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	  case 80
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[8] and $ra<>$in[17] and $ra<>$in[26] and $ra<>$in[35] and $ra<>$in[44] and $ra<>$in[53] and $ra<>$in[62] and $ra<>$in[71] and $ra<>$in[80]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	  
	  
	  
	  
	   case 9
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    and $ra<>$in[1] and $ra<>$in[2] and $ra<>$in[3] and $ra<>$in[4] and $ra<>$in[5] and $ra<>$in[6] and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	   case 18
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    and $ra<>$in[10] and $ra<>$in[11] and $ra<>$in[12] and $ra<>$in[13] and $ra<>$in[14] and $ra<>$in[15] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	   case 27
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    and $ra<>$in[19] and $ra<>$in[20] and $ra<>$in[21] and $ra<>$in[22] and $ra<>$in[23] and $ra<>$in[24] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]    and $ra<>$in[7] and $ra<>$in[8] and $ra<>$in[9] and $ra<>$in[16] and $ra<>$in[17] and $ra<>$in[18] and $ra<>$in[25] and $ra<>$in[26] and $ra<>$in[27]
	  $in[$spi]=$ra
	   case 36
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)      
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    And $ra<>$in[28] and $ra<>$in[29] and $ra<>$in[30] and $ra<>$in[31] and $ra<>$in[32] and $ra<>$in[33] and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	   case 45
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    And $ra<>$in[37] and $ra<>$in[38] and $ra<>$in[39] and $ra<>$in[40] and $ra<>$in[41] and $ra<>$in[42] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	   case 54
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    And $ra<>$in[46] and $ra<>$in[47] and $ra<>$in[48] and $ra<>$in[49] and $ra<>$in[50] and $ra<>$in[51] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]    and $ra<>$in[34] and $ra<>$in[35] and $ra<>$in[36] and $ra<>$in[43] and $ra<>$in[44] and $ra<>$in[45] and $ra<>$in[52] and $ra<>$in[53] and $ra<>$in[54]
	  $in[$spi]=$ra
	   case 63
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    And $ra<>$in[55] and $ra<>$in[56] and $ra<>$in[57] and $ra<>$in[58] and $ra<>$in[59] and $ra<>$in[60] and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	   case 72
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    And $ra<>$in[64] and $ra<>$in[65] and $ra<>$in[66] and $ra<>$in[67] and $ra<>$in[68] and $ra<>$in[69] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
	   case 81
	  Do
		 
			 $poi+=1
		  $ra=Random(1,9,1)
	  Until $ra<>$in[9] and $ra<>$in[18] and $ra<>$in[27] and $ra<>$in[36] and $ra<>$in[45] and $ra<>$in[54] and $ra<>$in[63] and $ra<>$in[72] and $ra<>$in[81]    And $ra<>$in[73] and $ra<>$in[74] and $ra<>$in[75] and $ra<>$in[76] and $ra<>$in[77] and $ra<>$in[78] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]    and $ra<>$in[61] and $ra<>$in[62] and $ra<>$in[63] and $ra<>$in[70] and $ra<>$in[71] and $ra<>$in[72] and $ra<>$in[79] and $ra<>$in[80] and $ra<>$in[81]
	  $in[$spi]=$ra
      EndSwitch
   EndFunc
   
   
   func zapisz()
	  for $i=1 to 81 step 1
	  IniWrite("Sudoku-Plansze.ini",$ileza,$i,$in[$i])
  Next
  $ileza+=1
   Beep(1000,100)
   MsgBox(0,"","uda³o sie")
EndFunc


   func q()
	  Exit
	  EndFunc
   
;~  1 and $ra<>GUICtrlRead($in[1]) and $ra<>GUICtrlRead($in[2]) and $ra<>GUICtrlRead($in[3]) and $ra<>GUICtrlRead($in[10]) and $ra<>GUICtrlRead($in[11]) and $ra<>GUICtrlRead($in[12]) and $ra<>GUICtrlRead($in[19]) and $ra<>GUICtrlRead($in[20]) and $ra<>GUICtrlRead($in[21])
;~  2 and $ra<>GUICtrlRead($in[4]) and $ra<>GUICtrlRead($in[5]) and $ra<>GUICtrlRead($in[6]) and $ra<>GUICtrlRead($in[13]) and $ra<>GUICtrlRead($in[14]) and $ra<>GUICtrlRead($in[15]) and $ra<>GUICtrlRead($in[22]) and $ra<>GUICtrlRead($in[23]) and $ra<>GUICtrlRead($in[24])
;~  3 and $ra<>GUICtrlRead($in[7]) and $ra<>GUICtrlRead($in[8]) and $ra<>GUICtrlRead($in[9]) and $ra<>GUICtrlRead($in[16]) and $ra<>GUICtrlRead($in[17]) and $ra<>GUICtrlRead($in[18]) and $ra<>GUICtrlRead($in[25]) and $ra<>GUICtrlRead($in[26]) and $ra<>GUICtrlRead($in[27])
;~  4 and $ra<>GUICtrlRead($in[28]) and $ra<>GUICtrlRead($in[29]) and $ra<>GUICtrlRead($in[30]) and $ra<>GUICtrlRead($in[37]) and $ra<>GUICtrlRead($in[38]) and $ra<>GUICtrlRead($in[39]) and $ra<>GUICtrlRead($in[46]) and $ra<>GUICtrlRead($in[47]) and $ra<>GUICtrlRead($in[48])
;~  5 and $ra<>GUICtrlRead($in[31]) and $ra<>GUICtrlRead($in[32]) and $ra<>GUICtrlRead($in[33]) and $ra<>GUICtrlRead($in[40]) and $ra<>GUICtrlRead($in[40]) and $ra<>GUICtrlRead($in[42]) and $ra<>GUICtrlRead($in[49]) and $ra<>GUICtrlRead($in[50]) and $ra<>GUICtrlRead($in[51])
;~  6 and $ra<>GUICtrlRead($in[34]) and $ra<>GUICtrlRead($in[35]) and $ra<>GUICtrlRead($in[36]) and $ra<>GUICtrlRead($in[43]) and $ra<>GUICtrlRead($in[44]) and $ra<>GUICtrlRead($in[45]) and $ra<>GUICtrlRead($in[52]) and $ra<>GUICtrlRead($in[53]) and $ra<>GUICtrlRead($in[54])
;~  7 and $ra<>GUICtrlRead($in[55]) and $ra<>GUICtrlRead($in[56]) and $ra<>GUICtrlRead($in[57]) and $ra<>GUICtrlRead($in[64]) and $ra<>GUICtrlRead($in[65]) and $ra<>GUICtrlRead($in[66]) and $ra<>GUICtrlRead($in[73]) and $ra<>GUICtrlRead($in[74]) and $ra<>GUICtrlRead($in[75])
;~  8 and $ra<>GUICtrlRead($in[58]) and $ra<>GUICtrlRead($in[59]) and $ra<>GUICtrlRead($in[60]) and $ra<>GUICtrlRead($in[67]) and $ra<>GUICtrlRead($in[68]) and $ra<>GUICtrlRead($in[69]) and $ra<>GUICtrlRead($in[76]) and $ra<>GUICtrlRead($in[77]) and $ra<>GUICtrlRead($in[78])
;~  9 and $ra<>GUICtrlRead($in[61]) and $ra<>GUICtrlRead($in[62]) and $ra<>GUICtrlRead($in[63]) and $ra<>GUICtrlRead($in[70]) and $ra<>GUICtrlRead($in[71]) and $ra<>GUICtrlRead($in[72]) and $ra<>GUICtrlRead($in[79]) and $ra<>GUICtrlRead($in[80]) and $ra<>GUICtrlRead($in[81])
;~   
  
  
;~ 1	Until and $ra<>GUICtrlRead($in[1]) and $ra<>GUICtrlRead($in[2]) and $ra<>GUICtrlRead($in[3]) and $ra<>GUICtrlRead($in[4]) and $ra<>GUICtrlRead($in[5]) and $ra<>GUICtrlRead($in[6]) and $ra<>GUICtrlRead($in[7]) and $ra<>GUICtrlRead($in[8]) and $ra<>GUICtrlRead($in[9])
;~ 2	Until and $ra<>GUICtrlRead($in[10]) and $ra<>GUICtrlRead($in[11]) and $ra<>GUICtrlRead($in[12]) and $ra<>GUICtrlRead($in[13]) and $ra<>GUICtrlRead($in[14]) and $ra<>GUICtrlRead($in[15]) and $ra<>GUICtrlRead($in[16]) and $ra<>GUICtrlRead($in[17]) and $ra<>GUICtrlRead($in[18])
;~ 	3  and $ra<>GUICtrlRead($in[19]) and $ra<>GUICtrlRead($in[20]) and $ra<>GUICtrlRead($in[21]) and $ra<>GUICtrlRead($in[22]) and $ra<>GUICtrlRead($in[23]) and $ra<>GUICtrlRead($in[24]) and $ra<>GUICtrlRead($in[25]) and $ra<>GUICtrlRead($in[26]) and $ra<>GUICtrlRead($in[27])
;~ 	4  And $ra<>GUICtrlRead($in[28]) and $ra<>GUICtrlRead($in[29]) and $ra<>GUICtrlRead($in[30]) and $ra<>GUICtrlRead($in[31]) and $ra<>GUICtrlRead($in[32]) and $ra<>GUICtrlRead($in[33]) and $ra<>GUICtrlRead($in[34]) and $ra<>GUICtrlRead($in[35]) and $ra<>GUICtrlRead($in[36])
;~ 	5  And $ra<>GUICtrlRead($in[37]) and $ra<>GUICtrlRead($in[38]) and $ra<>GUICtrlRead($in[39]) and $ra<>GUICtrlRead($in[40]) and $ra<>GUICtrlRead($in[41]) and $ra<>GUICtrlRead($in[42]) and $ra<>GUICtrlRead($in[43]) and $ra<>GUICtrlRead($in[44]) and $ra<>GUICtrlRead($in[45])
;~ 	6  And $ra<>GUICtrlRead($in[46]) and $ra<>GUICtrlRead($in[47]) and $ra<>GUICtrlRead($in[48]) and $ra<>GUICtrlRead($in[49]) and $ra<>GUICtrlRead($in[50]) and $ra<>GUICtrlRead($in[51]) and $ra<>GUICtrlRead($in[52]) and $ra<>GUICtrlRead($in[53]) and $ra<>GUICtrlRead($in[54])
;~ 	7  And $ra<>GUICtrlRead($in[55]) and $ra<>GUICtrlRead($in[56]) and $ra<>GUICtrlRead($in[57]) and $ra<>GUICtrlRead($in[58]) and $ra<>GUICtrlRead($in[59]) and $ra<>GUICtrlRead($in[60]) and $ra<>GUICtrlRead($in[61]) and $ra<>GUICtrlRead($in[62]) and $ra<>GUICtrlRead($in[63])
;~ 	8  And $ra<>GUICtrlRead($in[64]) and $ra<>GUICtrlRead($in[65]) and $ra<>GUICtrlRead($in[66]) and $ra<>GUICtrlRead($in[67]) and $ra<>GUICtrlRead($in[68]) and $ra<>GUICtrlRead($in[69]) and $ra<>GUICtrlRead($in[70]) and $ra<>GUICtrlRead($in[71]) and $ra<>GUICtrlRead($in[72])
;~ 	9  And $ra<>GUICtrlRead($in[73]) and $ra<>GUICtrlRead($in[74]) and $ra<>GUICtrlRead($in[75]) and $ra<>GUICtrlRead($in[76]) and $ra<>GUICtrlRead($in[77]) and $ra<>GUICtrlRead($in[78]) and $ra<>GUICtrlRead($in[79]) and $ra<>GUICtrlRead($in[80]) and $ra<>GUICtrlRead($in[81])


