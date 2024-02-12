#!/bin/bash

# Update System
sudo zypper update -y

# Install Zypper Packages
sudo zypper install -y $(< packages.list)

# Initialize GIT
# Check if we have an existing .gitconfig file
if ! test -f ~/.gitconfig; then
	git config --global user.name "Robert Moses"
	git config --global user.email "rmoses@titaniumbytes.com"
	git config --global core.sshCommand "/mnt/c/Windows/System32/OpenSSH/ssh.exe"
	git config --global commit.gpgsign true
	git config --global gpg.format ssh
	git config --global gpg.ssh.program "/mnt/c/Users/${USER}/AppData/Local/1Password/app/8/op-ssh-sign-wsl"
	echo "Signing Key?:"
	read signingKey
	git config --global user.signingkey "${signingKey}"
fi

# Initialize Additional Packages in Scripts Folder
for filename in ./scripts/*.sh; do
	sh ${filename}
done

# Copy Conf Files
if test -f /etc/wsl.conf; then
	sudo rm /etc/wsl.conf
fi
sudo cp ./conf_files/wsl.conf /etc/wsl.conf

# Set git url to propper SSH url
git remote set-url origin git@github.com:robbymoses/wsl_config.git
