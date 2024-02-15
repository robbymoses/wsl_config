#!/bin/bash

# Install Apt-Packages
echo <packages.list
xargs sudo apt-get install -y < packages.list

# Setup Git Defaults
echo "Checking gitconfig"
if ! test -f ~/.gitconfig; then
	echo "Modding GitConfig"
	git config --global user.name "Robert Moses"
	git config --global user.email "rmoses@titaniumbytes.com"
	git config --global core.sshCommand "/mnt/c/Windows/System32/OpenSSH/ssh.exe"
	git config --global commit.gpgsign true
	git config --global gpg.format ssh
	echo "Windows Username?:"
	read windowsUser
	git config --global gpg.ssh.program "/mnt/c/Users/${windowsUser}/AppData/Local/1Password/app/8/op-ssh-sign-wsl"
	echo "Signing Key?:"
	read signingKey
	git config --global user.signingkey "${signingKey}"
	# Set the remote URL of this repo to use SSH
	git remote set-url origin git@github.com:robbymoses/wsl_config.git
fi

# Change Default Shell
chsh -s /bin/zsh ${USER}

# Modify wsl.conf
if ! test -f /etc/wsl.conf; then
	sudo mv ./config_files/wsl.conf /etc/wsl.conf
fi

# Shutdown WSL
#wsl.exe --shutdown

