echo "Installing Zap ZSH..."
# Make ZSH the default shell
chsh -s /bin/zsh ${USER}
# Install Zap
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 -keep
