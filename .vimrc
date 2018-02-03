set number
set expandtab 
set encoding=utf-8
set nobackup
set noswapfile

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
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
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
Plug 'lervag/vimtex', {'for': ['tex']}

call plug#end()

set clipboard+=unnamed

" NERDTree を最初から表示
let g:NERDTreeShowBookmarks=1
if !argc()
  autocmd vimenter * NERDTree|normal gg3j
endif
