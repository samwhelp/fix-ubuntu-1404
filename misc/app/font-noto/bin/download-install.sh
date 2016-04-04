#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


TARGET_FONT_DIR_PATH=/usr/local/share/fonts
TARGET_FONT_NOTO_DIR_PATH=$TARGET_FONT_DIR_PATH/Noto

# check /usr/local/share/fonts/Noto
if [ -d $TARGET_FONT_NOTO_DIR_PATH ]; then
	echo
	echo $TARGET_FONT_NOTO_DIR_PATH exist!
	echo
	exit
fi

# download deb
$THE_DOWNLOAD_SCRIPT

# change to dir tmp
cd $THE_TMP_DIR_PATH
rm ./Noto -rf

unzip Noto-hinted.zip -d Noto

sudo mv Noto $TARGET_FONT_DIR_PATH

sudo chown root:staff $TARGET_FONT_NOTO_DIR_PATH -R

sudo chmod 644 $TARGET_FONT_NOTO_DIR_PATH/*
sudo chmod 755 $TARGET_FONT_NOTO_DIR_PATH

sudo fc-cache -fv
