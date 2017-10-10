#include <Word.au3>
$po="op"

$app = _WordCreate(@ScriptDir &"\"&$po&".doc")
WinActivate($po)
send("{ctrldown}ac{ctrlup}")
_WordQuit($app)
FileWrite($po&".txt",clipget())
