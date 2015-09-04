#!/usr/bin/env bash

sed -i '$a user_pref("network.protocol-handler.expose.ed2k", false);' ~/.mozilla/firefox/*.default/prefs.js
