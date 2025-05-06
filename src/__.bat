echo off
cls
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\GoodbyeDPI.lnk"
taskkill /IM goodbyedpi.exe /F
sc stop WinDivert