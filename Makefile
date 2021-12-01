SHELL := bash

.PHONY: all
all: bin usr dotfiles etc ## Installs the bin and etc directory files and the dotfiles.

.PHONY: bin
bin: ## Installs the bin directory files.
	# add aliases for things in bin
	mkdir -p $$HOME/bin;
	for file in $(shell find $(PWD)/bin -type f -not -name ".*.asc"); do \
		f=$$(basename $$file); \
		ln -sf $$file $$HOME/bin/$$f; \
	done

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
