folder=~/dotfiles

cd
echo source $folder/bash_profile >> ~/.bash_profile
ln -sv $folder/tmux.conf ~/.tmux.conf
ln -sv $folder/vimrc ~/.vimrc

brew install reattach-to-user-namespace
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
