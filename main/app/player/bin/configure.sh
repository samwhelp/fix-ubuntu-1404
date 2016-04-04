#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


echo 'configure player start:'

sudo sed -i 's/ogg=rhythmbox/ogg=totem/g ; s/flac=rhythmbox/flac=totem/g ; s/mp3=rhythmbox/mp3=totem/g ; s/mpeg=rhythmbox/mpeg=totem/g ; s/vorbis=rhythmbox/vorbis=totem/g' /etc/gnome/defaults.list
