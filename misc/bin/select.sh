#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_APP_DIR_PATH=$THE_BASE_DIR_PATH/../app
THE_ITF_DIR_PATH=$THE_BASE_DIR_PATH/../itf
THE_SELECT_LIST_FILE_PATH=$THE_ITF_DIR_PATH/select.list

mkdir $THE_ITF_DIR_PATH -p

# alert remove itf/select.list first
if [ -f $THE_SELECT_LIST_FILE_PATH ]; then
	echo
	echo '[' itf/select.list ']' exist!
	echo
	echo You can edit it first.
	echo
	echo Suggest command:
	echo
	echo '$' vi itf/select.list
	echo
	echo Then install select package
	echo
	echo Suggest command:
	echo
	echo '$' make select-install
	echo
	echo Would you create new select.list?
	echo
	echo Please remove it first!
	echo
	echo Suggest command:
	echo
	echo '$' make select-remove
	#echo rm $THE_SELECT_LIST_FILE_PATH
	echo
	exit
fi

echo -n > $THE_SELECT_LIST_FILE_PATH

for APP_DIR_PATH in $THE_APP_DIR_PATH/* ; do
    echo $(basename $APP_DIR_PATH) >> $THE_SELECT_LIST_FILE_PATH
done
