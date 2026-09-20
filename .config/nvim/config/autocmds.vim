"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Prose (markdown): shared settings + native dictionary completion
" (was duplicated in ftplugin/markdown.vim)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup prose_settings
  autocmd!
  autocmd FileType markdown setlocal textwidth=0 colorcolumn=0 spell
  if filereadable('/usr/share/dict/words')
    autocmd FileType markdown setlocal dictionary=/usr/share/dict/words complete+=k
  endif
augroup END
