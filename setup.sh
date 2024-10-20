# clear
mkdir ~/.config
rm -r ~/.config/nvim
rm -r ~/.config/wezterm
rm -r ~/.config/aerospace
sudo rm -r  ~/.vimrc ~/.vim
brew uninstall vim
mkdir ./temp
cd temp
# vimrc
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
mkdir ~/bin
rm -r  ~/bin/nvim-macos
mv ./nvim-macos ~/bin/nvim-macos
echo "alias vim='~/bin/nvim-macos/bin/nvim'" >> ~/.zshrc
source ~/.zshrc -l
cd ../

# move config to .config
cp -r nvim_config ~/.config/nvim
cp .wezterm.lua ~/.wezterm.lua


# package manager
sudo rm -r ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
brew install ripgrep

# clean up
rm -r temp
# Vundle
#aerospace window manager install and setup
brew install --cask nikitabobko/tap/aerospace
mkdir -p ~/.config/aerospace
cp aerospace.toml ~/.config/aerospace/

# Powerlevel10k zhs theme, unrelated to vim !!!
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
#echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
#cp .p10k.zsh ~/.p10k.zsh
#cp .zshrc ~/.zshrc
#exec zsh
cd ~/vim-setup
