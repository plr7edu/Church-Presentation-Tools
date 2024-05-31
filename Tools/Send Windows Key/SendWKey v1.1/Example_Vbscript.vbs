Dim fileobj,App_x86,App_x64,Target_Key
App_x86 = "SendWKey.exe"
App_x64 = "SendWKey_x64.exe"
Target_Key = "#R /Wait:250 ""notepad.exe{Enter}"" /Wait:500 ""{F5} -> Hello World{!}{Enter}"""

Set fileobj = CreateObject("Scripting.FileSystemObject")
If (fileobj.FileExists(App_x86)) Then
	Set fileobj = WScript.CreateObject( "WScript.Shell" )
	fileobj.Run(App_x86 + " " + Target_Key)
Else if (fileobj.FileExists(App_x64)) Then
	Set fileobj = WScript.CreateObject( "WScript.Shell" )
	fileobj.Run(App_x64 + " " + Target_Key)
Else
	x=msgbox(App_x86 + " not found!" ,16, "www.sordum.org")
End If
End If
Set fileobj = Nothing
