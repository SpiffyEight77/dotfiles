call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'joshdick/onedark.vim'
call plug#end()

" colorscheme onedark
colorscheme onehalfdark
" lightline
" let g:lightline.colorscheme='onehalfdark'
let g:airline_theme='onehalfdark'

set background=dark
set foldenable
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
syntax on
set autoindent
set showmatch
set number
set noswapfile
set t_Co=256
set showcmd
set nobackup

if (has("termguicolors"))
    set termguicolors
endif

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <del>

autocmd VimEnter * NERDTree
let NERDTreeWinPos="left"

" filetype on
" filetype off
