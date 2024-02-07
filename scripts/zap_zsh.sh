echo "Installing Zap ZSH..."
# Make ZSH the default shell
chsh -s /bin/zsh ${USER}
# Install Zap
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 -keep
# Pull ZSH Config Repo
git clone git@github.com:robbymoses/config_zsh.git ~/.config/zsh
# Remove .zshrc file from home
rm ~/.zshrc
# Create Symlink from config repo to home
ln -s ~/.config/zsh/.zshrc ~/.zshrc 
