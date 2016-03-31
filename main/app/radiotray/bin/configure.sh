#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc
THE_BAK_DIR_PATH=$THE_BASE_DIR_PATH/../bak

echo 'configure radiotray start:'


#THE_SOURCE_BOOKMARK_FILE_PATH=$THE_BAK_DIR_PATH/bookmarks.tw+jp.xml
THE_SOURCE_BOOKMARK_FILE_PATH=$THE_BAK_DIR_PATH/bookmarks.jp.xml

THE_CONFIG_BOOKMARK_DIR_PATH=$HOME/.local/share/radiotray
THE_CONFIG_BOOKMARK_FILE_PATH=$THE_CONFIG_BOOKMARK_DIR_PATH/bookmarks.xml

# make sure dir exist
mkdir $THE_CONFIG_BOOKMARK_DIR_PATH -p

# copy bookmarks.xmls
cp $THE_SOURCE_BOOKMARK_FILE_PATH $THE_CONFIG_BOOKMARK_FILE_PATH -f
