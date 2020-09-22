call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
" Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': './install.sh'
            \ }
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'fatih/vim-go'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf.vim'
" Plug 'liuchengxu/vim-which-key'
Plug 'lervag/vimtex'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sonph/onehalf'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sirver/ultisnips'
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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_airline_tabline = 1
let g:gitgutter_set_sign_backgrounds=1
let mapleader=" "

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
set relativenumber
set noswapfile
set t_Co=256
set showcmd
set nobackup
set modifiable
set wrap
set nocursorline
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
" set list lcs=tab:\┆\
highlight Normal guibg=NONE ctermbg=None
highlight LineNr guibg=NONE


if (has("termguicolors"))
    set termguicolors
endif

map <C-s> :w<CR>
map <C-q> :q<CR>

map <C-r> :source /Users/wayne/.config/nvim/init.vim<CR>

map vl :set splitright<CR>:vsplit<CR>
map vh :set nosplitright<CR>:vsplit<CR>
map vj :set splitbelow<CR>:split<CR>
map vk :set nosplitbelow<CR>:split<CR>

map vn <C-w>t<C-w>H
map vm <C-w>t<C-w>K

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

map <up>    :res +5<CR>
map <down>  :res -5<CR>
map <right> :vertical resize+5<CR>
map <left>  :vertical resize-5<CR>

map tt :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap <C-d> <del>
inoremap <C-o> <Esc>o
inoremap jk <ESC>

map <C-n> :NERDTreeToggle<CR>

nmap <LEADER><CR> :nohl

nmap <C-h> 0
nmap <C-l> $

nmap J 5j
nmap K 5k
nmap H 7h
nmap L 7l

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
let g:indentLine_setConceal = 1
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" vimtex
" let g:vimtex_latexmk_options='-pdf -pdflatex="xelatex -synctex=1 \%S \%O" -verbose -file-line-error -interaction=nonstopmode'

let g:vimtex_compiler_latexmk = {
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-xelatex',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

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

set clipboard=unnamedplus

" go lsp
let g:go_gopls_enabled = 0

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

