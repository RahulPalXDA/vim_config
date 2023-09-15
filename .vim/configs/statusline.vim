" Custom Statusline...
set laststatus=2
set statusline=
set statusline+=%0*
set statusline+=\ 
set statusline+=%1*
set statusline+=\ [%{StatuslineMode()}]\ 
set statusline+=%0*
set statusline+=\ 
set statusline+=%F
set statusline+=\ 
set statusline+=%m
set statusline+=%=
set statusline+=[%{&filetype}]
set statusline+=\ 
set statusline+=[%{strlen(&fenc)?&fenc:'none'}]
set statusline+=\ 
set statusline+=%1*
set statusline+=[%l/%L\ %P]
set statusline+=%0*
set statusline+=\ 

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction
