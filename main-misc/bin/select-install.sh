#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_APP_DIR_PATH=$THE_BASE_DIR_PATH/../app
THE_ITF_DIR_PATH=$THE_BASE_DIR_PATH/../itf
THE_SELECT_LIST_FILE_PATH=$THE_ITF_DIR_PATH/select.list


# alert remove itf/select.list first
if [ ! -f $THE_SELECT_LIST_FILE_PATH ]; then
	echo
	echo '[' itf/select.list ']' not exist!
	echo
	echo Please create it first!
	echo
	echo Suggest command:
	echo
	echo '$' make select
	echo
	echo And edit it.
	exit
fi


for APP_DIR_NAME in $(cat $THE_SELECT_LIST_FILE_PATH); do
	APP_DIR_PATH=$THE_APP_DIR_PATH/$APP_DIR_NAME
    THE_INSTALL_SCRIPT=$APP_DIR_PATH/bin/install.sh

    if [ -f $THE_INSTALL_SCRIPT ]; then
		#echo $THE_INSTALL_SCRIPT
        $THE_INSTALL_SCRIPT
    fi
done
