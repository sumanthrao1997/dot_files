let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_python = ['black', 'docformatter', 'isort']
let g:neoformat_only_msg_on_error = 0
let g:neoformat_run_all_formatters = 0
let g:shfmt_opt="-ci"

nnoremap <leader>F :Neoformat<CR>
