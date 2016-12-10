
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

configure:
	@configure.sh
.PHONY: configure

download:
	@download.sh
.PHONY: download

download-install:
	@download-install.sh
.PHONY: download-install

clean:
	@clean.sh
.PHONY: clean
