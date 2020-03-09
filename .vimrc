call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf.vim'
" Plug 'liuchengxu/vim-which-key'
Plug 'lervag/vimtex'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
call plug#end()

" Color
" colorscheme onedark
colorscheme onehalfdark
" lightline

" airline
" let g:lightline.colorscheme='onedark'
let g:airline_theme='onehalfdark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

set encoding=UTF-8
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
set modifiable
set list lcs=tab:\┆\

if (has("termguicolors"))
    set termguicolors
endif

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <del>
inoremap <C-o> <Esc>o
inoremap jk <ESC>

nmap <C-n> :NERDTreeToggle <CR>

" autocmd VimEnter * NERDTree
let NERDTreeWinPos="left"

" filetype on
" filetype off

" markdown
let g:mkdp_command_for_global = 1
let g:mkdp_open_to_the_world = 1

" vim-which-key

" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_engine='latexmk'

" Startify
let g:startify_files_number = 5
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   MRU']            },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ ]
let g:startify_bookmarks = [
            \ '~/workspace',
            \]
highlight StartifyHeader guifg=#e61919
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

autocmd VimEnter * Tagbar

" autoformat
noremap <C-f> :Autoformat<CR>
" let g:python3_host_prog=/usr/local/bin/python3

" Welcome Page NERV
let g:startify_custom_header = [
            \ '                             ███████████               ',
            \ '                          ███████████████████               ',
            \ '                         ███████████████████                ',
            \ '                         ██████████████████████░            ',
            \ '           ██░           █████████████████████████░░        ',
            \ '            ░██░        ███████████████████████████░       ',
            \ '               ░██░    █████████████████████████████████░   ',
            \ '                 ████████████████████████████████████████░  ',
            \ '                    ███████████████████████████████████░    ',
            \ '   █████     ███  ░█████████████████████████░░░             ',
            \ '    █████     █    ███░░██████████████████████░             ',
            \ '    █  ████░  █    ███   ░████████████████████████░         ',
            \ '    █   █████ █    ███████░  ██████████████████████░        ',
            \ '    █        ██    ███░         ████████████████████        ',
            \ '   ███       ██  ░░████████░     ░███████████████████       ',
            \ '                                   ██████████████████       ',
            \ '                     █████████░   ░███████████████████      ',
            \ '                       ███   ████  ░██░  ████████████░      ',
            \ '                       ███   ░███    ██░  ████████████      ',
            \ '                       ███░████░     ░██░  ██████████░      ',
            \ '                       ███ ███░       ░██░ ██ ░███████  ',
            \ '                       ███   ████      ░███    ██████░  ',
            \ '                       ███    ████░     ░█      ░████░  ',
            \ '                                                  ███   ',
            \ '                                                   ░█░  ',
            \]

"let g:startify_custom_header = [
            "\ '                            ....ZZZZZZZZZ..              ',
            "\ '                          ~ZZZZZZZZZZZZZZZ.              ',
            "\ '                         OZZZZZZZZZZZZZZZ                ',
            "\ '              .         .ZZZZZZZZZZZZZZZZZZZZ            ',
            "\ '            .ZZ         .ZZZZZZZZZZZZZZZZZZZZZZZ.        ',
            "\ '              ZZ.       .ZZZZZZZZZZZZZZZZZZZZZZZZZ       ',
            "\ '               $Z       OZZZZZZZZZZZZZZZZZZZZZZZZZZ.     ',
            "\ '                 Z.    .ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ.    ',
            "\ '                  OZ7OZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ.   ',
            "\ '                    ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ.     ',
            "\ '                     ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ        ',
            "\ '     ZZZ      +Z.  .ZZ.ZZZZZZZZZZZZZZZZZZZ .             ',
            "\ '      ZZZ.    .Z    ZZ. =ZZZZZZZZZZZZZZZZZZZZ,           ',
            "\ '      Z ZZO    Z    ZZ.  .ZZZZZZZZZZZZZZZZZZZZO.         ',
            "\ '      Z  ZZZ   Z    ZZ....ZZZZZZZZZZZZZZZZZZZZZ.         ',
            "\ '      Z   .ZZ. Z    ZZ.    Z ZZZZZZZZZZZZZZZZZZZ         ',
            "\ '      Z    .ZZ.Z    ZZ.    .  ~ZZZZZZZZZZZZZZZZZ.        ',
            "\ '      Z      ZZZ    ZZ.      Z .ZZZZZZZZZZZZZZZZO        ',
            "\ '    .?Z.      ZZ   .ZZ.....ZZ.   IZZZZZZZZZZZZZZZ        ',
            "\ '               .                  .ZZZZZZZZZZZZZZZ.      ',
            "\ '                      .ZZZZZZZO.  7ZZZZZZZZZZZZZZZ.      ',
            "\ '                       ~ZD   .ZZ.  IZZZZZZZZZZZZZZ.      ',
            "\ '                       =ZD    ZZ    ZZ.:ZZZZZZZZZZ?      ',
            "\ '                       =ZD  .ZZZ     ZZ. ZZZZZZZZZZ      ',
            "\ '                       =ZZOZZ.       .ZZ  ZZZZZZZZ.      ',
            "\ '                       =ZD .ZZ.       ZZ8.Z ZZZZZZ.      ',
            "\ '                       =ZD  .ZZI      .ZZZ. ..ZZZZ.      ',
            "\ '                       OZZ    ZZZ      .Z.    .ZZZ?      ',
            "\ '                                               ,Z.       ',
"\]

