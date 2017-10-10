ProgressOn("Pasek postêpu", "Zaawansowanie:", "0 %",-1,10,16)
For $i = 10 to 100 step 10
   sleep(1000)
   ProgressSet( $i, $i & " %")
Next
ProgressSet(100 , "100 %", "Zakoñczone!")
sleep(3000)
ProgressOff()