syntax enable
filetype plugin indent on

map <space> :tabn<cr>
map    <bs> :tabp<cr>
map    <f5> :!format-berk<cr>
map    <f6> :!format<cr>

set nobackup
set nocp
set bs=indent,eol,start
set noshowmatch
set hlsearch
set incsearch
set ignorecase
set number
set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set nowrap
set ts=4
set sw=4
set et
set cinoptions=:0
set wildmenu
set mouse=""
set makeprg=vim-make

let g:yankring_history_dir=expand('/tmp')
