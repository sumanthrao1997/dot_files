"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Inster Python debugger inline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! functions#InsertIpdbLine()
  let trace = expand("import ipdb; ipdb.set_trace()")
  execute "normal o".trace
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! functions#CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! functions#VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call functions#CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call functions#CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'replace_confirm'
        call functions#CmdLine("%s" . '/'. l:pattern . '/'.'/gc')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom folds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CustomFoldText()
  let indentation = indent(v:foldstart - 1)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let expansionString = repeat(" ", indentation)

  return expansionString . foldLevelStr . foldSizeStr
endfunction
