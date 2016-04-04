#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh

rm $THE_SELECT_LIST_FILE_PATH -f
echo 'rm' $THE_SELECT_LIST_FILE_PATH
