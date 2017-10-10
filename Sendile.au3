 HotKeySet("`","poczatek")
 HotKeySet("{Tab}","po")
 HotKeySet("{ESC}","ex")
while 1
	Sleep(100000)
	WEnd

func d($r,$ki)
for $i=1 to $ki step 1
   send($r)
Next
EndFunc

func df($f,$ki)
for $i=1 to $ki step 1
   $f
Next
EndFunc

func _z2($ki)
   for $i=1 to $ki step 1
d("{delete}",12)
d("{right}",7)
d("{delete}",1)
d("{right}",10)
Next
EndFunc

func _z1($ki)
   for $i=1 to $ki step 1
   d("{delete}",12)
   d("{right}",6)
   d("{delete}",1)
   d("{right}",10)
   Next
   EndFunc

func _1()
   d("{down}",InputBox("1","W dó³","6"))
   d("{left}",2)
   $1=InputBox("1","1 czêœæ","1")
   WinActivate("G:\Autoit\ja\")
   _z1($1)
   _z2(9-$1)
   d("{right}",3)
EndFunc

func _2()
   $1=InputBox("2","1 czêœæ","0")
   _z1($1)
   _z2(9-$1)
   d("{right}",3)
EndFunc

func _3()
   $1=InputBox("3","1 czêœæ","0")
   _z1($1)
   _z2(9-$1)
   Send("{home}")
   Send("{shiftdown}{end}{shiftup}")
   Send("{ctrldown}v{ctrlup}")
   EndFunc

func obok($ki)
   for $i=1 to $ki step 1
   Send("{ctrldown}v{ctrlup}")
  d("{right}",29)
Next
   EndFunc

func poczatek()
obok(1)


EndFunc

func po()
   d("{down}",6)
   d("{left}",2)
   WinActivate("G:\Autoit\ja\")
   _z1(1)
   _z2(8)
   d("{right}",3)
    _z1(0)
   _z2(9)
   d("{right}",3)
   _z1(0)
   _z2(9)
   Send("{home}")
   Send("{shiftdown}{end}{shiftup}")
   Send("{ctrldown}v{ctrlup}")
   EndFunc



func ex()
   Exit
EndFunc 
























                                                           