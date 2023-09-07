""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
nnoremap fh      <cmd>Telescope help_tags<cr>
nnoremap f*      <cmd>Telescope grep_string<cr>
nnoremap f8      <cmd>Telescope grep_string<cr>
nnoremap fr      <cmd>Telescope search_history<cr>
nnoremap fg      <cmd>Telescope git_commits<cr>
"nnoremap <silent><leader>Ag <cmd>Telescope live_grep<cr>
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BufferLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Jump buffer buffer with just ALT+h or ALT+l
noremap <silent><M-h> :BufferLineCyclePrev<CR>
nnoremap <silent><M-l> :BufferLineCycleNext<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ZenMode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent>Z :ZenMode<CR>
