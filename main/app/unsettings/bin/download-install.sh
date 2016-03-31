#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc
THE_TMP_DIR_PATH=$THE_BASE_DIR_PATH/../tmp
THE_DOWNLOAD_SCRIPT=$THE_BIN_DIR_PATH/download.sh

# download deb
$THE_DOWNLOAD_SCRIPT

# change to dir tmp
cd $THE_TMP_DIR_PATH

# install deb
sudo dpkg -i unsettings_0.11_all.deb
