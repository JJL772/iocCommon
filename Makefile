# Makefile
include config.mak.local

MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

facility/envSet.cmd: facility/envSet.cmd.in
	cp -v $< $@
	sed -i s/@UID@/$(shell id -u)/g $@
	sed -i s/@GID@/$(shell id -g)/g $@
	sed -i s/@IP@/$(IP)/g $@
	sed -i s,@TOP@,$(MAKEFILE_DIR),g $@

all: facility/envSet.cmd

.PHONY: all

# vim: noet
