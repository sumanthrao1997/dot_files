"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Inster Python debugger inline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertIpdbLine()
  let trace = expand("import ipdb; ipdb.sset_trace()")
  execute "normal o".trace
endfunction
