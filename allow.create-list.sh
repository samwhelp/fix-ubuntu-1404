#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

App_Root_Dir_Path=$Base_Dir_Path/app
Tmp_Root_Dir_Path=$Base_Dir_Path/tmp

mkdir $Tmp_Root_Dir_Path -p

# allow list (all)
Allow_List_File_Path=$Tmp_Root_Dir_Path/allow.list

# remove package list (all)
if [ -f $Allow_List_File_Path ]
then
	echo
	echo $Allow_List_File_Path exist!
	echo Please remove it first!
	echo
	echo Suggest command:
	echo
	echo rm $Allow_List_File_Path
	echo
	exit
fi


for App_Dir_Path in $App_Root_Dir_Path/*
do
    echo $(basename $App_Dir_Path) >> $Allow_List_File_Path
done
