#!/bin/sh

cat << "EOF"
 ____
|____\_________
|              |
|              |
|    ______    | Wow64
|   / ____ \   | Mint Theme
|___|______|___|

EOF

echo Theme installation at user home folder


if [ -e ~/.themes/Mint-Wow64 ]
then
   echo Mint-Wow64 installation found at home folder, uninstalling...
   sudo rm -R ~/.themes/Mint-Wow64
fi

if [ -e /usr/share/themes/Mint-Wow64 ]
then
   echo Mint-Wow64 installation found at system themes, uninstalling...
   sudo rm -R /usr/share/themes/Mint-Wow64
fi



echo Installing theme at ~/.themes

sudo cp -fr Mint-Wow64 ~/.themes

cinnamon-settings themes
