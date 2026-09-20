let mapleader = " "
filetype plugin indent on

let g:config_dir = stdpath('config')

" Plugin manager: Neovim's built-in vim.pack (0.12+) instead of vim-plug.
" No pinned branches/tags anywhere -- every plugin tracks its default branch.
lua << EOF
vim.pack.add({
  'https://github.com/akinsho/bufferline.nvim',
  'https://github.com/arzg/vim-colors-xcode',
  'https://github.com/christoomey/vim-tmux-navigator',
  'https://github.com/jjshoots/betterf.nvim',
  'https://github.com/junegunn/fzf.vim', -- fzf binary itself: system-installed
  'https://github.com/kyazdani42/nvim-web-devicons',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-neo-tree/neo-tree.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/preservim/nerdcommenter',
  'https://github.com/rhysd/committia.vim',
  'https://github.com/sbdchd/neoformat',
  'https://github.com/sheerun/vim-polyglot',
  'https://github.com/tpope/vim-fugitive',
  'https://github.com/folke/snacks.nvim',
  'https://github.com/coder/claudecode.nvim',
  'https://github.com/folke/zen-mode.nvim',
})
EOF

" Core config: order matters (options before keymaps/autocmds that assume them)
execute 'source' g:config_dir . '/config/options.vim'
execute 'source' g:config_dir . '/config/keymaps.vim'
execute 'source' g:config_dir . '/config/autocmds.vim'

" Plugin configs: independent of each other and of load order, so just glob
" everything in plugins/ (add a new plugin's config there, no edit needed here)
for s:f in sort(glob(g:config_dir . '/plugins/*', 0, 1))
  execute 'source' s:f
endfor
unlet s:f
