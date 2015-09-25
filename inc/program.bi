#print "using program.bi            by M. Lindner | created 14.07.2017 | updated 04.04.2019"

#Include Once "windows.bi"

Namespace program
	Function getVersion(ByVal file As String) As String
		Dim As Integer dwSize = GetFileVersionInfoSize(file, NULL )
		If dwSize = 0 Then Return "0.0.0.0"
		Dim As String Buffer = String(dwSize, 0)
		GetFileVersionInfo(file, NULL, dwSize, StrPtr(Buffer))
		Dim As Short Ptr xpFileInfo
		Dim As UInteger LenFileInfo
		VerQueryValue(StrPtr(Buffer),"\\", @xpFileInfo, @LenFileInfo)
		Dim As Integer vMajor, vMinor, vBuild, vRevision
		vMajor = *(xpFileInfo+5)
		vMinor = *(xpFileInfo+4)
		vBuild = *(xpFileInfo+7)
		vRevision = *(xpFileInfo+6)
		'Print "FileVersion   : " & *(xpFileInfo+5) & "." & *(xpFileInfo+4) & "." & *(xpFileInfo+7) & "." & *(xpFileInfo+6)
		'Print "ProductVersion: " & *(xpFileInfo+9) & "." & *(xpFileInfo+8) & "." & *(xpFileInfo+11) & "." & *(xpFileInfo+10)
		Return vMajor & "." & vMinor & "." & vBuild & "." & vRevision
	End Function

	Function getProductVersion(ByVal file As String) As String
		Dim As Integer dwSize = GetFileVersionInfoSize(file, NULL )
		If dwSize = 0 Then Return "0.0.0.0"
		Dim As String Buffer = String(dwSize, 0)
		GetFileVersionInfo(file, NULL, dwSize, StrPtr(Buffer))
		Dim As Short Ptr xpFileInfo
		Dim As UInteger LenFileInfo
		VerQueryValue(StrPtr(Buffer),"\\", @xpFileInfo, @LenFileInfo)
		Dim As Integer vMajor, vMinor, vBuild, vRevision
		vMajor = *(xpFileInfo+9)
		vMinor = *(xpFileInfo+8)
		vBuild = *(xpFileInfo+11)
		vRevision = *(xpFileInfo+10)
		'Print "FileVersion   : " & *(xpFileInfo+5) & "." & *(xpFileInfo+4) & "." & *(xpFileInfo+7) & "." & *(xpFileInfo+6)
		'Print "ProductVersion: " & *(xpFileInfo+9) & "." & *(xpFileInfo+8) & "." & *(xpFileInfo+11) & "." & *(xpFileInfo+10)
		Return vMajor & "." & vMinor & "." & vBuild & "." & vRevision
	End Function
End Namespace
