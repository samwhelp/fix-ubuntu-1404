#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc

echo 'configure gedit start:'

# http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=318884#forumpost318884

gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8', 'BIG5', 'BIG5-HKSCS', 'EUC-TW', 'CURRENT', 'ISO-8859-15', 'UTF-16']"
