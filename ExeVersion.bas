Const APP_VERSION As String = "15.09.25"

#Include Once "andev/program.bi"
#Include Once "file.bi"

Dim file As String = Command(1)

If file <> "" Then
	If FileExists(file) = -1 Then
		Print file & " => " & program.getVersion(file)
	Else
		Print file & " not found"
	EndIf
Else
	Print
	Print "usage ExeVersion <file>"
EndIf
