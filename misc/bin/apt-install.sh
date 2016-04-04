#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


mkdir $THE_TMP_DIR_PATH -p

# package list (all)
THE_PACKAGE_LIST_FILE_PATH=$THE_TMP_DIR_PATH/$THE_PACKAGE_LIST_FILE_NAME

# remove package list (all)
rm $THE_PACKAGE_LIST_FILE_PATH -f

for APP_DIR_PATH in $THE_APP_DIR_PATH/* ; do
    # app/$package/etc/package.list
    EACH_PACKAGE_LIST_FILE_PATH=$APP_DIR_PATH/$THE_ETC_DIR_NAME/$THE_PACKAGE_LIST_FILE_NAME

    if [ -f $EACH_PACKAGE_LIST_FILE_PATH ]; then
        EACH_PACKAGE_LIST=$(cat $EACH_PACKAGE_LIST_FILE_PATH)
        echo $EACH_PACKAGE_LIST >> $THE_PACKAGE_LIST_FILE_PATH
    fi
done


sudo apt-get install $(cat $THE_PACKAGE_LIST_FILE_PATH) -y
