#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Temp_Dir_Path=$Base_Dir_Path/temp
Asset_Dir_Path=$Base_Dir_Path/asset

# change to dir temp
mkdir $Temp_Dir_Path -p
cd $Temp_Dir_Path

wget -c -i $Asset_Dir_Path/download.list
