#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


for APP_DIR_PATH in $THE_APP_DIR_PATH/* ; do
    APP_INSTALL_SCRIPT=$APP_DIR_PATH/$THE_BIN_DIR_NAME/$THE_INSTALL_SCRIPT_NAME

    if [ -f $APP_INSTALL_SCRIPT ]; then
        $APP_INSTALL_SCRIPT
    fi
done
