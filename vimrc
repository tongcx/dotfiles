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
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

set ignorecase
set hlsearch

set bg=dark
color gruvbox

set et ts=2 sw=2
set foldmethod=indent foldlevel=20

map Q <Nop>
set pastetoggle=<F2>
nnoremap <leader>g :execute ":RG \\b".expand('<cword>')."\\b" <CR>
nnoremap <C-p> :Files<CR>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
