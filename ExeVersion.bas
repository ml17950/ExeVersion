Const APP_VERSION As String = "25.03.28"

#Include Once "inc/program.bi"
#Include Once "file.bi"

Dim file As String = Command(1)

If file <> "" Then
	If FileExists(file) = -1 Then
		Print program.getVersion(file)
	Else
		Print file & " not found"
	EndIf
Else
	Print
	Print "usage ExeVersion <file>"
EndIf
