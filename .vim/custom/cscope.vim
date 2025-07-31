autocmd BufReadPost,BufNewFile *.c,*.h call s:BuildCscope()

function! s:BuildCscope()
    if !filereadable("cscope.out")
        silent! !cscope -Rbq
    endif

    if !cscope_connection()
        cs add cscope.out
    endif
endfunction


function! s:cscope_connection()
    let info = system('cscope -V')
    return len(filter(split(info, '\n'), 'v:val =~# "cscope:"'))
endfunction
