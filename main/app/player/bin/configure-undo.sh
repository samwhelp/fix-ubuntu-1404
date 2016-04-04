#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


echo 'configure-undo player start:'

THE_SOURCE_FILE_PATH=$THE_BAK_DIR_PATH/defaults.ori.list
THE_TARGET_FILE_PATH=/etc/gnome/defaults.list

sudo cp $THE_SOURCE_FILE_PATH $THE_TARGET_FILE_PATH -f
