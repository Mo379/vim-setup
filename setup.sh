# clear
mkdir ~/.config
sudo rm -r ~/.config/nvim
sudo rm -r ~/.config/wezterm
sudo rm -r  ~/.vimrc ~/.vim
apt uninstall vim
mkdir ./temp
cd temp
# vimrc
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzf nvim-linux64.tar.gz
mkdir ~/bin
sudo rm -r  ~/bin/nvim-linux64
mv ./nvim-linux64 ~/bin/nvim-linux64
echo "alias vim='~/bin/nvim-linux64/bin/nvim'" >> ~/.bashrc
source ~/.bashrc -l
cd ../
# move config to .config
cp -r nvim_config ~/.config/nvim
cp .wezterm.lua ~/.wezterm.lua


# package manager
sudo rm -r ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo apt install ripgrep

# clean up
sudo rm -r temp
# Vundle
#

# Powerlevel10k zhs theme, unrelated to vim !!!
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
#echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
#cp .p10k.zsh ~/.p10k.zsh
#cp .zshrc ~/.zshrc
#exec zsh
cd ~/vim-setup
