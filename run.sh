#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

App_Root_Dir_Path=$Base_Dir_Path/app


for App_Dir_Path in $App_Root_Dir_Path/*
do
    Run_Script_Path=$App_Dir_Path/run.sh

    if [ -f $Run_Script_Path ]
    then
		$Run_Script_Path
    fi
done
