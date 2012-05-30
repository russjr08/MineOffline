@echo off

color 02

echo.
echo /-----------------------------------------------------------------------------\
echo [                          Welcome to MineOffline Beta!                       ]
echo [                                                                             ]
echo [                  Please choose an option to start the program.              ]
echo \-----------------------------------------------------------------------------/
echo.
echo                  Program written by Methos319 and PeacemakerDawg.
echo.
echo.

:index
echo 1. Log in and download Minecraft files using Minecraft.exe.
echo 2. Choose a username to play Minecraft in offline mode.
set /p choice=
if '%choice%'=='1' goto :choice1
if '%choice%'=='2' goto :choice2

:choice1
copy Minecraft.exe "%USERPROFILE%\Desktop"

cd "%USERPROFILE%\Desktop"
echo Minecraft.exe will open shortly.
echo Please log in with an account to begin downloading Minecraft files.
"%cd%\minecraft.exe"
echo.
goto :choice2

:choice2
cd "%USERPROFILE%\Desktop"
echo.
echo To start the Offline Mode Launcher, you'll need a username.
REM SET PROFILENAME=[Please enter desired username:]
set /p profilename=Please enter desired username: %=%
echo Your username is now: %profilename%
start java -Xms512m -Xmx1024m -cp "%APPDATA%\.minecraft\bin\*" -Djava.library.path="%APPDATA%\.minecraft\bin\natives" net.minecraft.client.Minecraft %profilename%
goto :end

:end
pause

EXIT
