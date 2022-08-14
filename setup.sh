# clear
sudo rm -r  ~/.vimrc ~/.vim
mkdir  ~/.vim
# vimrc
cp vimrc ~/.vimrc
# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# ale
cd ~/.vim/bundle
git clone https://github.com/dense-analysis/ale.git
# flake8
pip install flake8
mkdir -p ~/.vim/pack/flake8/start/
cd ~/.vim/pack/flake8/start/
git clone https://github.com/nvie/vim-flake8.git
# colors
mkdir ~/.vim/colors/
cd ~/.vim/colors
git clone https://github.com/gosukiwi/vim-atom-dark.git
cp vim-atom-dark/colors/* .
sudo rm -r vim-atom-dark
#
vim +PluginInstall +qa
cd ~/
# Powerlevel10k zhs theme, unrelated to vim !!!
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp .zshrc ~/.zshrc
exec zsh
