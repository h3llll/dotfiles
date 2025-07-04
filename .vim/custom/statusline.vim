set noshowmode
set laststatus=2
set statusline=
highlight StatusMode guifg=#282828 guibg=#fabd2f gui=bold ctermfg=0 ctermbg=220 cterm=bold
set statusline+=%#StatusMode#                    " Gruvbox accent
set statusline+=\ %{mode()}\                   " shows mode
set statusline+=\ \ %f                         " File path
set statusline+=\ [%{&filetype}]               " Filetype
set statusline+=\ %{&readonly?'[RO]':''}       " Readonly flag
set statusline+=%{&modified?'[+]':''}          " Modified flag
set statusline+=%=
set statusline+=%#StatusMode#
set statusline+=\ %l:%c\                       " Line and column

