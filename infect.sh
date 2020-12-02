folder=~/dotfiles

cd
echo source $folder/bash_profile >> ~/.bash_profile
ln -sv $folder/tmux.conf ~/.tmux.conf
ln -sv $folder/vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

brew install autojump bash-completion
