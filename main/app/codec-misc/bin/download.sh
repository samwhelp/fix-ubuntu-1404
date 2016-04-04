#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


# change to dir tmp
mkdir $THE_TMP_DIR_PATH -p
cd $THE_TMP_DIR_PATH

# http://tldp.org/LDP/abs/html/comparison-ops.html
THE_ARCH=$(uname -m)

if [ "$THE_ARCH" == "i686" ]; then
	wget -c -i $THE_ETC_DIR_PATH/download.32.list
elif [ "$THE_ARCH" == "x86_64" ]; then
	wget -c -i $THE_ETC_DIR_PATH/download.64.list
fi
