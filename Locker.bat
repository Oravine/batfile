@echo off
set password=Pas555
taskkill /f /IM explorer.exe
title Locker Windows
color 04
:unlock
cls
echo Computer is locking
echo.
set /p unlock=Plese write key to unlock: 
if %unlock% == %password% (
start explorer.exe
exit
)else (
goto unlock )