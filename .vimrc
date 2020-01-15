let mapleader = ","
syntax enable
filetype plugin indent on

map <f4> :set ts=4 sw=4 et<cr>
map <f5> :set ts=8 sw=8 noet<cr>
map <f6> :!format<cr>
map <f7> :!format-berk<cr>
map <bs> :tabp<cr>
map <space> :tabn<cr>
map <leader>g :lgrep! <cword><cr>:lopen<cr>
map <leader>w :set wrap!<cr>

set bs=indent,eol,start
set cinoptions=:0
set cursorline
set et
set grepprg=git\ grep\ -n
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set makeprg=vim-make
set mouse=""
set nobackup
set nocp
set noshowmatch
set nowrap
set number
set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
set sw=4
set ts=4
set wildmenu

"set termguicolors
"colo darkblue

let g:aldmeris_transparent = 1
let g:aldmeris_termcolors = "tango"
colo aldmeris
