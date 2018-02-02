set number
set expandtab 
set encoding=utf-8
set nobackup

" mac 用. バックスペースと, 円記号の入れ替え
noremap! ¥ \
noremap! \ ¥

" インデント
set autoindent 
set smartindent

set expandtab
set smarttab
set cindent

set tabstop=2
set shiftwidth=2
set softtabstop=0

if has("autocmd")
    filetype plugin on
    filetype indent on
    autocmd FileType c          setlocal sw=4 sts=4 st=4 et
    autocmd FileType html       setlocal sw=4 sts=4 st=4 et
    autocmd FileType ruby       setlocal sw=4 sts=4 st=4 et
    autocmd FileType js         setlocal sw=2 sts=2 st=2 et
    autocmd FileType python     setlocal sw=4 sts=4 st=4 et
    autocmd FileType json       setlocal sw=4 sts=4 st=4 et
endif
" インデント終わり

let g:airline_powerline_fonts=1
set laststatus=2

call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim', {'for': ['python']}
Plug 'tweekmonster/braceless.vim', {'for': ['python']}
autocmd FileType python BracelessEnable +fold
Plug 'everzet/phpfolding.vim', {'for': ['php']}

call plug#end()

set clipboard+=unnamed

" NERDTree を最初から表示
let g:NERDTreeShowBookmarks=1
if !argc()
  autocmd vimenter * NERDTree|normal gg3j
endif
