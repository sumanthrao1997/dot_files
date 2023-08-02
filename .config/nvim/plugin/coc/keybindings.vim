""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Override tagfunc with CoC one
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets the tag function from coc, this way we can jump between definitions by
" only using the tags stack, instead of the whole ctrl+o ctrl+i thing.
" https://github.com/neoclide/coc.nvim/issues/1025
set tagfunc=CocTagFunc
nmap <silent>gd <C-]>