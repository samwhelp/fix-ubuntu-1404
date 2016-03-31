
THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin

.PHONY: usage install configure

usage:
	@$(THE_BIN_DIR_PATH)/usage.sh

install:
	@$(THE_BIN_DIR_PATH)/install.sh

configure:
	@$(THE_BIN_DIR_PATH)/configure.sh
