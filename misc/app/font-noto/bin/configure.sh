#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


echo 'configure font-noto start:'

FONTCONFIG_SOURCE_FILE_PATH=$THE_ETC_DIR_PATH/fonts.conf
FONTCONFIG_DIR_PATH=$HOME/.config/fontconfig
FONTCONFIG_FILE_PATH=$FONTCONFIG_DIR_PATH/fonts.conf

## mkdir ~/.config/fontconfig/fonts.conf -p
mkdir $FONTCONFIG_DIR_PATH -p

## cp etc/fonts.conf ~/.config/fontconfig/fonts.conf
cp $FONTCONFIG_SOURCE_FILE_PATH $FONTCONFIG_FILE_PATH -f
