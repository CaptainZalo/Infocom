#!/bin/bash
cd ~/Infocom
folderpath=$(ls)
#system=$(eval zenity --list --column System $folderpath --width=480 --height=272)
if [ "$?" -eq 1 ]; then
   echo "Cancelled."
else
 #  cd $system
   files=$(ls -Q *dat)
   rom=$(eval zenity --list --column "Roms" $files --width=480 --height=272)
   if [ "$?" -eq 1 ]; then
      echo "Cancelled."
   else
      frotz "$rom"
   fi
fi

