@echo off

color 02

echo.
echo. 
echo /-----------------------------------------------------------------------------\
echo [                     Welcome to MineOffline Beta Launcher!                   ]
echo [                                                                             ]
echo [                    Enter a username to start up Minecraft!                  ]
echo \-----------------------------------------------------------------------------/
echo                 Program written by Methos319 and PeacemakerDawg.
echo.
echo.

cd "%USERPROFILE%\Desktop"

REM SET PROFILENAME=[Please enter desired username:]
set /p profilename=Please enter desired username: %=%
echo Your username is now: %profilename%
start java -Xms512m -Xmx1024m -cp "%APPDATA%\.minecraft\bin\*" -Djava.library.path="%APPDATA%\.minecraft\bin\natives" net.minecraft.client.Minecraft %profilename%

EXIT