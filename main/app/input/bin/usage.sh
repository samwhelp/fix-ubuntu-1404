#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
source $THE_BASE_DIR_PATH/_init.sh


usage()
{
	echo ""
	echo "Usage: make [command]"
	echo
	cat <<EOF
Ex:
$ make
$ make usage
$ make install
$ make configure
$ make configure-undo
EOF
}

usage
