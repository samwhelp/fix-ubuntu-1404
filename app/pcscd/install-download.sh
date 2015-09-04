#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Temp_Dir_Path=$Base_Dir_Path/temp
Asset_Dir_Path=$Base_Dir_Path/asset
Download_Script_Path=$Base_Dir_Path/download.sh


# download deb
$Download_Script_Path

# change to dir temp
cd $Temp_Dir_Path

# install deb
sudo dpkg -i npFCBATM.deb npTaishinBank.deb
