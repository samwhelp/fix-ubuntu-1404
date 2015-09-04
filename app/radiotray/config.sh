#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


Asset_Dir_Path=$Base_Dir_Path/asset

#Asset_Bookmark_File_Path=$Asset_Dir_Path/bookmarks.tw+jp.xml
#Asset_Bookmark_File_Path=$Asset_Dir_Path/bookmarks.ori.xml
Asset_Bookmark_File_Path=$Asset_Dir_Path/bookmarks.xml

Config_Bookmark_Dir_Path=$HOME/.local/share/radiotray
Config_Bookmark_File_Path=$Config_Bookmark_Dir_Path/bookmarks.xml

# make sure dir exist
mkdir $Config_Bookmark_Dir_Path -p

# copy bookmarks.xmls
cp $Asset_Bookmark_File_Path $Config_Bookmark_File_Path -f
