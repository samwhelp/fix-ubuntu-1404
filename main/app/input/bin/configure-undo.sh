#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


echo 'configure-undo input start:'

THE_SOURCE_FILE_PATH=$THE_BAK_DIR_PATH/org.freedesktop.ibus.gschema.ori.xml
THE_TARGET_FILE_PATH=/usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml


sudo cp $THE_SOURCE_FILE_PATH $THE_TARGET_FILE_PATH -f
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
