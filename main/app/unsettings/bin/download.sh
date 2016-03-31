#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc
THE_TMP_DIR_PATH=$THE_BASE_DIR_PATH/../tmp
THE_DOWNLOAD_LIST_FILE_PATH=$THE_ETC_DIR_PATH/download.list

# change to dir tmp
mkdir $THE_TMP_DIR_PATH -p
cd $THE_TMP_DIR_PATH

if [ -f $THE_DOWNLOAD_LIST_FILE_PATH ]; then
	wget -c -i $THE_DOWNLOAD_LIST_FILE_PATH
fi
