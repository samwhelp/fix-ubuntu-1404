#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Temp_Dir_Path=$Base_Dir_Path/temp
Asset_Dir_Path=$Base_Dir_Path/asset

# change to dir temp
mkdir $Temp_Dir_Path -p
cd $Temp_Dir_Path

# http://tldp.org/LDP/abs/html/comparison-ops.html
Arch=$(uname -m)

if [ "$Arch" == "i686" ]
then
	wget -c -i $Asset_Dir_Path/download.32.list
elif [ "$Arch" == "x86_64" ]
then
	wget -c -i $Asset_Dir_Path/download.64.list
fi
