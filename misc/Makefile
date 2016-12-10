
THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin

PATH := $(THE_BIN_DIR_PATH):$(PATH)

default: help
.PHONY: default

help:
	@help.sh
.PHONY: help

install:
	@install.sh
.PHONY: install

apt-install:
	@apt-install.sh
.PHONY: apt-install

clean:
	@clean.sh
.PHONY: clean

select:
	@select.sh
.PHONY: select

select-install:
	@select-install.sh
.PHONY: select-install

select-remove:
	@select-remove.sh
.PHONY: select-remove

auto:
	@auto.sh
.PHONY: auto
