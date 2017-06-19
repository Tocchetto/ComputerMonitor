#include <Misc.au3>
#include <Date.au3>

HotKeySet("{ESC}", "Terminate")

Func Terminate()
   $fileName = StringReplace(String(_Now()), "/", "_")
   $fileName = StringReplace($fileName, " ", "_")
   $fileName = StringReplace($fileName, ":", ".")
   FileCopy(@ScriptDir & "\moves.txt", @ScriptDir & "\memoryCard\generatedCode\" & $fileName & ".au3")
   FileCopy(@ScriptDir & "\log.txt", @ScriptDir & "\memoryCard\logs\" & $fileName & ".txt")
   FileDelete("moves.txt")
   FileDelete("log.txt")
   Exit 1
EndFunc

FileWrite("moves.txt", "#include <Misc.au3>" & @CRLF & "#include <Date.au3>" & @CRLF & 'HotKeySet("{ESC}", "Terminate")' & @CRLF & "Func Terminate()" & @CRLF & "Exit 1" & @CRLF & "EndFunc" & @CRLF)

If Not FileExists(@ScriptDir & "\memoryCard") Then
   DirCreate(@ScriptDir & "\memoryCard")
   DirCreate(@ScriptDir & "\memoryCard\generatedCode")
   DirCreate(@ScriptDir & "\memoryCard\logs\")
EndIf

main()

Func main()
   $outTimer = 0
   while 1

	  If $outTimer == 0 Then
		 $outTimer = TimerInit() ;Count the time that the user is idle
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
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(02)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", "MouseMove(" & $initialPos[0] & "," & $initialPos[1] & ")" & @CRLF & 'MouseDown("right")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & "MouseMove(" & $finalPos[0] & "," & $finalPos[1] & ")" & @CRLF & 'MouseUp("right")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(41) Then ;Letter A
		 FileWrite("log.txt","a")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(41)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{a down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{a up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(42) Then ;Letter B
		 FileWrite("log.txt","b")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(42)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{b down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{b up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(43) Then ;Letter C
		 FileWrite("log.txt","c")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(43)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{c down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{c up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(44) Then ;Letter D
		 FileWrite("log.txt","d")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(44)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{d down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{d up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(45) Then ;Letter E
		 FileWrite("log.txt","e")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(45)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{e down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{e up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(46) Then ;Letter F
		 FileWrite("log.txt","f")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(46)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{f down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{f up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(47) Then ;Letter G
		 FileWrite("log.txt","g")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(47)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{g down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{g up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(48) Then ;Letter H
		 FileWrite("log.txt","h")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(48)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{h down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{h up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed(49) Then ;Letter I
		 FileWrite("log.txt","i")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed(49)
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{i down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{i up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("4A") Then ;Letter J
		 FileWrite("log.txt","j")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("4A")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{j down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{j up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("4B") Then ;Letter K
		 FileWrite("log.txt","k")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("4B")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{k down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{k up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("4C") Then ;Letter L
		 FileWrite("log.txt","l")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("4C")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{l down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{l up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("4D") Then ;Letter M
		 FileWrite("log.txt","m")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("4D")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{m down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{m up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("4E") Then ;Letter N
		 FileWrite("log.txt","n")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("4E")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{n down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{n up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("4F") Then ;Letter O
		 FileWrite("log.txt","o")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("4F")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{o down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{o up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("50") Then ;Letter P
		 FileWrite("log.txt","p")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("50")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{p down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{p up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("51") Then ;Letter Q
		 FileWrite("log.txt","q")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("51")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{q down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{q up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("52") Then ;Letter R
		 FileWrite("log.txt","r")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("52")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{r down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{r up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("53") Then ;Letter S
		 FileWrite("log.txt","s")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("53")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{s down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{s up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("54") Then ;Letter T
		 FileWrite("log.txt","t")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("54")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{t down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{t up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("55") Then ;Letter U
		 FileWrite("log.txt","u")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("55")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{u down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{u up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("56") Then ;Letter V
		 FileWrite("log.txt","v")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("56")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{v down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{v up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("57") Then ;Letter W
		 FileWrite("log.txt","w")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("57")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{w down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{w up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("58") Then ;Letter X
		 FileWrite("log.txt","x")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("58")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{x down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{x up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("59") Then ;Letter Y
		 FileWrite("log.txt","y")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("59")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{y down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{y up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("5A") Then ;Letter Z
		 FileWrite("log.txt","z")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("5A")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{z down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{z up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("0D") Then ;Enter
		 FileWrite("log.txt",@CRLF)
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("0D")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{ENTER down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{ENTER up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

	  If _IsPressed("20") Then ;SpaceBar
		 FileWrite("log.txt"," ")
		 FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
		 $inTimer = TimerInit()
		 $initialPos = MouseGetPos()
		 While _IsPressed("20")
			Sleep(10)
		 WEnd
		 $finalPos = MouseGetPos()
		 $inTimerDif = TimerDiff($inTimer)
		 FileWrite("moves.txt", 'Send("{SPACE down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{SPACE up}")' & @CRLF)
		 $outTimer = 0
	  EndIf

   WEnd
EndFunc