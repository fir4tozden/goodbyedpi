echo off
cls
taskkill /IM "goodbyedpi.exe" /F
sc stop WinDivert
cd..
rmdir /S /Q goodbyedpi*