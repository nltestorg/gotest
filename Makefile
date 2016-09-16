include golang.mk
.DEFAULT_GOAL := test # override default goal set in library makefile

.PHONY: $(PKGS) test
SHELL := /bin/bash
PKG := github.com/nltestorg/gotest
PKGS := $(shell go list ./... | grep -v /vendor)

test: $(PKGS)

$(PKGS): golang-test-all-deps
	$(call golang-test-all,$@)
