""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => coc-explorer settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Format Settings (using Neoformat)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_python = ['black', 'docformatter', 'isort']
let g:neoformat_only_msg_on_error = 0
let g:neoformat_run_all_formatters = 0
let g:shfmt_opt="-ci"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDCommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gutentags disabled by defualt
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gutentags_enabled = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim dodge
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:doge_doc_standard_python = 'numpy'
