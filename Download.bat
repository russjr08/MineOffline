@echo off

copy Minecraft.exe "%USERPROFILE%\Desktop"
copy Launcher.exe "%USERPROFILE%\Desktop"

cd "%USERPROFILE%\Desktop"
"%cd%\minecraft.exe" username password
pause
start Launcher.exe

EXIT