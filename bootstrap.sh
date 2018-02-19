#!/usr/bin/env bash

# Copy dotfiles
cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
	rsync --exclude ".git/" \
		--exclude "bootstrap.sh" \
		--exclude "applicationSettings/" \
		--exclude ".settings" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

read -p "This may overwrite settings and existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;

    # Execute Settings
    sh .settings
fi;

unset doIt;