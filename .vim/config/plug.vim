" Adapted from https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source %
endif

call plug#begin()
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
"Plug 'noib3/nvim-cokeline'
Plug 'antoinemadec/coc-fzf'
Plug 'arzg/vim-colors-xcode'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lervag/vimtex'
Plug 'nachovizzo/committia.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'tpope/vim-surround'
call plug#end()

set termguicolors
lua << EOF
  require("bufferline").setup{}
EOF

