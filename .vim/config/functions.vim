"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Inster Python debugger inline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertIpdbLine()
  let trace = expand("import ipdb; ipdb.set_trace()")
  execute "normal o".trace
endfunction
