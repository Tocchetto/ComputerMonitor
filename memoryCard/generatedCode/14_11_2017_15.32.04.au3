#include <Misc.au3>
#include <Date.au3>
HotKeySet("{ESC}", "Terminate")
Func Terminate()
Exit 1
EndFunc
Sleep(882.496441694418)
MouseMove(1223,488)
MouseDown("left")
Sleep(61.9344983322461)
MouseMove(1223,488)
MouseUp("left")
Sleep(1445.39018770006)
Send("{a down}")
Sleep(116.531540694486)
Send("{a up}")
