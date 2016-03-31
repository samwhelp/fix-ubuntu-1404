#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc

#sudo cp /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml.bak
sudo sed -i 's/10000/3000/g' /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
