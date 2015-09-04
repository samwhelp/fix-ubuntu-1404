#!/usr/bin/env bash

sudo sed -i 's/ogg=rhythmbox/ogg=totem/g ; s/flac=rhythmbox/flac=totem/g ; s/mp3=rhythmbox/mp3=totem/g ; s/mpeg=rhythmbox/mpeg=totem/g ; s/vorbis=rhythmbox/vorbis=totem/g' /etc/gnome/defaults.list
