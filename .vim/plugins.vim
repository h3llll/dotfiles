call plug#begin('~/.vim/plugged')
" === Theme ===
Plug 'sainnhe/gruvbox-material'

" === FZF ===
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" === Auto pairs ===
Plug 'jiangmiao/auto-pairs'

" === Better colors === 
Plug 'sheerun/vim-polyglot'
Plug 'octol/vim-cpp-enhanced-highlight'

" === Better colors ===
Plug 'RRethy/vim-illuminate'

" === <3 vim-tpipeline ===
Plug 'vimpostor/vim-tpipeline'

call plug#end()


