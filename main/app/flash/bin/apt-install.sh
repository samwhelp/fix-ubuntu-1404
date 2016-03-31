#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc
THE_PACKAGE_LIST_FILE_PATH=$THE_ETC_DIR_PATH/package.list

if [ -f $THE_PACKAGE_LIST_FILE_PATH ]; then
	sudo apt-get install $(cat $THE_PACKAGE_LIST_FILE_PATH)
fi
