$search = FileFindFirstFile("pliki/*")
$file=1
While $file<>""
 $file=FileFindNextFile($search)
$og=FileRead("pliki/"&$file)
$p=StringInStr($og,'<div class="post">')
$gotowe=StringTrimLeft($og,$p+18)
$k=StringInStr($gotowe,'</div>')
if $k<1000 Then $k=StringInStr($gotowe,'</div>',1,2)
$gotowe=StringLeft($gotowe,$k-1)
FileWrite("gotowe2/"&$file,$gotowe)
   WEnd
 