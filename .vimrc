call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
" Plug 'liuchengxu/vim-which-key'
call plug#end()

" colorscheme onedark
colorscheme onehalfdark
" lightline
" let g:lightline.colorscheme='onedark'
let g:airline_theme='onehalfdark'

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

if (has("termguicolors"))
    set termguicolors
endif

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <del>

" autocmd VimEnter * NERDTree
let NERDTreeWinPos="left"

" filetype on
" filetype off

" markdown
let g:mkdp_command_for_global = 1
let g:mkdp_open_to_the_world = 1

" vim-which-key

" indentLine
let g:indentLine_enabled = 0
" let g:indentLine_char = '┆'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']


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

