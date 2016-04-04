#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


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
    APP_INSTALL_SCRIPT=$APP_DIR_PATH/$THE_BIN_DIR_NAME/$THE_INSTALL_SCRIPT_NAME

    if [ -f $APP_INSTALL_SCRIPT ]; then
		#echo $APP_INSTALL_SCRIPT
        $APP_INSTALL_SCRIPT
    fi
done
