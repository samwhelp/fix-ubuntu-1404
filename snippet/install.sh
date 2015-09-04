#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Package_List_File_Path=$Base_Dir_Path/config/package.list

if [ -f $Package_List_File_Path ]
then
	sudo apt-get install $(cat $Package_List_File_Path)
fi
