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

call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim', {'for': ['python']}
Plug 'tweekmonster/braceless.vim', {'for': ['python']}
autocmd FileType python BracelessEnable +fold
Plug 'everzet/phpfolding.vim', {'for': ['php']}
Plug 'lervag/vimtex', {'for': ['tex']}
Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_sartup = 1
Plug 'Townk/vim-autoclose'
call plug#end()

let g:airline_powerline_fonts=1
set laststatus=2
let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#readonly#enabled = 0
" let g:airline#extensions#taline#enabled = 1

let g:vimtex_compiler_latexmk = {
  \'background':1,
  \ 'build_dir':'',
  \ 'continuous':1,
  \ 'options':['-pdfdvi']
\}
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'

set clipboard+=unnamed

" texで, ギリシャ文字を展開しない
let g:tex_conceal = ''

" NERDTree を最初から表示
let g:NERDTreeShowBookmarks=1
if !argc()
  autocmd vimenter * NERDTree|normal gg3j
endif
