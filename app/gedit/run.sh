#!/usr/bin/env bash

Base_Dir_Path=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

Config_Script=$Base_Dir_Path/config.sh

$Config_Script
