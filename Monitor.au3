#include <Misc.au3>
#include <Date.au3>

;To terminate press alt+ESC
HotKeySet("!{ESC}", "Terminate")

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

Global $outTimer = 0

;Prepare de Enviroment
prepareEnviroment()

;Start the program
main()

Func main()
   while 1
	  watchUser()
   WEnd
EndFunc

;This function prepares the enviroment
Func prepareEnviroment()
   ;Create the file "moves.txt" that contains the code that will be made by the user interaction
   FileWrite("moves.txt", "#include <Misc.au3>" & @CRLF & "#include <Date.au3>" & @CRLF & 'HotKeySet("{ESC}", "Terminate")' & @CRLF & "Func Terminate()" & @CRLF & "Exit 1" & @CRLF & "EndFunc" & @CRLF)

   ;Create the directory "memoryCard" if it doesn't exists
   If Not FileExists(@ScriptDir & "\memoryCard") Then
	  DirCreate(@ScriptDir & "\memoryCard")
	  DirCreate(@ScriptDir & "\memoryCard\generatedCode")
	  DirCreate(@ScriptDir & "\memoryCard\logs\")
   EndIf
EndFunc

Func register($key, $letter, $mouse)
   If $mouse == 1 Then ;mouse
	  FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
 	  $inTimer = TimerInit()
 	  $initialPos = MouseGetPos()
 	  While _IsPressed($key)
 		 Sleep(10)
 	  WEnd
 	  $finalPos = MouseGetPos()
 	  $inTimerDif = TimerDiff($inTimer)
 	  FileWrite("moves.txt", "MouseMove(" & $initialPos[0] & "," & $initialPos[1] & ")" & @CRLF & 'MouseDown("' & $letter & '")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & "MouseMove(" & $finalPos[0] & "," & $finalPos[1] & ")" & @CRLF & 'MouseUp("' & $letter & '")' & @CRLF) ;letter here is the mouse button
	  $outTimer = TimerInit()
   Else ;keyboard
	  FileWrite("log.txt",$letter)
	  FileWrite("moves.txt", "Sleep(" & TimerDiff($outTimer) & ")" & @CRLF)
	  $inTimer = TimerInit()
	  $initialPos = MouseGetPos()
	  While _IsPressed($key)
		 Sleep(10)
	  WEnd
	  $finalPos = MouseGetPos()
	  $inTimerDif = TimerDiff($inTimer)
	  FileWrite("moves.txt", 'Send("{' & $letter & ' down}")' & @CRLF & "Sleep(" & $inTimerDif & ")" & @CRLF & 'Send("{' & $letter & ' up}")' & @CRLF)
	  $outTimer = TimerInit()
   EndIf
EndFunc

Func watchUser()

   If $outTimer == 0 Then
	  $outTimer = TimerInit() ;Count the time that the user is idle
   EndIf

   If _IsPressed(01) Then ;Left click
	  register(01, "left", 1)
   EndIf

   If _IsPressed(02) Then ;Right click
	  register(02, "right", 1)
   EndIf

   If _IsPressed(41) Then ;Letter A
	  register(41, "a", 0)
   EndIf

   If _IsPressed(42) Then ;Letter B
	  register(42, "b", 0)
   EndIf

   If _IsPressed(43) Then ;Letter C
	  register(43, "c", 0)
   EndIf

   If _IsPressed(44) Then ;Letter D
	  register(44, "d", 0)
   EndIf

   If _IsPressed(45) Then ;Letter E
	  register(45, "e", 0)
   EndIf

   If _IsPressed(46) Then ;Letter F
	  register(46, "f", 0)
   EndIf

   If _IsPressed(47) Then ;Letter G
	  register(47, "g", 0)
   EndIf

   If _IsPressed(48) Then ;Letter H
	  register(48, "h", 0)
   EndIf

   If _IsPressed(49) Then ;Letter I
	  register(49, "i", 0)
   EndIf

   If _IsPressed("4A") Then ;Letter J
	  register("4A", "j", 0)
   EndIf

   If _IsPressed("4B") Then ;Letter K
	  register("4B", "k", 0)
   EndIf

   If _IsPressed("4C") Then ;Letter L
	  register("4C", "l", 0)
   EndIf

   If _IsPressed("4D") Then ;Letter M
	  register("4D", "m", 0)
   EndIf

   If _IsPressed("4E") Then ;Letter N
	  register("4E", "n", 0)
   EndIf

   If _IsPressed("4F") Then ;Letter O
	  register("4F", "o", 0)
   EndIf

   If _IsPressed("50") Then ;Letter P
	  register(50, "p", 0)
   EndIf

   If _IsPressed("51") Then ;Letter Q
	  register(51, "q", 0)
   EndIf

   If _IsPressed("52") Then ;Letter R
	  register(52, "r", 0)
   EndIf

   If _IsPressed("53") Then ;Letter S
	  register(53, "s", 0)
   EndIf

   If _IsPressed("54") Then ;Letter T
	  register(54, "t", 0)
   EndIf

   If _IsPressed("55") Then ;Letter U
	  register(55, "u", 0)
   EndIf

   If _IsPressed("56") Then ;Letter V
	  register(56, "v", 0)
   EndIf

   If _IsPressed("57") Then ;Letter W
	  register(57, "w", 0)
   EndIf

   If _IsPressed("58") Then ;Letter X
	  register(58, "x", 0)
   EndIf

   If _IsPressed("59") Then ;Letter Y
	  register(59, "y", 0)
   EndIf

   If _IsPressed("5A") Then ;Letter Z
	  register("5A", "z", 0)
   EndIf

   If _IsPressed("0D") Then ;Enter
	  register("0D", "ENTER", 0)
   EndIf

   If _IsPressed("20") Then ;SpaceBar
	  register(20, "SPACE", 0)
   EndIf

EndFunc