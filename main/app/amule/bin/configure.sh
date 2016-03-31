#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BIN_DIR_PATH=$THE_BASE_DIR_PATH/../bin
THE_ETC_DIR_PATH=$THE_BASE_DIR_PATH/../etc

echo 'configure amule start:'

sed -i '$a user_pref("network.protocol-handler.expose.ed2k", false);' ~/.mozilla/firefox/*.default/prefs.js
