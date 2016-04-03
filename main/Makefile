
THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin

.PHONY: usage install apt-install clean select select-install select-remove auto

usage:
	@$(THE_BIN_DIR_PATH)/usage.sh

install:
	@$(THE_BIN_DIR_PATH)/install.sh

apt-install:
	@$(THE_BIN_DIR_PATH)/apt-install.sh

clean:
	@$(THE_BIN_DIR_PATH)/clean.sh

select:
	@$(THE_BIN_DIR_PATH)/select.sh

select-install:
	@$(THE_BIN_DIR_PATH)/select-install.sh

select-remove:
	@$(THE_BIN_DIR_PATH)/select-remove.sh

auto:
	@$(THE_BIN_DIR_PATH)/auto.sh
