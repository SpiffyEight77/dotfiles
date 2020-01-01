call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'joshdick/onedark.vim'
call plug#end()

colorscheme onedark
" let g:airline_theme='onedark'
" lightline
" let g:lightline.colorscheme='onehalfdark'

set background=dark
set foldenable
set tabstop=4
syntax on
set autoindent
set showmatch
set number
set noswapfile
set t_Co=256

  if (has("termguicolors"))
    set termguicolors
  endif
