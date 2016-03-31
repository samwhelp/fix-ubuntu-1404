#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc
THE_DOWNLOAD_INSTALL_SCRIPT=$THE_BIN_DIR_PATH/download-install.sh

$THE_DOWNLOAD_INSTALL_SCRIPT
