"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

" Enable filetype plugins
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set backspace=eol,start,indent
"set clipboard^=unnamed
set clipboard+=unnamedplus
set cmdheight=1
set colorcolumn=+1
set completeopt+=menu
set cursorline
set hidden
set ignorecase
set inccommand=split
set incsearch
set lazyredraw
set linebreak
set mouse=a
set nohlsearch
set nowrap
set smartcase
set splitbelow
set splitright
set termguicolors
set textwidth=100
set whichwrap+=<,>,h,l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => coc.nvim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set signcolumn=number
set updatetime=300
set shortmess+=c
let g:coc_disable_startup_warning = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
syntax enable
let g:xcodedarkhc_green_comments = 1
colorscheme xcodedarkhc
" colorscheme xcodelight

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set undodir=~/.vim/temp_dirs/undodir/
set undofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smarttab
set autoindent
set smartindent
set wrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=-1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Read local .vimrc files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set exrc
set secure

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Defining Folds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent
set nofoldenable
set foldlevel=99
set fillchars=fold:\ "The backslash escapes a space
set foldtext=CustomFoldText()
