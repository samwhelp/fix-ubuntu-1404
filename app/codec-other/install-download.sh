#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Temp_Dir_Path=$Base_Dir_Path/temp
Asset_Dir_Path=$Base_Dir_Path/asset
Download_Script_Path=$Base_Dir_Path/download.sh

# download deb
$Download_Script_Path

# change to dir temp
cd $Temp_Dir_Path

# http://tldp.org/LDP/abs/html/comparison-ops.html
Arch=$(uname -m)

if [ "$Arch" == "i686" ]
then
	sudo dpkg -i gstreamer0.10-ffmpeg_0.10.13-5ubuntu1~trusty2_i386.deb libdvdcss2_1.2.13-0_i386.deb
elif [ "$Arch" == "x86_64" ]
then
	sudo dpkg -i gstreamer0.10-ffmpeg_0.10.13-5ubuntu1~trusty2_amd64.deb libdvdcss2_1.2.13-0_amd64.deb
fi
