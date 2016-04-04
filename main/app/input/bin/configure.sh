#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


echo 'configure input start:'

#sudo cp /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml.bak
sudo sed -i 's/10000/3000/g' /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
