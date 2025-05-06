echo off
cls
taskkill /IM goodbyedpi.exe /F
sc stop WinDivert
cd..
cd..
rmdir /S /Q goodbyedpi*