" .vimrc
"
" I created this .vimrc as a good skeleton for future use with good comment
" guidence without requireing looking each command up. Some of these comments
" has been written by me or by others that I found online that I added in. Any
" suggestions or corrections is highly appriciated.
"
" File:     .vimrc
" Author:   renegadevi <philip.andersen@codeofmagi.net>
" Version:  2.0.2
" Updated:  2016-08-07
"


" Set if you want to use Vim instead of Vi
"
" When 'compatible' is set, Vim will limit it self in order to be backwards
" compatible with Vi. All of Vim's additional features and improvements etc.
" will be turned off. When a .vimrc file is found Vim switches automaticly from
" 'compatible' to 'nocompatible', meaning all the default options will be
" changed into Vim defaults.
"
" By explicit setting 'nocompatible' overrules calling Vim with the -C flag.
"
set nocompatible


" Plugin manager (Pathogen)
"
" Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes
" it super easy to install plugins and runtime files in their own private
" directories. Just download or 'git clone' the plugin to (~/.vim/bundle).
"
" https://github.com/tpope/vim-pathogen
"
call pathogen#infect()


" Leave hidden buffers open
"
" Hiddens buffers instead of closing. This means you can have unwritten
" changes to a file and open a new file using :e, without being forced to
" write or cancel your changes first. Also undo buffers are marks are
" preserved while the buffer is open.
"
set hidden


" Enable syntax highlighting
"
" The 'syntax enable' command will keep your current color settings. This
" allows using ':highlight' commands to set  your preferred colors before or
" after using this command. If you want Vim to overrule your settings with the
" defaults, use 'syntax on' instead.
"
if !exists("g:syntax_on")
    syntax enable
endif


" Filetype detecting
"
" Attempt to determine the type of a file based on it's name and possibility
" it's contents. Use this to allow intelligent auto-indenting for each
" filetype, and for plugins that are filetype specific.
"
filetype plugin indent on


" File formatting
"
" Vim recognize three file formats (unix, dos and mac) that determine what
" line ending characters are removed from each line when a file is read.
"
"  unix  = LF     (Line feed)
"  dos   = CR+LF  (Carriage return + Line Feed)
"  mac   = CR     (Carriage return)
"
" Note: Apple moved from 'mac' line endings to 'unix' whenever they moved to OSX
"
" A common problem is opening dos files where it shows up with a '^M' on each
" line endings. Vim can easily convert it with the command ':e ++ff=dos'.
"
" The 'fileformats' command specifies which file formats will be tried for vim
" to read when opening a file by it's priority.
"
set ffs=unix,dos,mac


" Auto-reload file
"
" When a file has been detected to have been outside of Vim by a shell command
" etc. it will automatically read it again. When a file has been deleted, this
" is not done.
"
set autoread


" Smart backspace
"
" Allow backspacing over parts. Allow backspacing over line breaks (join
" lines), insert (start) and autoindent. As of default, Vi compatible is used.
"
set backspace=eol,start,indent


" Redraw
"
" When this option is set the screen will not be redrawn while executing
" macros, registers and other commands that have not been typed. A good
" performance tweak.
"
set lazyredraw


" Encoding
"
" Sets the default character enconding used for text, buffers, registers,
" strings, viminfo etc. It sets the kind of characters which Vim can work with.
" See 'encoding-names' for possible values. utf-8 is the preferred choice for
" modern programming and scripting.
"
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8


" Backup (Disable)
"
" nobackup      = Disable backup files (*.ext~)
" nowritebackup = Do not create backup files while editing
" noswapfile    = Disable swap files (*.ext.swp)
"
set nobackup
set nowritebackup
set noswapfile


" Smart tabs
"
" When enabled, tab inserts blanks accordinly to 'shiftwidth'. A backspace will
" delete a full 'shiftwidth' worth of space at the start of the line. When
" off, Tab will always insert blanks accordinly to 'tabstop' or 'softtabstop'.
" 'shiftwidth' is only used for shifting text left or right. What gets inserted
" by a Tab or spaces depends on 'expendtab' options.
"
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4


" Automatic indentation
"
" 'autoindent'  = Copy the indentation from the previous line
" 'smartindent' = Automatically inserts one extra indentation when needed
" 'cindent'     = Like 'smartindent', but more customizable and strict syntax
"
" Generally, 'smartindent' or 'cindent' should only be set manually if you're
" not satisfied with how file type based indentation works. When you open C/C++
" files, file type based identations automatically sets 'cindent'.
"
" Note: 'autoindent' does not interfere with other indentation settings, and
" some file type based indentation scripts even enable it automatically.
"
set autoindent


" Text/Word wrapping/break
"
" 'wrap'       = Lines longer then the width of window will visually wrap
" 'textwidth'  = Maximum width of text that is being inserted.
" 'linebreak'  = only wrap at a character in the breakat option
"                (by default " ^I!@*-+;:,./?")
" 'wrapmargin' = Number of characters from the right window border where
"                wrapping starts.
"
"set wrapmargin
set wrap
set textwidth=80
set linebreak


" Color column
"
" 'colorcolumn' will draw a vertical line at set characters number. Useful for
" align text and easy look at strict document width.
"
" Note: It will make redrawing screen slower.
"
set colorcolumn=81


" Show matching bracket
"
" When a bracket {} is inserted, briefly jump to the matching one. The jump is
" only done if the match can be seen on the screen. A beep is given if there
" is no match. This option is reset when the 'paste' option is used.
"
set showmatch


" Ruler
"
" When enabled, the ruler is displayed on the right side of the status line at
" the bottom of the window. By default, it displays the line number, the
" column numbber, the virtual column number, and the relative position of the
" cursor in the file (as a procentage).
"
set ruler


" Status line
"
" Set rows of informational status line. The value influences when the last
" window will have a status line. The screen looks nicer and is customizable.
" Plugins such as 'vim-powerline', 'vim-airline' etc. take advantage of this
" where the advantage of always showing the statusbar is that you can see the
" current mode, file name, file status, ruler etc.
"
"  0 = Disabled    Never show
"  1 = Enabled     Only show if there at least two windows (Default)
"  2 = Enabled     Always show, with additional information
"
set laststatus=2


" Show line numbers
"
" Print the line numbers in front of each line. The 'numberwidth' option can
" be used to see the room for the line number.
"
set number


" Use wildmenu
"
" When 'wildmenu' is set, the command-line completion operates in an enhanced
" mode when (normally) pressing Tab. It can be customized with 'wildmode'.
" Default mode is 'full',
"
" Wildmodes
"     full        = Complete the next full match.
"     longest     = Complete until longest common string.
"     list        = When more then one match, list all matches.
"
" Combinations
"   longest,full  = Complete longest common string, then list alternatives.
"   list,full     = List all matches without completing, then each full match
"   list:full     = List all matches and complete each full match
"
set wildmenu
set wildmode=longest,list


" Modeline magic
"
" Modelines allows developers/user to set a specific variables to a file. By
" default, the first and last five lines are read by Vim for variable settings.
" Example when using a strict code style, you could have a mode line
" to automatically set the 'tabwidth', 'textwidth', 'softtabs' etc.
"
" Example ('textwidth' 80, 'tabstop' 4)
" /* vim: tw=80 ts=4 */
"
set modeline
set modelines=5


" Search case-smart
"
" These two options; when eaabled together, will make '/'-style characters
" searches case-sensitive only if there is a capital letter in the search
" expression. *-style searches continue to be consistently case-sensisitve
"
set ignorecase
set smartcase


" Search highlightning
"
" While typing a search command, show where the pattern, as it was typed so
" far, matches. The matched string is highlighted. If the pattern is invalid
" or not found, nothing is shown. When there is a previous search pattern,
" highlight all it's matches.
"
set incsearch
set hlsearch


" Key mapping
"
" Key mapping refers to creating a shortcut for repeating a sequence of  keys
" or commands. You can map keys to execute frequently used key sequences or to
" invoke an Ex command or to invoke a Vim function or to invoke external
" commands. Using keymaps, you can define your own Vim commands.
"
" Keymaps:
"
"       n           ':nmap'     Normal mode
"       i           ':imap'     Insert mode
"       v           ':vmap'     Visual and select mode
"       x           ':xmap'     Visual mode
"       s           ':smap'     Select mode
"       c           ':cmap'     Command-line mode
"       i           ':omap'     Operator pending mode
"       <Space>     ':map'      Normal, Visual and operator pending mode
"       !           'map!'      Insert and Command-line mode
"
" For more information:
" - http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
" - http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2)
"
map <C-i> :tabnext<CR>
map <C-tab> :tabnext<CR>
map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>

map <F12> :NERDTreeToggle<CR>

nnoremap <space> za


" Cursorline
"
" Highlight current cursor row with a cursorline. Will make screen redrawing
" slower. When Visual-mode is active, the highlightning isn't used to make it
" easier to see the selected text.
"
set cursorline


" Messages
"
" To give more space for displaying messages, you can increse the height of
" the command line to 2 or greater.
"
set cmdheight=1


" Filetabs
"
" Options for showing the tab line. The value of this option specifies when
" the line with tab page labels will be displayed.
"
"   0 = Disabled  Never
"   1 = Enabled   Only show if there are at least two tab pages (Default)
"   2 = Enabled   Always show
"
set showtabline=1


" Folding
"
" Many programming languages supports folding for easier overview
"
" 'foldmethod':
"     manual  = folds must be defined by entering commands (such as 'zf')
"     indent  = groups of lines with the same indent form a fold
"     syntax  = folds are defined by syntax highlightning
"     expr    = folds are defined by user-defined expression
"
"     diff    = used to fold unchanged text when viewing differences
"     marker  = spcial characters can be manually or automatically added to your
"             text to flag the start and end of folds
"
" 'foldnestmax':
"     Sets the maximum nesting folds for the 'indent' and 'syntax' methods.
"     This avoids too many folds will be created; limit 20.
"
" 'foldlevel':
"     Sets the maximum fold level. Folds with a higher level will be closed.
"     Higer number will close fewer folds. Settings this option to zero will
"     close all folds.
"
set foldmethod=syntax
set foldnestmax=5
set foldlevel=3


" Mouse support
"
" 'mouse' enables mouse and scroll support for modern terminals. This makes the
" need of gVim much less necessary. This also fixes a problem with 'set number'
" where if you copied content from vim with the mouse it would include line
" numbers.
"
"     n = normal
"     v = visual-mode
"     i = insert-mode
"     c = command-line
"     h = all previous modes when editing a help file
"     a = all modes
"
set mouse=a


" Scroll lines
"
" Whenever the cursor moves outside the viewport of the current window, the
" buffer scrolls a single line to keep the cursor in view. Setting the
" 'scrolloff' option will start the scrilling with the value of lines before
" the border, keeping more context around where you're working without the
" need to scroll up a few lines again. Tip: typing lowercase 'zz' will center
" the windows on the cursor.
"
set scrolloff=3


" Title
"
" This is only supported with a window manager. When enabled, the title of the
" window will be set to the value of 'titlestring' (if not empty) and show you
" for information, like:
"
"     filename [+=-] (path) - VIM
"
"     -   = file cannot be modified
"     +   = file was modified
"     =   = file is read-only
"     =+  = file is read-only and modified
"
set title


" Color support (256 -> True Color)
"
" This first enables a more colored terminal, then if possible enables 24-bit
" true-color terminal. Requires VIM 7.4. Tmux 2.2 supports true-color, but I
" haven't found a way to enable true-color in vim inside tmux as of this moment.
"
"     't_co'             Enables 256 colored terminal.
"     'termguicolors'    Enables 24-bit True color
"
set t_Co=256
if (empty($TMUX))
    if (has("termguicolors"))
        set termguicolors
    endif
endif


" Theme
"
" Customize and enhance Vim's appearance. Set default background color and
" colorscheme.
"
set background=dark
colorscheme one


" History
"
" By default. Vim only remembers the last 20 commands and search patterns
" entered. To extend this we can use the history command to set a value.
"
set history=1000


" Interruptive prompts
"
" Using 'shortmess' avoids all the 'Press ENTER or type command to continue...'
" prompts. There is a lot of customization with this, see all options by typing
" ':help shortmess'.
"
" Instead of failing because of unsaved changes, a dialouge will ask to save
" changes thanks to 'set confim'.
"
set shortmess=atI
set confirm


" Disable 'beeping'
"
" If there is a error, Vim will flash or beep.
"
" 'noerrorbells' = Turn off sound
" 'novisualbell' = Turn off visual flashes
" 't_vb'         = Turn off all visual flashes
"
set noerrorbells
set novisualbell
set t_vb=


" Eliminate ESC-delays
"
" If you experience delay with entering normal mode after pressing ESC, there's
" fixes for this. There's a built-in delay because many keys (e.g arrows, ALT)
" rely on it as a escape character.
"
" You can use 'set esckeys' to remove the delay, however this will break any
" sequences using escape in insert mode. A better solution is to use a timeout.
"
" https://www.johnhawthorn.com/2012/09/vi-escape-delays/
"
set timeoutlen=1000 ttimeoutlen=0


" Plugin configuration
"
" Additional personal preferences for some of the plugins I am using
"
let g:airline_theme='one'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
