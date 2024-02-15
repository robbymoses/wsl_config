#!/bin/bash

git clone git@github.com:robbymoses/custom_dot_files.git ~/custom_dot_files

# ZSH config
if test -f ~/.zshrc; then
	rm ~/.zshrc
	ln ~/custom_dot_files/zsh/.zshrc ~/.zshrc
fi
