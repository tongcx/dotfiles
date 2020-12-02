call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
call plug#end()

set ignorecase
set hlsearch

set bg=dark
color gruvbox

set et ts=2 sw=2
set foldmethod=indent foldlevel=20

map Q <Nop>
set pastetoggle=<F2>
