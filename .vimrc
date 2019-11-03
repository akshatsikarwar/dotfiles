syntax enable
filetype plugin indent on

map <f4> :set ts=4 sw=4 et<cr>
map <f5> :set ts=8 sw=8 noet<cr>
map <f6> :!format<cr>
map <f7> :!format-berk<cr>
map <bs> :tabp<cr>
map <space> :tabn<cr>

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
set cursorline
"set termguicolors
"colo darkblue
let g:aldmeris_termcolors = "tango"
let g:aldmeris_transparent = 1
colo aldmeris
