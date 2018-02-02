set number
set expandtab 
set encoding=utf-8

" fold 関係
set foldmethod=syntax
let php_fold=1
set foldlevel=100

noremap! ¥ \
noremap! \ ¥

let g:airline_powerline_fonts=1
set laststatus=2

call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set clipboard+=unnamed
