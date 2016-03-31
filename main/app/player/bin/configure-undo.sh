#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc
THE_BAK_DIR_PATH=$THE_BASE_DIR_PATH/../bak

THE_SOURCE_FILE_PATH=$THE_BAK_DIR_PATH/defaults.ori.list
THE_TARGET_FILE_PATH=/etc/gnome/defaults.list

echo 'configure-undo player start:'

sudo cp $THE_SOURCE_FILE_PATH $THE_TARGET_FILE_PATH -f
