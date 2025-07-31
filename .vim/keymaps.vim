let mapleader="/"

" XClip
vnoremap <leader>y !xclip -selection clipboard<CR><CR>
vnoremap <leader>p !xclip -o -selection clipboard<CR>

" FZF
" Search for file directory-wide
nnoremap <leader>ff :Files<CR>

" Search for word directory-wide
nnoremap <leader>fw :Rg<CR>

" Search for line in current buffer
nnoremap <leader>fl :Lines<CR>

" LSP LIKE STUFF
" fommarter
nnoremap F :call Format(fmtr)<CR>

" jump to file
nnoremap GF :cs find i <C-R>=expand("<cfile>")<CR><CR>

" find symbol
nnoremap GS :cs find s <C-R>=expand("<cword>")<CR><CR>

" find def
nnoremap GD :cs find g <C-R>=expand("<cword>")<CR><CR>

