""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Format Settings (using Neoformat)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_python = ['black', 'docformatter', 'isort']
let g:neoformat_only_msg_on_error = 1
let g:neoformat_run_all_formatters = 1
let g:shfmt_opt="-ci"
" => coc-explorer bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent><leader>m       :CocCommand explorer<cr>
nmap <silent><leader>n       :CocCommand explorer --preset floating<cr>
nmap <silent><leader>b       :CocCommand explorer --preset buffer<cr>
nmap <silent><leader><space> :CocCommand explorer --preset floating<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent>gc <Plug>NERDCommenterToggle<cr>
xmap <silent>gc <Plug>NERDCommenterToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Telescope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ff      <cmd>Telescope find_files<cr>
nnoremap fs      <cmd>Telescope live_grep<cr>
"nnoremap <silent><leader>Ag <cmd>Telescope live_grep<cr>
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BufferLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Jump buffer buffer with just ALT+h or ALT+l
noremap <silent><M-h> :BufferLineCyclePrev<CR>
nnoremap <silent><M-l> :BufferLineCycleNext<CR>
