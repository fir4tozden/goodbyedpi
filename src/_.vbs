Set WshShell = CreateObject("WScript.Shell")

Set objEnv = WshShell.Environment("PROCESS")
If InStr(objEnv("PROCESSOR_ARCHITECTURE"), "AMD64") > 0 Then
    arch = "x86_64"
Else
    arch = "x86"
End If
If objEnv("PROCESSOR_ARCHITEW6432") <> "" Then
    arch = "x86_64"
End If

Set objFSO = CreateObject("Scripting.FileSystemObject")
strExePath = objFSO.GetParentFolderName(WScript.ScriptFullName) & "\" & arch & "\GoodbyeDPI.exe"
strParams = "-5 --dns-addr 77.88.8.8 --dns-port 1253 --dnsv6-addr 2a02:6b8::feed:0ff --dnsv6-port 1253"

WshShell.Run Chr(34) & strExePath & Chr(34) & strParams, 0, False

Set oShortcut = WshShell.CreateShortcut(WshShell.SpecialFolders("Startup") & "\GoodbyeDPI.lnk")
oShortcut.TargetPath = objFSO.GetParentFolderName(WScript.ScriptFullName) & "\" & "\_.bat"
oShortcut.Arguments = strParams
oShortcut.WindowStyle = 7
oShortcut.Save

Set WshShell = Nothing