set nocompatible
set number
se mouse+=a " prevent selecting line numbers
set nowrap
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
set showtabline=2
set foldmethod=syntax
set foldnestmax=5
set foldlevel=3
set title
set background=dark
set history=1000
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
set wildmenu
set wildmode=list:longest,full
set colorcolumn=80,120
set backspace=indent,eol,start

" iterm change I to [] depending on mode.
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
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/tagbar' "brew install universal-ctags (alt. ctags-exuberant)
Plug 'vim-syntastic/syntastic'
Plug 'vim-python/python-syntax'
call plug#end()


" NERDTree configurations

"" Sidebar on the right
let g:NERDTreeWinPos = "left"

"" Show hidden files
let NERDTreeShowHidden = 1

"" Show NERDTree at start
autocmd VimEnter * NERDTree

"" Show NERDTree at new tab
autocmd BufWinEnter * NERDTreeMirror

"" Close NERDTree if it's only left
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

"" At startup, move to active editor instead of NERDTree
autocmd VimEnter * wincmd w


nmap <F12> :NERDTreeToggle<CR>
nmap <F10> :TagbarToggle<CR>
nmap <F11> :VimFiler<CR>


" Better whitespace config
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1


" python-syntax config
let g:python_highlight_all = 1


" Tab navigation like Firefox. (TAB doesn't work properly on mac for unknown
" reason)
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
