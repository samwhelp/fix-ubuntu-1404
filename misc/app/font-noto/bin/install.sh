#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


## $THE_APT_INSTALL_SCRIPT && $THE_CONFIGURE_SCRIPT

$THE_DOWNLOAD_INSTALL_SCRIPT && $THE_CONFIGURE_SCRIPT
