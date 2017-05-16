#include <Misc.au3>
#include <Date.au3>

HotKeySet("{ESC}", "Terminate")

Func Terminate()
   $fileName = StringReplace(String(_Now()), "/", "_")
   $fileName = StringReplace($fileName, " ", "_")
   $fileName = StringReplace($fileName, ":", ".")
   $a = FileCopy(@ScriptDir & "\moves.txt", @ScriptDir & "\memoryCard\" & $fileName & ".au3")
   FileDelete("moves.txt")
   Exit 1
EndFunc

main()

Func main()
   FileWrite("moves.txt", "#include <Misc.au3>" & @CRLF & "#include <Date.au3>" & @CRLF & 'HotKeySet("{ESC}", "Terminate")' & @CRLF & "Func Terminate()" & @CRLF & "Exit 1" & @CRLF & "EndFunc" & @CRLF)
   while 1

	  If _IsPressed(01) Then ;Left click
		 $pos = MouseGetPos()
		 FileWrite("moves.txt", "MouseClick("& '"left", ' & $pos[0] & "," & $pos[1] & ")" & @CRLF);
		 sleep(200)
	  EndIf

	  If _IsPressed("0D") Then

		 MsgBox(0,"","")

	  EndIf
   WEnd
EndFunc