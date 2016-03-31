#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_TMP_DIR_PATH=$THE_BASE_DIR_PATH/../tmp

# rm tmp dir
if [ -d $THE_TMP_DIR_PATH ]; then
	echo 'rm '$THE_TMP_DIR_PATH
	rm $THE_TMP_DIR_PATH -rf
fi
