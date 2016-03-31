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

# http://tldp.org/LDP/abs/html/comparison-ops.html
THE_ARCH=$(uname -m)

if [ "$THE_ARCH" == "i686" ]; then
	sudo dpkg -i gstreamer0.10-ffmpeg_0.10.13-5ubuntu1~trusty2_i386.deb libdvdcss2_1.2.13-0_i386.deb
elif [ "$THE_ARCH" == "x86_64" ]; then
	sudo dpkg -i gstreamer0.10-ffmpeg_0.10.13-5ubuntu1~trusty2_amd64.deb libdvdcss2_1.2.13-0_amd64.deb
fi
