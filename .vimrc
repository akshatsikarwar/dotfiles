syntax enable
filetype plugin indent on

function! ToggleIndent()
  let &ts = &ts > 2 ? (&ts > 4 ? 2 : 8) : 4
  let &sw = &sw > 2 ? (&sw > 4 ? 2 : 8) : 4
endfunction

map <space> :tabn<cr>
map <bs> :tabp<cr>
map <f2> :!format<cr>
map <f3> :!format-berk<cr>
map <f4> :call ToggleIndent()<cr>
map ,r :!%:p<cr>
map ,x :!cx %:p<cr>

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
set makeprg=mymake

let g:yankring_history_dir=expand('/tmp')

let g:aldmeris_transparent = 1
let g:aldmeris_termcolors = "tango"
colo aldmeris
