#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


echo 'configure amule start:'

sed -i '$a user_pref("network.protocol-handler.expose.ed2k", false);' ~/.mozilla/firefox/*.default/prefs.js
