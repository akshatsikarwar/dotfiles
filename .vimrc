call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'mMontu/increment.vim--Avadhanula'

Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'
Plug 'veloce/vim-aldmeris'
Plug 'vim-scripts/desert256.vim'
Plug 'vim-scripts/github-theme'
Plug 'vim-scripts/summerfruit256.vim'
call plug#end()

filetype on
filetype plugin indent on
set encoding=utf-8
set nocompatible
syntax enable

let mapleader = ","
nnoremap <leader>4 :set ts=4 sw=4 et<cr>
vnoremap <leader>5 :!$HOME/bin/format<cr>
nnoremap <leader>8 :set ts=8 sw=8 noet<cr>
vnoremap <leader>9 :!$HOME/bin/format-berk<cr>
nnoremap <leader>g :lgrep! <cword><cr>:lopen<cr>
nnoremap <bs> :tabp<cr>
nnoremap <space> :tabn<cr>

set bs=indent,eol,start
set cinoptions=:0
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

colo onedark
