#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


Asset_Dir_Path=$Base_Dir_Path/asset
Asset_FontConfig_File_Path=$Asset_Dir_Path/fonts.conf
FontConfig_Dir_Path=$HOME/.config/fontconfig
FontConfig_File_Path=$FontConfig_Dir_Path/fonts.conf

mkdir $FontConfig_Dir_Path -p

cp $Asset_FontConfig_File_Path $FontConfig_File_Path -f
