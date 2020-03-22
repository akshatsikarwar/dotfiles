set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'mMontu/increment.vim--Avadhanula'
Plugin 'tomasr/molokai'
call vundle#end()
syntax enable
filetype plugin indent on

let mapleader = ","
nnoremap <leader>4 :set ts=4 sw=4 et<cr>
vnoremap <leader>5 :!$HOME/bin/format<cr>
nnoremap <leader>8 :set ts=8 sw=8 noet<cr>
vnoremap <leader>9 :!$HOME/bin/format-berk<cr>
nnoremap <bs> :tabp<cr>
nnoremap <space> :tabn<cr>
nnoremap <leader>g :lgrep! <cword><cr>:lopen<cr>
nnoremap <leader>[ :YcmCompleter GoToReferences<cr>
nnoremap <leader>] :YcmCompleter GoToDefinition<cr>
nnoremap <leader>\ :YcmCompleter GoTo<cr>

let g:ycm_auto_trigger = 0
let g:ycm_autoclose_preview_window_after_completion = 1

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

set termguicolors
colo desert
