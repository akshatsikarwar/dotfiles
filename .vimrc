call plug#begin()
    Plug 'mMontu/increment.vim--Avadhanula'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-fugitive'
    if has('nvim')
        Plug 'neovim/nvim-lspconfig'
        Plug 'nvim-treesitter/nvim-treesitter'
    endif

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'akshatsikarwar/draculavim'
    Plug 'akshatsikarwar/nordvim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'carakan/new-railscasts-theme'
    Plug 'cormacrelf/vim-colors-github'
    "Plug 'endel/vim-github-colorscheme'
    Plug 'jpo/vim-railscasts-theme'
    Plug 'tpope/vim-vividchalk'
    Plug 'vim-scripts/desert256.vim'
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
nnoremap <leader>h :noh<cr>
nnoremap <leader>n :set number! relativenumber!<cr>
nnoremap <bs> :tabp<cr>
nnoremap <space> :tabn<cr>

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
set noshowmatch
set nowrap
set number
set relativenumber
set scrolloff=8
set shiftwidth=4
set sidescroll=1
set sidescrolloff=8
set tabpagemax=32
set tabstop=4
set wildmenu

if has('nvim')
    lua require('lspconfig').clangd.setup({})
    lua require('nvim-treesitter.configs').setup({highlight = {enable = true}})
endif

noremap <F1> <lt>F1>
inoremap <F1> <lt>F1>

set termguicolors
colorscheme dracula
