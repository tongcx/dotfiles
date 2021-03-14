call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dhruvasagar/vim-zoom'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jpalardy/vim-slime'
call plug#end()

let g:slime_target="tmux"

set ignorecase
set hlsearch

set bg=dark
color gruvbox

set et ts=2 sw=2
set foldmethod=indent foldlevel=20

map Q <Nop>
set pastetoggle=<F2>
nnoremap <leader>g :execute ":Rg \\b".expand('<cword>')."\\b" <CR>
nnoremap <C-p> :Files<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
