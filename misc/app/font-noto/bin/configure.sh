#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc

FONTCONFIG_SOURCE_FILE_PATH=$THE_ETC_DIR_PATH/fonts.conf
FONTCONFIG_DIR_PATH=$HOME/.config/fontconfig
FONTCONFIG_FILE_PATH=$FONTCONFIG_DIR_PATH/fonts.conf

echo 'configure font-noto start:'

## mkdir ~/.config/fontconfig/fonts.conf -p
mkdir $FONTCONFIG_DIR_PATH -p

## cp etc/fonts.conf ~/.config/fontconfig/fonts.conf
cp $FONTCONFIG_SOURCE_FILE_PATH $FONTCONFIG_FILE_PATH -f
