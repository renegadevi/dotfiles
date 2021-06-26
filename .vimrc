set nocompatible 
set number 
se mouse+=a " prevent selecting line numbers
if has('filetype')
	filetype indent plugin on
endif

syntax on

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set showmatch
set ruler
set statusline=2
set laststatus=2
set ignorecase
set incsearch
set hlsearch
set showtabline=1

set foldmethod=syntax
set foldnestmax=5
set foldlevel=3

set title
set background=dark
set history=1000

set wildmenu
set showcmd


set ffs=unix,dos,mac
set lazyredraw
set encoding=utf-8
set fileencoding=utf-8

set nobackup
set nowritebackup
set noswapfile

set noerrorbells
set novisualbell
set t_vb=
set timeoutlen=1000 ttimeoutlen=0

set t_Co=256


set guicursor=i:ver25-iCursor


" iterm cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" colorscheme: bubblegum
" https://raw.githubusercontent.com/baskerville/bubblegum/master/colors/bubblegum-256-light.vim
" https://raw.githubusercontent.com/baskerville/bubblegum/master/colors/bubblegum-256-dark.vim
colorscheme bubblegum-256-dark

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()