for $i = 0 to 100
Send("{volume_up}")
Next
for $i = 0 to 30
Send("{volume_down}")
Next
SoundPlay("alarm.mp3",0)
MsgBox(0,"","")