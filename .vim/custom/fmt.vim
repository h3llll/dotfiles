function! Format()
    let l:cursor = getpos('.')
     
    if &filetype ==# 'c'
        silent %!clang-format
    endif
    
    call setpos('.', l:cursor)
endfunction
