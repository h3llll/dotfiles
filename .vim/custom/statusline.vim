set noshowmode
set laststatus=2
set statusline=
highlight StatusMode guifg=#1d2021 guibg=#d8a657 gui=bold ctermfg=235 ctermbg=179 cterm=bold
set statusline+=%#StatusMode#                    " Gruvbox accent
set statusline+=\ %{mode()}\                   " shows mode
set statusline+=\ \ %f                         " File path
set statusline+=\ [%{&filetype}]               " Filetype
set statusline+=\ %{&readonly?'[RO]':''}       " Readonly flag
set statusline+=%{&modified?'[+]':''}          " Modified flag
set statusline+=%=
set statusline+=%#StatusMode#
set statusline+=\ %l:%c\                       " Line and column

