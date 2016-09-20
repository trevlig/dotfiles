"
"                                            /$$
"                                           | $$
"   /$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$$$$$
"  /$$__  $$ /$$__  $$ /$$_____/ /$$__  $$|_  $$_/
" | $$  \__/| $$$$$$$$|  $$$$$$ | $$$$$$$$  | $$
" | $$      | $$_____/ \____  $$| $$_____/  | $$ /$$
" | $$      |  $$$$$$$ /$$$$$$$/|  $$$$$$$  |  $$$$/
" |__/       \_______/|_______/  \_______/   \___/
"
" vim basic settings
"
" vim, not vi
set nocompatible
" updatetime
set updatetime=250
" store more history
set history=1000
" case insensitive search
set ignorecase
" search as you type
set incsearch
" do not hightlight after search
" set nohlsearch
" search again from the top when reached the bottom
set wrapscan
" set the substitute 'g' (global) flag to be on, per default
set gdefault
" Reload file if it has been detected to have been changed outside of vim.
set autoread
" DO NOT make a backup before overwriting a file (and keep it)
set nobackup
" DO NOT make a backup before overwriting a file (and delete it on success).
set nowritebackup
" DO NOT store the things you changed in a swap file.
set noswapfile
" DO NOT store swapfiles in current directory
set directory-=.
" no beeping, or visual bell(-hell)
set vb t_vb=
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" show trailing whitespace and tabs
set list
" set listchars=tab:▸\ ,trail:▫
set listchars=tab:▸\ ,trail:\ "
" show matching brackets
set showmatch
" wrap lines
set wrap
" always keep one line visible above and below the cursor
if !&scrolloff
  set scrolloff=1
endif
" when lastline is included, as much as possible of the last line in a window
" will be displayed. when not included, alast line that doesn't fit is
" replaced with "@" lines.
set display+=lastline
" fix backspace (on some systems)
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" filetype detection
filetype indent on
" copy the indent from the previous line
set autoindent
" automatically insert one level of indent (in some cases)
set smartindent
" expand tabs to spaces
set expandtab
" insert both tab and backspace use 4 spaces
set softtabstop=4
" actual tabs occupy 4 characters
set tabstop=4
" normal mode indention commands use 4 space
set shiftwidth=4
" round indent to nearest shiftwidth multiple
set shiftround
" detect filetype and load plugins
filetype plugin on
