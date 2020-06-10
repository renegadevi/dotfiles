set nocompatible
set noswapfile
set number
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ffs=unix,dos,mac
set lazyredraw
set encoding=utf-8
set fileencoding=utf-8
set nobackup
set nowritebackup
set noswapfile
set autoindent
set showmatch
set ruler
set statusline=2
set ignorecase
set smartcase
set incsearch
set hlsearch
set showtabline=1
set foldmethod=syntax
set foldnestmax=5
set foldlevel=3
set mouse=a
set title
set background=dark
set history=1000
set noerrorbells
set novisualbell
set t_vb=
set timeoutlen=1000 ttimeoutlen=0

if !exists("g:syntax_on")
    syntax enable
endif

set t_Co=256
if (empty($TMUX))
    if (has("termguicolors"))
        set termguicolors
    endif
endif