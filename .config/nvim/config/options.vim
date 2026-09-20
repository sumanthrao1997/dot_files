"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set relativenumber
set number
set backspace=eol,start,indent
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
let g:netrw_fastbrowse = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LSP / completion settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set signcolumn=yes
set updatetime=300
set shortmess+=c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
syntax enable
let g:xcodedarkhc_green_comments = 1
colorscheme xcodedarkhc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile
" set undodir=~/.vim/temp_dirs/undodir/
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
function! CustomFoldText()
  let indentation = indent(v:foldstart - 1)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let expansionString = repeat(" ", indentation)

  return expansionString . foldLevelStr . foldSizeStr
endfunction

set foldmethod=indent
set nofoldenable
set foldlevel=99
set fillchars=fold:\ "The backslash escapes a space
set foldtext=CustomFoldText()
