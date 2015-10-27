#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Temp_Dir_Path=$Base_Dir_Path/temp
Asset_Dir_Path=$Base_Dir_Path/asset
Download_Script_Path=$Base_Dir_Path/download.sh
Target_Font_Dir_Path=/usr/local/share/fonts
Target_Font_Noto_Dir_Path=$Target_Font_Dir_Path/Noto


if [ -d $Target_Font_Noto_Dir_Path ]
then
	echo
	echo $Target_Font_Noto_Dir_Path exist!
	echo
	exit
fi


# download deb
$Download_Script_Path

# change to dir temp
cd $Temp_Dir_Path
rm ./Noto -rf

unzip Noto-hinted.zip -d Noto

sudo mv Noto $Target_Font_Dir_Path

sudo chown root:staff $Target_Font_Noto_Dir_Path -R

sudo chmod 644 $Target_Font_Noto_Dir_Path/*
sudo chmod 755 $Target_Font_Noto_Dir_Path

sudo fc-cache -fv
