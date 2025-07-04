call plug#begin('~/.vim/plugged')
" === Theme ===
Plug 'morhetz/gruvbox'

" === FZF ===
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" === Auto pairs ===
Plug 'jiangmiao/auto-pairs'

" === Better colors === 
Plug 'sheerun/vim-polyglot'

" === Better colors ===
Plug 'RRethy/vim-illuminate'

call plug#end()


