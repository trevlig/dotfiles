"              /$$
"             |__/
"   /$$    /$$ /$$ /$$$$$$/$$$$
"  |  $$  /$$/| $$| $$_  $$_  $$
"   \  $$/$$/ | $$| $$ \ $$ \ $$
"    \  $$$/  | $$| $$ | $$ | $$
"     \  $/   | $$| $$ | $$ | $$
"      \_/    |__/|__/ |__/ |__/
"
"
"
" I am a pirate! This file is loot, ripped in parts and pieces from all the
" .vimrc I might have come across on my many voyages of the internet.
"
" NEOVIM VERSION
"

"
" @GENERAL
"

" Vim, not vi
"
set nocompatible


" Store more history
"
set history=1000


" Ignore case when searching (e.g. /FooBAR -> /foobar)
"
set ignorecase


" Search as you type
"
set incsearch


" Set the substitute 'g' (global) flag to be on, per default
"
set gdefault


"
"    /$$$$$$  /$$ /$$
"   /$$__  $$|__/| $$
"  | $$  \__/ /$$| $$  /$$$$$$   /$$$$$$$
"  | $$$$    | $$| $$ /$$__  $$ /$$_____/
"  | $$_/    | $$| $$| $$$$$$$$|  $$$$$$
"  | $$      | $$| $$| $$_____/ \____  $$
"  | $$      | $$| $$|  $$$$$$$ /$$$$$$$/
"  |__/      |__/|__/ \_______/|_______/
"
"
" @FILE
"

" Reload file if it has been detected to have been changed outside of vim.
"
set autoread


" DO NOT make a backup before overwriting a file (and keep it)
"
set nobackup


" DO NOT make a backup before overwriting a file (and delete it on success).
"
set nowritebackup


" DO NOT store the things you changed in a swap file.
"
set noswapfile


" DO NOT store swapfiles in current directory
"
set directory-=.


"
"        /$$ /$$                     /$$
"       | $$|__/                    | $$
"   /$$$$$$$ /$$  /$$$$$$$  /$$$$$$ | $$  /$$$$$$  /$$   /$$
"  /$$__  $$| $$ /$$_____/ /$$__  $$| $$ |____  $$| $$  | $$
" | $$  | $$| $$|  $$$$$$ | $$  \ $$| $$  /$$$$$$$| $$  | $$
" | $$  | $$| $$ \____  $$| $$  | $$| $$ /$$__  $$| $$  | $$
" |  $$$$$$$| $$ /$$$$$$$/| $$$$$$$/| $$|  $$$$$$$|  $$$$$$$
"  \_______/|__/|_______/ | $$____/ |__/ \_______/ \____  $$
"                         | $$                     /$$  | $$
"                         | $$                    |  $$$$$$/
"                         |__/                     \______/
"
" @DISPLAY
"

" No beeping, or visual bell(-hell)
"
set vb t_vb=


" Automatically rebalance windows on vim resize
"
autocmd VimResized * :wincmd =


" Show trailing whitespace and tabs
"
set list
set listchars=tab:▸\ ,trail:▫


" Show matching brackets
"
set showmatch


" Wrap lines
"
set wrap


" Show line numbers
"
" set number


" Show relative line numbers
"
" set relativenumber


" Mark column 80
"
" set colorcolumn=80


"
"    /$$               /$$
"   | $$              | $$
"  /$$$$$$    /$$$$$$ | $$$$$$$   /$$$$$$$
" |_  $$_/   |____  $$| $$__  $$ /$$_____/
"   | $$      /$$$$$$$| $$  \ $$|  $$$$$$
"   | $$ /$$ /$$__  $$| $$  | $$ \____  $$
"   |  $$$$/|  $$$$$$$| $$$$$$$/ /$$$$$$$/
"    \___/   \_______/|_______/ |_______/
"
"
" @TABS
"
" default tab settings
"

" Filetype detection
"
filetype indent on


" Copy the indent from the previous line
"
set autoindent


" Automatically insert one level of indent (in some cases)
"
set smartindent


" Expand tabs to spaces
"
set expandtab


" Insert both tab and backspace use 4 spaces
"
set softtabstop=4


" Actual tabs occupy 4 characters
"
set tabstop=4


" Normal mode indention commands use 4 space
"
set shiftwidth=4


" Round indent to nearest shiftwidth multiple
"
set shiftround


"
"             /$$                     /$$
"            | $$                    |__/
"    /$$$$$$ | $$ /$$   /$$  /$$$$$$  /$$ /$$$$$$$   /$$$$$$$
"   /$$__  $$| $$| $$  | $$ /$$__  $$| $$| $$__  $$ /$$_____/
"  | $$  \ $$| $$| $$  | $$| $$  \ $$| $$| $$  \ $$|  $$$$$$
"  | $$  | $$| $$| $$  | $$| $$  | $$| $$| $$  | $$ \____  $$
"  | $$$$$$$/| $$|  $$$$$$/|  $$$$$$$| $$| $$  | $$ /$$$$$$$/
"  | $$____/ |__/ \______/  \____  $$|__/|__/  |__/|_______/
"  | $$                     /$$  \ $$
"  | $$                    |  $$$$$$/
"  |__/                     \______/
"
" https://github.com/junegunn/vim-plug
"
" @PLUGINS
"


" Filetype detection
"
filetype plugin on


" Load
"
call plug#begin('~/.config/nvim/plugged')


" Syntastic is a syntax checking plugin
"
" https://github.com/scrooloose/syntastic
"
Plug 'scrooloose/syntastic'


" Shows a git diff in the gutter (sign column) and stages/reverts hunks.
"
" https://github.com/airblade/vim-gitgutter
"
Plug 'airblade/vim-gitgutter'


" Nerd commenter; allows for easy commenting of code for many filetypes
"
" https://github.com/scrooloose/nerdcommenter
"
Plug 'scrooloose/nerdcommenter'


" Airline; lean & mean status/tabline for vim
"
" https://github.com/bling/vim-airline
"
Plug 'bling/vim-airline'


" Vim plugin for Haskell development powered by the lightnight fast hdevtools
" background server.
"
" $ cabal install hdevtools
"
" https://github.com/bitc/vim-hdevtools
"
Plug 'bitc/vim-hdevtools'


" Vim plugin used to query hoogle, the haskell search engine
"
Plug 'Twinside/vim-hoogle'


" End load
"
call plug#end()


"                                  /$$$$$$  /$$
"                                 /$$__  $$|__/
"    /$$$$$$$  /$$$$$$  /$$$$$$$ | $$  \__/ /$$  /$$$$$$
"   /$$_____/ /$$__  $$| $$__  $$| $$$$    | $$ /$$__  $$
"  | $$      | $$  \ $$| $$  \ $$| $$_/    | $$| $$  \ $$
"  | $$      | $$  | $$| $$  | $$| $$      | $$| $$  | $$
"  |  $$$$$$$|  $$$$$$/| $$  | $$| $$      | $$|  $$$$$$$
"   \_______/ \______/ |__/  |__/|__/      |__/ \____  $$
"                                               /$$  \ $$
"                                              |  $$$$$$/
"                                               \______/
" @CONFIG
"

"
" @CONFIG @AIRLINE
"

let g:airline_theme = 'wombat'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" Hide symbols not supported by font
"
let g:airline_left_sep              = ''
let g:airline_right_sep             = ''
let g:airline_symbols.linenr        = ''
let g:airline_symbols.branch        = '⎇'
let g:airline_symbols.paste         = '∥'
let g:airline_symbols.whitespace    = 'Ξ'


" Show airline tabline
"
let g:airline#extensions#tabline#enabled    = 1
let g:airline#extensions#tabline#fnamemod   = ':t'

"
"            /$$
"           | $$
"   /$$$$$$ | $$$$$$$   /$$$$$$
"  /$$__  $$| $$__  $$ /$$__  $$
" | $$  \ $$| $$  \ $$| $$  \ $$
" | $$  | $$| $$  | $$| $$  | $$
" | $$$$$$$/| $$  | $$| $$$$$$$/
" | $$____/ |__/  |__/| $$____/
" | $$                | $$
" | $$                | $$
" |__/                |__/
"
" @PHP
"

"
" @PHP @SYNTASTIC
"

let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args="--report=csv --standard=psr2"

"
"        /$$  /$$$$$$$
"       |__/ /$$_____/
"        /$$|  $$$$$$
"       | $$ \____  $$
"       | $$ /$$$$$$$/
"       | $$|_______/
"  /$$  | $$
" |  $$$$$$/
"  \______/
"
" @JAVASCRIPT
"

" Javascript indention
"
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2


"
"   /$$                           /$$                 /$$ /$$
"  | $$                          | $$                | $$| $$
"  | $$$$$$$   /$$$$$$   /$$$$$$$| $$   /$$  /$$$$$$ | $$| $$
"  | $$__  $$ |____  $$ /$$_____/| $$  /$$/ /$$__  $$| $$| $$
"  | $$  \ $$  /$$$$$$$|  $$$$$$ | $$$$$$/ | $$$$$$$$| $$| $$
"  | $$  | $$ /$$__  $$ \____  $$| $$_  $$ | $$_____/| $$| $$
"  | $$  | $$|  $$$$$$$ /$$$$$$$/| $$ \  $$|  $$$$$$$| $$| $$
"  |__/  |__/ \_______/|_______/ |__/  \__/ \_______/|__/|__/
"
" @HASKELL
"

" Haskell indention
"
autocmd FileType haskell setlocal tabstop=2 softtabstop=2 shiftwidth=2


"
" @HASKELL @HDEVTOOLS
"


" Show type of expression
"
au Filetype haskell nnoremap <buffer> <leader>ht :HdevtoolsType<CR>


" Clear type of expression
"
au Filetype haskell nnoremap <buffer> <silent> <leader>hT :HdevtoolsClear<CR>


"
" @HASKELL @HDEVTOOLS @SYNTASTIC
"


let g:syntastic_haskell_hdevtools_args = '-g-Wall'
let g:syntastic_haskell_checkers = ['hdevtools']


"
" @HASKELL @HOOGLE
"


" Hoogle the word under the cursor
"
au Filetype haskell nnoremap <silent> <leader>hh :Hoogle<CR>


" Hoogle and prompt for input
"
au Filetype haskell nnoremap <leader>hH :Hoogle


" Hoogle for detailed documentation (e.g. "Functor")
"
au Filetype haskell nnoremap <silent> <leader>hi :HoogleInfo<CR>


" Hoogle for detailed documentation and prompt for input
"
au Filetype haskell nnoremap <leader>hI :HoogleInfo


" Hoogle, close the Hoogle window
"
au Filetype haskell nnoremap <silent> <leader>hz :HoogleClose<CR>


"
" @HASKELL @MISC
"

" Insert module section --s
"
let s:width = 80

function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")

    return  repeat('-', s:width) . "\n"
    \       . "--  " . name . "\n"
    \       . "\n"

endfunction

nmap <silent> --s "=HaskellModuleSection()<CR>gp


" Insert module header --h
"
function! HaskellModuleHeader(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
    let note = 1 < a:0 ? a:2 : inputdialog("Note: ")
    let description = 2 < a:0 ? a:3 : inputdialog("Describe this module: ")

    return  repeat('-', s:width) . "\n"
    \       . "-- | \n"
    \       . "-- Module      : " . name . "\n"
    \       . "-- Note        : " . note . "\n"
    \       . "-- \n"
    \       . "-- " . description . "\n"
    \       . "-- \n"
    \       . repeat('-', s:width) . "\n"
    \       . "\n"

endfunction

nmap <silent> --h "=HaskellModuleHeader()<CR>:0put =<CR>


"
"  /$$
" | $$
" | $$   /$$  /$$$$$$  /$$   /$$  /$$$$$$$
" | $$  /$$/ /$$__  $$| $$  | $$ /$$_____/
" | $$$$$$/ | $$$$$$$$| $$  | $$|  $$$$$$
" | $$_  $$ | $$_____/| $$  | $$ \____  $$
" | $$ \  $$|  $$$$$$$|  $$$$$$$ /$$$$$$$/
" |__/  \__/ \_______/ \____  $$|_______/
"                      /$$  | $$
"                     |  $$$$$$/
"                      \______/
"
" @KEYS
"

" Move around windows using CTRL
"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"
" @KEYS @INSERT MODE
"


" Escape to normal mode with 'jj'
"
inoremap jj <ESC>


"
" @KEYS @NORMAL
"


" disable mapping for K (man pages)
"
nmap K <nop>


" <SPACE> is leader
"
nnoremap <SPACE> <NOP>
let mapleader=" "


" Save us having to use shift in normal mode
"
nnoremap ; :


" Close window
"
"nnoremap <leader>q :close<CR>
nnoremap <leader>q :q!<CR>


" Close buffer
"
nnoremap <leader>d :bd<CR>


" Write file
"
nnoremap <leader>w :w!<CR>


" Strip trailing spaces from line
"
function! Strip_trailing()
  let previous_search=@/
  let previous_cursor_line=line('.')
  let previous_cursor_column=col('.')
  %s/\s\+$//e
  let @/=previous_search
  call cursor(previous_cursor_line, previous_cursor_column)
endfunction

nnoremap <leader>s :call Strip_trailing()<CR>


" Treat long lines as break lines (useful when moving around in them)
"
nnoremap j gj
nnoremap k gk


" Tab through buffers
"
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>


"
" @KEYS @TERMINAL
"


" Escape to normal mode with 'jj'
"
tnoremap jj <C-\><C-n>


"
" @KEYS @VISUAL
"


" visual mode pressing * or # searches for the current selection
"
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>


"
"    /$$$$$$  /$$
"   /$$__  $$|__/
"  | $$  \__/ /$$ /$$   /$$  /$$$$$$   /$$$$$$$
"  | $$$$    | $$|  $$ /$$/ /$$__  $$ /$$_____/
"  | $$_/    | $$ \  $$$$/ | $$$$$$$$|  $$$$$$
"  | $$      | $$  >$$  $$ | $$_____/ \____  $$
"  | $$      | $$ /$$/\  $$|  $$$$$$$ /$$$$$$$/
"  |__/      |__/|__/  \__/ \_______/|_______/
"
" Various fixes and overrides to make vim work as you whish
"
" @FIXES
"

" DO NOT use syntax highlight
"
syntax off


" Fix backspace (on some systems)
"
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Split is white
"
hi VertSplit ctermfg=015 ctermbg=015 guibg=NONE guifg=NONE guisp=NONE gui=NONE

