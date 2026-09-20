"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => The most relevant keybindigs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent><C-s>     :w<cr>
map! <silent><C-s>     <ESC>:w<cr>
nmap <silent><leader>w :w<cr>
nmap <silent><leader>x :x<cr>
nmap <silent><leader>q :q!<cr>

" j+k or k+j escapes insert mode
imap jk <ESC>
imap kj <ESC>

" Copy paste: leader+c / leader+v
map <silent><C-c> "+y
map <silent><C-p> "0p

" Toggle highlight when <leader><cr> is pressed
map <silent><expr> <leader><cr> (&hls && v:hlsearch ? ':set nohlsearch' : ':set hls')."\n"

" Quickly open vim config file
map <silent><leader>e :e! $MYVIMRC<cr>

" Jumb back to last buffer
map <silent><leader>6 <c-^><cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcutting split navigation, saving a keypress:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap buffer just ALT +hl or arrows
" map <silent><M-Left> <M-h>
" map <silent><M-Right> <M-l>

" Remap split navigations to just CTRL +hjkl or arrows
map <silent><C-h> <C-w>h
map <silent><C-j> <C-w>j
map <silent><C-k> <C-w>k
map <silent><C-l> <C-w>l

" Same but using the leader, you can't hold down this key, what a shame
nmap <silent><leader>h :wincmd h<cr>
nmap <silent><leader>j :wincmd j<cr>
nmap <silent><leader>k :wincmd k<cr>
nmap <silent><leader>l :wincmd l<cr>

" Split configurations
map <silent><C-Left>   :vertical resize +2<cr>
map <silent><C-Down>   :vertical resize -2<cr>
map <silent><C-Up>     :resize +3<cr>
map <silent><C-Right>  :resize -3<cr>

" Always move down with vim keys even in soft-lines
noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related: search & replace on the visual selection
" (\V = very-nomagic, so only '/' and '\' need escaping)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
xnoremap <leader>r y:%s/\V<C-r>=escape(@", '/\')<CR>/
xnoremap <leader>c y:%s/\V<C-r>=escape(@", '/\')<CR>//gc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Function Calls
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>ipdb oimport ipdb; ipdb.set_trace()<Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme: dark/light theme toggle
" NOTE: was <leader>l, which collided with the wincmd-l split-nav mapping
" above (<leader>l now consistently means "move to right split").
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent><leader>d  :colorscheme xcodedark<cr>
nmap <silent><leader>tl :colorscheme xcodelight<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Useful mappings to make search results appear in the middle of the screen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fzf files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>ff :Files<CR>
