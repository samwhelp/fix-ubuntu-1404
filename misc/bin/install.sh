#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_APP_DIR_PATH=$THE_BASE_DIR_PATH/../app


for APP_DIR_PATH in $THE_APP_DIR_PATH/* ; do
    THE_INSTALL_SCRIPT=$APP_DIR_PATH/bin/install.sh

    if [ -f $THE_INSTALL_SCRIPT ]; then
        $THE_INSTALL_SCRIPT
    fi
done
