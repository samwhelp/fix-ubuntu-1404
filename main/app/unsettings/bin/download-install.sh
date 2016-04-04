#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


# download deb
$THE_DOWNLOAD_SCRIPT

# change to dir tmp
cd $THE_TMP_DIR_PATH

# install deb
sudo dpkg -i unsettings_0.11_all.deb
