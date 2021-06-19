" ===========================
" === Indentation Options ===
" ===========================
set autoindent                      " New lines inherit the indentation of previous lines
set noexpandtab                     " Not convert tabs to spaces
filetype indent on                  " Enable indentation rules that are file-type specific
set shiftround                      " When shifting lines, round the indentation to the nearest multiple of "shiftwidth"
set smarttab                        " Insert "tabstop" number of spaces when the "tab" key is pressed
set tabstop=4                       " Indent using four spaces
set shiftwidth=4                    " Change the number of space character inserted for indentation
set softtabstop=4


" ======================
" === Search Options ===
" ======================
set hlsearch                        " Enable search highlighting
exec "nohlsearch"
set incsearch                       " Incremental search that shows partial matches
set ignorecase                      " Ignore case when searching
set smartcase                       " Automatically switch search to case-sensitive when search query contains an uppercase letter


" ===========================
" === Performance Options ===
" ===========================
set complete-=i
set lazyredraw


" ==============================
" === Text Rendering Options ===
" ==============================
set display+=lastline               " Always try to show a paragraph's last line
set encoding=utf-8                  " Use an encoding that supports unicode
set fileencoding=utf-8
set scrolloff=5                     " The number of screen lines to keep above and below the cursor
set sidescroll=5                    " The number of screen columns to keep to the left and right of the cursor
syntax enable                       " Enable syntax highlighting
syntax on
set wrap                            " Enable line wrapping
set colorcolumn=80
set updatetime=100
set list
set listchars=tab:\|\ ,trail:▫


" ==============================
" === User Interface Options ===
" ==============================
set laststatus=2                    " Always display the status bar
set ruler                           " Show the cursor position all the time
set noshowmode                      " We don't need to see things like -- INSERT -- anymore
set showcmd                         " Display incomplete commands
set wildmenu                        " Display command line's tab complete options as a menu
set cursorline                      " Highlight the line currently under cursor
set number                          " Show line numbers on the sidebar
set relativenumber                  " Show line number on the current line and relative numbers on all other lines
set showmatch
set mouse-=a                        " Disable mouse for scrolling and resizing
set clipboard=unnamedplus           " Copy Paste between vim and everything else
"set title                          " Set the window's title, reflecting the file currently being edited
set background=dark                 " tell vim what the background color looks like
set termguicolors
set t_Co=256                        " Support 256 colors


" ============================
" === Code Folding Options ===
" ============================
set foldmethod=indent               " Fold based on indention levels
set foldnestmax=3                   " Only fold up to three nested levels
set nofoldenable                    " Disable folding by default


" =============================
" === Miscellaneous Options ===
" =============================
set autoread                        " Automatically re-read files if unmodified inside Vim
set backspace=indent,eol,start      " Allow backspacing over indention, line breaks and insertion start
set hidden                          " Required to keep multiple buffers open multiple buffers
set autochdir                       " Your working directory will always be the same as your working directory
set viewoptions=cursor,folds,slash,unix
"set noswapfile                        " Disable swap files
"set spell                           " Enable spell checking
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persisten_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif


