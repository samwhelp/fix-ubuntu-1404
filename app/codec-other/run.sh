#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Install_Script=$Base_Dir_Path/install-download.sh

$Install_Script
