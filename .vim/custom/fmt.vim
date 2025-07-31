function! Format(formatter)
    let l:cursor = getpos('.')
     
    if &filetype ==# 'c'
        execute 'silent! %!' . a:formatter
    endif
    
    call setpos('.', l:cursor)
endfunction
