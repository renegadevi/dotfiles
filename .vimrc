" My .vimrc
"
" This .vimrc file was created as a good skeleton for future use with good
" commenting, some written by me and some written by others. Any suggestions
" for better commenting is highly appriciated.
"
" Remember, You shall never trust runing code you don't know what it is doing,
" or from someone you do not fully trust.
"
" File:     .vimrc
" Author:   renegadeVI <renegadevi@codeofmagi.net>
" Version:  1.1.0
" Updated:  2015-02-26
"


" Stop Vim from strictly behaving as Vi
set nocompatible


" Use Pathogen for VIM plugins
"
" Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes
" it super easy to install plugins and runtime files in their own private
" directories compare to anything else. Just 'git clone' to the plugins folder
" (~/.vim/bundle). Much more simple then Vundle in my opinion.
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


" Enable syntax highlightning
"
" The 'syntax enable' command will keep your current color settings. This
" allows using ':highlight' commands to set  your preferred colors before or
" after using this command. If you want Vim to overrule your settings with the
" defaults, use 'syntax on' instead.
"
syntax enable



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
" A common problem is opening dos files where it shows up with a '^M' on each
" line endings. Vim can easily convert it with the command ':e ++ff=dos'.
" Note, Since MacOS became OSX, Apple moved from mac to unix
"
" With the 'fileformats' command specifies which file formats will be tried
" for vim to read when opening a file by it's priority.
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
set fileencodings=utf-8
scriptencoding utf-8
set encoding=utf-8


" Backup (Disabled)
"
" - Disable backup files (*.ext~)
" - Do not create backup files while editing
" - Disable swap files (*.ext.swp)
"
set nobackup
set nowb
set noswapfile


" Smart tabs
"
" When on, tab inserts blanks accordinly to 'shiftwidth'. A backspace will
" delete a full 'shiftwidth' worth of space at the start of the line. When
" off, Tab will always insert blanks accordinly to 'tabstop' or 'softtabstop'.
" 'shiftwidth' is only used for shifting text left or right. What gets
" inserted by a Tab or spaces depends on 'expendtab' options.
"
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4


" Auto indent
"
" copy indent from current line when starting a new like. When 'autoindent' is
" enabled, formatting uses the indentation of the first time (with the 'gg'
" command or when you reach 'textwidth' in Insert-mode) uses. The 'autoindent'
" -option is reset when the 'paste' option is set.
"
set autoindent


" Smart indent
"
" Do smart autoindenting when starting on a new line. Works well for C-like
" languages, but can also be applied for other languages. For C, see
" 'cindent'. An indent is automatically inserted. Typing '}' as the first
" character in a new line, that line is giving the same indent matching as the
" same previous matching '{'. Note: 'smartindent' is reset whenever
" 'comatible' is used.
"
set smartindent


" Text wrapping
"
" When enabled, lines longer then the with of the window will wrap and
" displaying continues on the next line. When disabled, liked will not wrap
" and only parts of longer lines will be displayed. Use 'textwidth' to set the
" maximum width of text being inserted, when at sero value, it's disabled.
"
set nowrap
set textwidth=0


" Color column
"
" 'colorcolumn' will draw a vertical line at set charachter number. Useful for
" align text and easy look at strict document width. Note: It will make
" redrawing screen slower.
"
set colorcolumn=80


" Show matching bracket
"
" When a bracket is inserted, briefly jump to the matching one. The jump is
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
" be used to ser the room for the line numbber.
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
" Modelines allow a developer or user to set a specific variables to a file.
" By default, the first and last five lines are read by Vim for variable
" settings. Example when using a strict code style, you could have a mode line
" to automatically set the 'tabwidth', 'textwidth', 'softtabs' etc.
"
" Example ('textwidth' 80, 'tabstop' 4)
" /* vim: tw=80 ts=4 */
"
set modeline
set modelines=5


" Search case-smart
"
" These two options when nabled together, will make '/'-style characters
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
" commands. Using key maps you can define your own Vim commands.
"
" Shown below is keymapping for file tabs:
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


" Tabs
"
" Options for showing the tab line. The value of this option specifies when
" the line with tab page labels will be displayed.
"
"   0 = Disabled  Never
"   1 = Enabled   Only show if there are at least two tab pages (Default)
"   2 = Enabled   Always show
"
set showtabline=2


" Folding
"
" Many programming languages supports folding with it's syntax with
" 'foldmethod':
"
"   manual  = folds most be defines by entering commands (such as 'zf')
"   indent  = groups of lines with the same indent form a fold
"   syntax  = folds are defines by syntax highlightning
"   expr    = folds are defined by user-defined expression
"
"   diff    = used to fold unchanged text when viewing differences
"   marker  = spcial characters can be manually or automatically added to your
"             text to flag the start and end of folds
"
" 'foldnestmax' sets the maximum nesting folds for the 'indent' and 'syntax'
" methods. This avoids too many folds will be created; limit 20.
"
" 'foldlevel' sets the maximum fold level. Folds with a higher level will be
" closed. Higer number will close fewer folds. Settings this option to zero
" will close all folds.
"
set foldmethod=syntax
set foldnestmax=5
set foldlevel=1


" Mouse support
"
" 'mouse' enables mouse and scroll support for some terminals, such as xterm,
" osx terminal, mate-terminal etc. this makes the need of gVim much less
" necessary. This also fixes a problem with 'set numbers' where if you copied
" content from vim with the mouse it would include line numbers.
"
"   n = normal
"   v = visual-mode
"   i = insert-mode
"   c = command-line
"   h = all previous modes when editing a helpa file
"   a = all modes
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
"   filename [+=-] (path) - VIM
"
"   -   = file cannot be modified
"   +   = file was modified
"   =   = file is read-only
"   =+  = file is read-only and modified
"
set title


" Theme
"
" Customize Vim's appearence. Use 256-colored terminal, use dark  terminal
" background, use color theme lucius (found in ~.vim/colors)
"
set t_Co=256
set background=dark
colorscheme lucius


" History
"
" By default. Vim only remebers the last 20 commands and search patterns
" entered. To extend this we can use the history command to set a value.
"
set history=1000


" Interruptive prompts
"
" Using 'shortmess' it helps avoiding all the 'Press ENTER or type command to
" continue...' prompts caused" by file messages. There is a lot of
" customization with this, see all options by typing ':help shortmess'.
" Instead of failing because of unsaved changes, a dialouge will ask to save
" changes thanks to 'set confim'.
"
set shortmess=atI
set confirm


" Disable 'beeping'
"
" If there is a error, Vim will flash or beep. It gets annoying after a while,
" so let's disable it all. 'noerrorbells' will turn off the sound,
" 'novisualbell' will turn of the flashes, 't_vb' will turn off so Vim will
" never flash.
"
set noerrorbells
set novisualbell
set t_vb=


" Plugin configuration
"
let g:NERDTreeDirArrows=0
