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
FileWrite("moves.txt", "#include <Misc.au3>" & @CRLF & "#include <Date.au3>" & @CRLF & 'HotKeySet("{ESC}", "Terminate")' & @CRLF & "Func Terminate()" & @CRLF & "Exit 1" & @CRLF & "EndFunc" & @CRLF)

main()

Func main()
   $outTimer = 0
   while 1

	  If $outTimer == 0 Then
		 $outTimer = TimerInit()
	  EndIf

	  If _IsPressed(01) Then ;Left click
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(01)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", "MouseMove(" & $initialPos[0] & "," & $initialPos[1] & ")" & @CRLF & 'MouseDown("left")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & "MouseMove(" & $finalPos[0] & "," & $finalPos[1] & ")" & @CRLF & 'MouseUp("left")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(02) Then ;Right click
		 $pos = MouseGetPos()
		 FileWrite("moves.txt", "MouseClick("& '"right", ' & $pos[0] & "," & $pos[1] & ",4)" & @CRLF);
		 sleep(50)
	  EndIf

	  If _IsPressed("0D") Then

		 MsgBox(0,"","")

	  EndIf
   WEnd
EndFunc