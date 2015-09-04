#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
# http://stackoverflow.com/questions/3349105/how-to-set-current-working-directory-to-the-directory-of-the-script

App_Root_Dir_Path=$Base_Dir_Path/app
Tmp_Root_Dir_Path=$Base_Dir_Path/tmp

mkdir $Tmp_Root_Dir_Path -p

# package list (all)
Package_List_File_Path=$Tmp_Root_Dir_Path/package.list

# remove package list (all)
rm $Package_List_File_Path -f

for App_Dir_Path in $App_Root_Dir_Path/*
do
    Each_Package_List_File_Path=$App_Dir_Path/config/package.list

    if [ -f $Each_Package_List_File_Path ]
    then
        Each_Package_List=$(cat $Each_Package_List_File_Path)
        echo $Each_Package_List >> $Package_List_File_Path
    fi
done


sudo apt-get install $(cat $Package_List_File_Path) -y
