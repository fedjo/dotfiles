SHELL := zsh

.PHONY: all
all: bin dotfiles ## Installs the bin and etc directory files and the dotfiles.

.PHONY: bin
bin: ## Installs the bin directory files.
	# add aliases for things in bin
	mkdir -p $$HOME/bin;
	for file in $(shell find $(shell pwd)/bin -type f -not -name ".*.asc"); do \
		f=$$(basename $$file); \
		ln -sf $$file $$HOME/bin/$$f; \
	done

.PHONY: dotfiles
dotfiles: ## Installs the dotfiles.
	# add aliases for dotfiles
	for file in $(shell find $(shell pwd)/configs -maxdepth 1 -name "*" -not -name "configs" -not -name "vim"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $$HOME/.$$f; \
	done; \
	xrdb -merge $(HOME)/.Xdefaults || true
	xrdb -merge $(HOME)/.Xresources || true

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
