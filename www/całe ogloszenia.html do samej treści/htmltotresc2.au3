$search = FileFindFirstFile("gotowe2/*")
$file=1
While $file<>""
$file=FileFindNextFile($search)
$og=FileRead("gotowe2/"&$file)
$p=StringInStr($og,'1.&nbsp;')
$gotowe=StringTrimLeft($og,$p-1)
$p=StringInStr($gotowe,'<p')
if $p>100 Then $gotowe=StringLeft($gotowe,$p-1)
FileWrite("gotowe/"&$file,$gotowe)
   WEnd
 