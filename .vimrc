call plug#begin()
Plug 'mMontu/increment.vim--Avadhanula'
Plug 'tpope/vim-fugitive'

Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'dracula/vim'
call plug#end()

filetype on
filetype plugin indent on
syntax enable

let mapleader = ","
nnoremap <leader>4 :set ts=4 sw=4 et<cr>
vnoremap <leader>5 :!$HOME/bin/format<cr>
nnoremap <leader>8 :set ts=8 sw=8 noet<cr>
vnoremap <leader>9 :!$HOME/bin/format-berk<cr>
nnoremap <leader>c :sp CMakeLists.txt<cr><esc>:r$HOME/bin/cmake.template<cr><esc>:wincmd w<cr><esc>:r$HOME/bin/cdb2.template<cr>
nnoremap <leader>g :lgrep! <cword><cr>:lopen<cr>
nnoremap <leader>n :set number! relativenumber!<cr>
nnoremap <bs> :tabp<cr>
nnoremap <space> :tabn<cr>

"set cinoptions=:0
set backspace=indent,eol,start
set cursorline
set expandtab
set grepprg=git\ grep\ -n
set guicursor=""
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set makeprg=vim-make
set nobackup
set nocompatible
set noshowmatch
set nowrap
set number
set relativenumber
set shiftwidth=4
set tabpagemax=32
set tabstop=4
set wildmenu

set termguicolors
"let g:dracula_italic = 0
colorscheme dracula

"if executable('pylsp')
"    " pip install python-lsp-server
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'pylsp',
"        \ 'cmd': {server_info->['pylsp']},
"        \ 'allowlist': ['python'],
"        \ })
"endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    "nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    "nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    "nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
    "let g:lsp_format_sync_timeout = 1000
    "autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
endfunction
augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

"function! g:NoMoMatchParen()
"    :NoMatchParen
"endfunction
"augroup plugin_initialize
"    autocmd!
"    autocmd VimEnter * call NoMoMatchParen()
"augroup END

let g:lsp_document_highlight_enabled = 0
let g:lsp_document_code_action_signs_enabled = 0
