#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

App_Root_Dir_Path=$Base_Dir_Path/app
Tmp_Root_Dir_Path=$Base_Dir_Path/tmp

Allow_List_File_Path=$Tmp_Root_Dir_Path/allow.list

for App_Dir_Name in $(cat $Allow_List_File_Path)
do
	App_Dir_Path=$App_Root_Dir_Path/$App_Dir_Name
    Run_Script_Path=$App_Dir_Path/run.sh

    if [ -f $Run_Script_Path ]
    then
		$Run_Script_Path
    fi
done
