#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh

# rm root tmp dir
if [ -d $THE_TMP_DIR_PATH ]; then
	echo 'rm '$THE_TMP_DIR_PATH
	rm $THE_TMP_DIR_PATH -rf
fi

# call app/*/bin/clean.sh
for APP_DIR_PATH in $THE_APP_DIR_PATH/* ; do
    APP_CLEAN_SCRIPT=$APP_DIR_PATH/$THE_BIN_DIR_NAME/$THE_CLEAN_SCRIPT_NAME

    if [ -f $APP_CLEAN_SCRIPT ]; then
		#echo $APP_CLEAN_SCRIPT
        $APP_CLEAN_SCRIPT
    fi
done

# rm app/*/tmp
for APP_DIR_PATH in $THE_APP_DIR_PATH/* ; do
	APP_TMP_DIR_PATH=$APP_DIR_PATH/$THE_TMP_DIR_NAME

    if [ -d $APP_TMP_DIR_PATH ]; then
    	echo 'rm '$APP_TMP_DIR_PATH
		rm $APP_TMP_DIR_PATH -rf
    fi
done
