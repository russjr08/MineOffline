#!/bin/bash

INTRO="
/-----------------------------------------------------------------------------/
[ Welcome to MineOffline Beta! ]
[ Please choose an option to start the program. ]
/-----------------------------------------------------------------------------/
Program written by Methos319 and PeacemakerDawg.
."

echo -e "$(tput setaf 2) $INTRO"
echo 
echo 
echo 
echo 
echo 

echo "Choose 1 to open the Minecraft Launcher (Must be in the same Directory of this program. You will need to do this if you don't have Minecraft downloaded"
echo
echo
echo "Choose 2 to launch MineOffline with a username of your choice"

read Choice


Option1 ()
{
echo "You've choosen option 1. If you haven't placed minecraft.jar (Make sure it is named minecraft.jar with a lowercase M), do so now. When you have, press enter"
read
echo "Starting minecraft.jar, please download Minecraft (You must use an actual premium account to do this.)"
echo "We cannot distribute Mojang's files, so do not ask for a .minecraft folder in the next release.."
echo "If this next line says Error: Unable to access jarfile minecraft.jar, that means you do not have minecraft.jar in this folder."
java -jar minecraft.jar

}


Option2 ()
{

echo "You have choosen to launch with a specified username. Please type in this username now"
read UserChoice

java -Xms512m -Xmx1024m -cp "/home/$USER/.minecraft/bin/minecraft.jar":"/home/$USER/.minecraft/bin/lwjgl.jar":"/home/$USER/.minecraft/bin/lwjgl_util.jar":"/home/$USER/.minecraft/bin/jinput.jar" -Djava.library.path="/home/$USER/.minecraft/bin/natives" net.minecraft.client.Minecraft "$UserChoice"

}

if [ $Choice -eq 1 ]
    then
        Option1
fi

if [ $Choice -eq 2 ]
    then
        Option2
fi

