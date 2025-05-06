echo off
cls
taskkill /IM goodbyedpi.exe /F
sc stop WinDivert
cd..
for /d %i in (goodbyedpi*) do rmdir /S /Q "%i"