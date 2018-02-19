# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Load common
. ~/.common_bash

# Run appropriate dotfiles
. ~/.bash_prompt