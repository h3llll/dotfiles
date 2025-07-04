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

" fommarter
nnoremap F			:call Format()<CR>

" horver
nnoremap <Leader>h :echo expand('<cword>')<CR>
