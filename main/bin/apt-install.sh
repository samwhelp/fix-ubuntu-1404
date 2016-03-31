#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_APP_DIR_PATH=$THE_BASE_DIR_PATH/../app
THE_TMP_DIR_PATH=$THE_BASE_DIR_PATH/../tmp

mkdir $THE_TMP_DIR_PATH -p

# package list (all)
THE_PACKAGE_LIST_FILE_PATH=$THE_TMP_DIR_PATH/package.list

# remove package list (all)
rm $THE_PACKAGE_LIST_FILE_PATH -f

for APP_DIR_PATH in $THE_APP_DIR_PATH/* ; do
    EACH_PACKAGE_LIST_FILE_PATH=$APP_DIR_PATH/etc/package.list

    if [ -f $EACH_PACKAGE_LIST_FILE_PATH ]; then
        EACH_PACKAGE_LIST=$(cat $EACH_PACKAGE_LIST_FILE_PATH)
        echo $EACH_PACKAGE_LIST >> $THE_PACKAGE_LIST_FILE_PATH
    fi
done


sudo apt-get install $(cat $THE_PACKAGE_LIST_FILE_PATH) -y
