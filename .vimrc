filetype off
call pathogen#infect()
filetype on
filetype plugin indent on

call pathogen#helptags()
set foldmethod=indent
set foldlevel=99
syntax on
syntax enable
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set showmode
set cursorline
set cursorcolumn
set showmatch
set matchtime=2
set hidden
set hlsearch
set incsearch
colorscheme jellybeans
set laststatus=2
:set colorcolumn=120


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme='jellybeans'

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_post_args="--max-line-length=120"
let g:syntastic_loc_list_height=5

map <Leader>[ :tabp<CR>
map <Leader>] :tabn<CR>
map <Leader>t :tabe<CR>
map <Leader>n :NERDTree<CR>

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

set rtp+=~/.fzf

autocmd BufWritePre * :%s/\s\+$//e

