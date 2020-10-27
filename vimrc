set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'pangloss/vim-javascript'
" Plugin 'fatih/vim-go'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set bg=dark
set hlsearch
set cursorline ruler

set et ts=2 sw=2
set backspace=2
set ignorecase
au Syntax json setlocal ts=2 sw=2 foldmethod=indent foldlevel=1
au Syntax yaml setlocal ts=2 sw=2 foldmethod=indent foldlevel=2
au Syntax xml setlocal ts=4 sw=4 foldmethod=indent foldlevel=1
au Syntax haskell setlocal smartindent
au Syntax groovy setlocal smartindent
set wildignore+=node_modules,*.swp,coverage,*.pyc,htmlcov,build,*.class,vendor,env_docs,go-build,env

set pastetoggle=<F2>
nmap <F3> za
nmap <F4> :Gg -w <cword> <CR>
nmap <F5> :noh <CR>
nmap <F6> :.w !bash <CR>
vmap <F6> :w !bash <CR>
map Q <Nop>

let r_indent_align_args = 0
let g:go_fmt_command = "goimports"

au WinEnter * set cursorline
au WinLeave * set nocursorline

autocmd FileType python setlocal completeopt-=preview
