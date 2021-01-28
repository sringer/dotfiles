dots
====

mac:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
ln -s $(echo $(pwd)/.config) ~/.config
ln -s $(echo $(pwd)/.gitconfig) ~/.gitconfig
ln -s $(echo $(pwd)/.gitignore_global) ~/.gitignore
ln -s $(echo $(pwd)/.zshrc) ~/.zshrc

brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep neovim python fzf bat ripgrep kitty
brew cask install alacritty
sudo pip3 install neovim
sudo pip3 install --upgrade neovim
echo 'export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.zshrc
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew tap homebrew/cask-fonts
brew cask install font-inconsolata

nvim -c ':UpdateRemotePlugins'
nvim -c ':PlugInstall'
