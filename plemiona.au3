

#include <FF.au3>
#include <string.au3>

While(1)
	$l=IniRead("a.txt","$l","","1")
	$i=IniRead("a.txt","","iloraz","0")
$di=IniRead("a.txt","odczyt","1",$i)
$d2i=IniRead("a.txt","odczyt","2",$i)
$d3i=IniRead("a.txt","odczyt","3",$i)
$d4i=IniRead("a.txt","odczyt","4",$i)
$d5i=IniRead("a.txt","odczyt","5",$i)
$d6i=IniRead("a.txt","odczyt","6",$i)
$d7i=IniRead("a.txt","odczyt","7",$i)
$d8i=IniRead("a.txt","odczyt","8",$i)
$d9i=IniRead("a.txt","odczyt","9",$i)
$d10i=IniRead("a.txt","odczyt","10",$i)
	_FFstart("http://s5.footballteam.pl/")


If _FFConnect() Then
	sleep(500)
	_FFSetValue ("janick67a@interia.pl","email",  "name")
         _FFSetValue ("janick67a","pass", "name")
		_FFFormSubmit(0)
		_FFopenurl("http://s5.footballteam.pl/tricks.php")
		_FFopenurl("http://s5.footballteam.pl/pm.php?SelectModule=MyMessages")
		_ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[5]/a","",9))
$sHTML = _FFReadHTML()
 
      $poziomhtml=StringTrimLeft($sHTML,StringInStr($sHTML,'<div class="text" style="border-top: 1px solid #4a4a4a; margin: 7px -2px -2px -2px">Niestety nie udaBo Ci si nauczy'))
      $poziom=_StringBetween($poziomhtml,'poziomie ','.')
	  IniWrite("a.txt","1","p",$poziom[0])
	 $p=IniRead("a.txt","1","p","") 
	 $od1=StringTrimLeft($sHTML,StringInStr($sHTML,'SzczegóBy:<br>'))
      $od=_StringBetween($od1,'</b>','<br>')
  
  if $p<>"10" And $p<>"9" And $p<>"8" And $p<>"7" And $p<>"6" And $p<>"5" And $p<>"4" And $p<>"3" And $p<>"2" And $p<>"1"  Then
  re()
  $sleep=0
  $l=InputBox(0,"skoñczy³em ten trick proszê wybraæ inny WPISZ LEVEL KOLEJNEGO TRICKU:")
  _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[2]/input","",9))
  _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[2]/input","",9))
  _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[2]/input","",9))
  _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[2]/input","",9))
  _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[1]/td[2]/input","",9))
  _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[2]/input","",9))
  EndIf
  IniWrite("a.txt","$l","",$l)
 _FFopenurl("http://s5.footballteam.pl/tricks.php?V=StartTrain&Level="&$l&"&Trick=nozyce")
 #region o
 if $p="1" Then
	 $sleep=10
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 IniWrite("a.txt","","iloraz","1")
 EndIf
  if $p="2" Then
	  $sleep=20
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
 EndIf
 if $p="3" Then
	 $sleep=30
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
		  EndIf
	  EndIf
	  if $p="4" Then
		  $sleep=40
	    IniWrite("a.txt","11","o",$od[0])
	 $o1=IniRead("a.txt","11","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 	  IniWrite("a.txt","4","o",$od[3])
	 $o4=IniRead("a.txt","4","o","")

	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
	  EndIf
	  	If $o4="dobrany prawidBowo" Then
		 rd()
		 EndIf
		 If $o4<>"dobrany prawidBowo" Then
		  r()
		  EndIf
	  EndIf
	   if $p="5" Then
		   $sleep=50
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 	  IniWrite("a.txt","4","o",$od[3])
	 $o4=IniRead("a.txt","4","o","")
 IniWrite("a.txt","5","o",$od[4])
	 $o5=IniRead("a.txt","5","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
	  EndIf
	  	If $o4="dobrany prawidBowo" Then
		 rd()
		 EndIf
		 If $o4<>"dobrany prawidBowo" Then
		  r()
	  EndIf
	  If $o5="dobrany prawidBowo" Then
		 td()
		 EndIf
		 If $o5<>"dobrany prawidBowo" Then
		  t()
	  EndIf
	  endif
	  if $p="6" Then
		  $sleep=60
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 	  IniWrite("a.txt","4","o",$od[3])
	 $o4=IniRead("a.txt","4","o","")
 IniWrite("a.txt","5","o",$od[4])
	 $o5=IniRead("a.txt","5","o","")
	 IniWrite("a.txt","6","o",$od[5])
	 $o6=IniRead("a.txt","6","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
	  EndIf
	  	If $o4="dobrany prawidBowo" Then
		 rd()
		 EndIf
		 If $o4<>"dobrany prawidBowo" Then
		  r()
	  EndIf
	  If $o5="dobrany prawidBowo" Then
		 td()
		 EndIf
		 If $o5<>"dobrany prawidBowo" Then
		  t()
	  EndIf
	   If $o6="dobrany prawidBowo" Then
		 yd()
		 EndIf
		 If $o6<>"dobrany prawidBowo" Then
		  y()
	  EndIf
	  EndIf
	  if $p="7" Then
		  $sleep=70
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 	  IniWrite("a.txt","4","o",$od[3])
	 $o4=IniRead("a.txt","4","o","")
 IniWrite("a.txt","5","o",$od[4])
	 $o5=IniRead("a.txt","5","o","")
	 IniWrite("a.txt","6","o",$od[5])
	 $o6=IniRead("a.txt","6","o","")
	 IniWrite("a.txt","7","o",$od[6])
	 $o7=IniRead("a.txt","7","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
	  EndIf
	  	If $o4="dobrany prawidBowo" Then
		 rd()
		 EndIf
		 If $o4<>"dobrany prawidBowo" Then
		  r()
	  EndIf
	  If $o5="dobrany prawidBowo" Then
		 td()
		 EndIf
		 If $o5<>"dobrany prawidBowo" Then
		  t()
	  EndIf
	  If $o6="dobrany prawidBowo" Then
		 yd()
		 EndIf
		 If $o6<>"dobrany prawidBowo" Then
		  y()
	  EndIf
	   If $o7="dobrany prawidBowo" Then
		 ud()
		 EndIf
		 If $o7<>"dobrany prawidBowo" Then
		  u()
EndIf
	  EndIf
	    if $p="8" Then
			$sleep=80
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 	  IniWrite("a.txt","4","o",$od[3])
	 $o4=IniRead("a.txt","4","o","")
         IniWrite("a.txt","5","o",$od[4])
	 $o5=IniRead("a.txt","5","o","")
	 IniWrite("a.txt","6","o",$od[5])
	 $o6=IniRead("a.txt","6","o","")
	 IniWrite("a.txt","7","o",$od[6])
	 $o7=IniRead("a.txt","7","o","")
	 IniWrite("a.txt","8","o",$od[7])
	 $o8=IniRead("a.txt","8","o","")
	 
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
	  EndIf
	  	If $o4="dobrany prawidBowo" Then
		 rd()
		 EndIf
		 If $o4<>"dobrany prawidBowo" Then
		  r()
	  EndIf
	  If $o5="dobrany prawidBowo" Then
		 td()
		 EndIf
		 If $o5<>"dobrany prawidBowo" Then
		  t()
	  EndIf
	  If $o6="dobrany prawidBowo" Then
		 yd()
		 EndIf
		 If $o6<>"dobrany prawidBowo" Then
		  y()
	  EndIf
	   If $o7="dobrany prawidBowo" Then
		 ud()
		 EndIf
		 If $o7<>"dobrany prawidBowo" Then
		  u()
		  EndIf
 If $o8="dobrany prawidBowo" Then
		 id()
		 EndIf
		 If $o8<>"dobrany prawidBowo" Then
		  i()
	  EndIf
  EndIf
  
	  if $p="9" Then
		  $sleep=90
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 	  IniWrite("a.txt","4","o",$od[3])
	 $o4=IniRead("a.txt","4","o","")
         IniWrite("a.txt","5","o",$od[4])
	 $o5=IniRead("a.txt","5","o","")
	 IniWrite("a.txt","6","o",$od[5])
	 $o6=IniRead("a.txt","6","o","")
	 IniWrite("a.txt","7","o",$od[6])
	 $o7=IniRead("a.txt","7","o","")
	 IniWrite("a.txt","8","o",$od[7])
	 $o8=IniRead("a.txt","8","o","")
	 IniWrite("a.txt","9","o",$od[8])
	 $o9=IniRead("a.txt","9","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
	  EndIf
	  	If $o4="dobrany prawidBowo" Then
		 rd()
		 EndIf
		 If $o4<>"dobrany prawidBowo" Then
		  r()
	  EndIf
	  If $o5="dobrany prawidBowo" Then
		 td()
		 EndIf
		 If $o5<>"dobrany prawidBowo" Then
		  t()
	  EndIf
	  If $o6="dobrany prawidBowo" Then
		 yd()
		 EndIf
		 If $o6<>"dobrany prawidBowo" Then
		  y()
	  EndIf
	   If $o7="dobrany prawidBowo" Then
		 ud()
		 EndIf
		 If $o7<>"dobrany prawidBowo" Then
		  u()
		  EndIf
 If $o8="dobrany prawidBowo" Then
		 id()
		 EndIf
		 If $o8<>"dobrany prawidBowo" Then
		  i()
	  EndIf
	   If $o9="dobrany prawidBowo" Then
		 od()
		 EndIf
		 If $o9<>"dobrany prawidBowo" Then
		  o()
	  EndIf
	  EndIf
	  	 
	  if $p="10" Then
		  $sleep=100
	    IniWrite("a.txt","1","o",$od[0])
	 $o1=IniRead("a.txt","1","o","")
	    IniWrite("a.txt","2","o",$od[1])
	 $o2=IniRead("a.txt","2","o","")
	  IniWrite("a.txt","3","o",$od[2])
	 $o3=IniRead("a.txt","3","o","")
	 	  IniWrite("a.txt","4","o",$od[3])
	 $o4=IniRead("a.txt","4","o","")
         IniWrite("a.txt","5","o",$od[4])
	 $o5=IniRead("a.txt","5","o","")
	 IniWrite("a.txt","6","o",$od[5])
	 $o6=IniRead("a.txt","6","o","")
	 IniWrite("a.txt","7","o",$od[6])
	 $o7=IniRead("a.txt","7","o","")
	 IniWrite("a.txt","8","o",$od[7])
	 $o8=IniRead("a.txt","8","o","")
	 IniWrite("a.txt","9","o",$od[8])
	 $o9=IniRead("a.txt","9","o","")
	 IniWrite("a.txt","0","o",$od[9])
	 $o0=IniRead("a.txt","0","o","")
	 If $o1="dobrany prawidBowo" Then
		 qd()
		 EndIf
		 If $o1<>"dobrany prawidBowo" Then
		  q()
		  EndIf
	 
	 If $o2="dobrany prawidBowo" Then
		 wd()
		 EndIf
		 If $o2<>"dobrany prawidBowo" Then
		  w()
		  EndIf
	
	If $o3="dobrany prawidBowo" Then
		 ed()
		 EndIf
		 If $o3<>"dobrany prawidBowo" Then
		  e()
	  EndIf
	  	If $o4="dobrany prawidBowo" Then
		 rd()
		 EndIf
		 If $o4<>"dobrany prawidBowo" Then
		  r()
	  EndIf
	  If $o5="dobrany prawidBowo" Then
		 td()
		 EndIf
		 If $o5<>"dobrany prawidBowo" Then
		  t()
	  EndIf
	  If $o6="dobrany prawidBowo" Then
		 yd()
		 EndIf
		 If $o6<>"dobrany prawidBowo" Then
		  y()
	  EndIf
	   If $o7="dobrany prawidBowo" Then
		 ud()
		 EndIf
		 If $o7<>"dobrany prawidBowo" Then
		  u()
		  EndIf
 If $o8="dobrany prawidBowo" Then
		 id()
		 EndIf
		 If $o8<>"dobrany prawidBowo" Then
		  i()
	  EndIf
	   If $o9="dobrany prawidBowo" Then
		 od()
		 EndIf
		 If $o9<>"dobrany prawidBowo" Then
		  o()
	  EndIf
	   If $o0="dobrany prawidBowo" Then
		 od()
		 EndIf
		 If $o0<>"dobrany prawidBowo" Then
		  o()
	  EndIf
  EndIf
  
	
  
#endregion o
      _ffformsubmit(0)
	  _ffquit()
	  MsgBox(0,"","ok")
	  Sleep($sleep*60000)
 EndIf
 WEnd
 
 #region func
 func qd()
	  Select
	 Case $di=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","1","1") 
	 Case $di=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","1","2")
	 Case $di=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","1","3")
	 Case $di=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","1","4")
	 Case $di=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","1","5")
	 Case $di=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","1","6")
	 Case $di=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","1","7")
	 Case $di=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","1","8")
	 Case $di=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","1","9")
		 EndSelect
	 endfunc
 func q()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	 func wd()
	  Select
	 Case $d2i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","2","1")
	 Case $d2i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","2","2")
	 Case $d2i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","2","3")
	 Case $d2i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","2","4")
	 Case $d2i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","2","5")
	 Case $d2i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","2","6")
	 Case $d2i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","2","7")
	 Case $d2i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","2","8")
	 Case $d2i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","2","9")
		 EndSelect
	 endfunc
 func w()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[2]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	 	 func ed()
	  Select
	 Case $d3i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[2]/input","",9))
		  IniWrite("a.txt","odczyt","3","1")
	 Case $d3i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","3","2")
	 Case $d3i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","3","3")
	 Case $d3i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","3","4")
	 Case $d3i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","3","5")
	 Case $d3i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","3","6")
	 Case $d3i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","3","7")
	 Case $d3i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","3","8")
	 Case $d3i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","3","9")
		 EndSelect
	 endfunc
 func e()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[3]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	 	 func rd()
	  Select
	 Case $d4i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","4","1")
	 Case $d4i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","4","2")
	 Case $d4i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","4","3")
	 Case $d4i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","4","4")
	 Case $d4i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","4","5")
	 Case $d4i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","4","6")
	 Case $d4i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","4","7")
	 Case $d4i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","4","8")
	 Case $d4i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","4","9")
		 EndSelect
	 endfunc
 func r()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[4]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
 func td()
	  Select
	 Case $d5i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","5","1")
	 Case $d5i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","5","2")
	 Case $d5i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","5","3")
	 Case $d5i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","5","4")
	 Case $d5i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","5","5")
	 Case $d5i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","5","6")
	 Case $d5i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","5","7")
	 Case $d5i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","5","8")
	 Case $d5i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","5","9")
		 EndSelect
	 endfunc
 func t()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[5]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	 func yd()
	  Select
	 Case $d6i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","6","1")
	 Case $d6i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","6","2")
	 Case $d6i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","6","3")
	 Case $d6i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","6","4")
	 Case $d6i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","6","5")
	 Case $d6i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","6","6")
	 Case $d6i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","6","7")
	 Case $d6i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","6","8")
	 Case $d6i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","6","9")
		 EndSelect
	 endfunc
 func y()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[6]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	  func ud()
	  Select
	 Case $d7i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","7","1")
	 Case $d7i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","7","2")
	 Case $d7i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","7","3")
	 Case $d7i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","7","4")
	 Case $d7i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","7","5")
	 Case $d7i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","7","6")
	 Case $d7i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","7","7")
	 Case $d7i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","7","8")
	 Case $d7i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","7","9")
		 EndSelect
	 endfunc
 func u()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[7]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	  func id()
	  Select
	 Case $d8i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","8","1")
	 Case $d8i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","8","2")
	 Case $d8i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","8","3")
	 Case $d8i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","8","4")
	 Case $d8i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","8","5")
	 Case $d8i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","8","6")
	 Case $d8i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","8","7")
	 Case $d8i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","8","8")
	 Case $d8i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","8","9")
		 EndSelect
	 endfunc
 func i()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[8]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	  func od()
	  Select
	 Case $d9i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","9","1")
	 Case $d9i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","9","2")
	 Case $d9i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","9","3")
	 Case $d9i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","9","4")
	 Case $d9i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","9","5")
	 Case $d9i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","9","6")
	 Case $d9i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","9","7")
	 Case $d9i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","9","8")
	 Case $d9i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","9","9")
		 EndSelect
	 endfunc
 func o()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[9]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	  func pd()
	  Select
	 Case $d0i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[2]/input","",9))
		 IniWrite("a.txt","odczyt","0","1")
	 Case $d0i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[3]/input","",9))
		 IniWrite("a.txt","odczyt","0","2")
	 Case $d0i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[4]/input","",9))
		 IniWrite("a.txt","odczyt","0","3")
	 Case $d0i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[5]/input","",9))
		 IniWrite("a.txt","odczyt","0","4")
	 Case $d0i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[6]/input","",9))
		 IniWrite("a.txt","odczyt","0","5")
	 Case $d0i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[7]/input","",9))
		 IniWrite("a.txt","odczyt","0","6")
	 Case $d0i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[8]/input","",9))
		 IniWrite("a.txt","odczyt","0","7")
	 Case $d0i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[9]/input","",9))
		 IniWrite("a.txt","odczyt","0","8")
	 Case $d0i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[10]/input","",9))
		 IniWrite("a.txt","odczyt","0","9")
		 EndSelect
	 endfunc
 func p()
	 Select
	 case $i=0 
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[2]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=1
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[3]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=2
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[4]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=3
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[5]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=4
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[6]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=5
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[7]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=6
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[8]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=7
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[9]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=8
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[10]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
	 Case $i=9
		 _ffclick(_FFXPath("/html/body/div[3]/div[4]/div[2]/div[4]/form/table/tbody/tr[0]/td[11]/input","",9))
		  IniWrite("a.txt","","iloraz",$i+1)
		 EndSelect
	 EndFunc
	 Func re()
		 IniDelete("a.txt","","iloraz")
		 IniDelete("a.txt","odczyt","1")
IniDelete("a.txt","odczyt","2")
IniDelete("a.txt","odczyt","3")
IniDelete("a.txt","odczyt","4")
IniDelete("a.txt","odczyt","5")
IniDelete("a.txt","odczyt","6")
IniDelete("a.txt","odczyt","7")
IniDelete("a.txt","odczyt","8")
IniDelete("a.txt","odczyt","9")
IniDelete("a.txt","odczyt","10")	
EndFunc
	#endregion func