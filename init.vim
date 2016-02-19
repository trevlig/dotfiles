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

"
" keymap
"
" `jj` (or <ESC>) to escape into normal mode
"
" in normal mode
"
" `<space>d` to kill buffer
" `<space>e` to find a file
" `<space>f` to find a line in the current buffer
" `<space>b` to show list of buffers
" `<space>q` to quite/close window
" `<space>s` to remove trailing spaces
" `<space>w` to write the current buffer to file
"
" `<TAB>` to show next buffer
" `<Shift-Tab> to show previous buffer
"
" Haskell
"
" `<space>hh` to hoogle word under cursor
" `<space>hH` to hoogle
" `<space>hi` to hoogle word under cursor for detailed information
" `<space>hI` to hoogle for detailed information
"
" `<space>hz` to close any hoogle window
"
" `<space>ht` to show type info for exp under cursor
" `<space>hT` to clear type info

"" @VIM

"" vim, not vi

set nocompatible

"" updatetime

set updatetime=250

"" store more history

set history=1000

"" ignore case when searching (e.g. /FooBAR -> /foobar)

set ignorecase

"" search as you type

set incsearch

"" set the substitute 'g' (global) flag to be on, per default

set gdefault

"" Reload file if it has been detected to have been changed outside of vim.

set autoread

"" DO NOT make a backup before overwriting a file (and keep it)

set nobackup

"" DO NOT make a backup before overwriting a file (and delete it on success).

set nowritebackup

"" DO NOT store the things you changed in a swap file.

set noswapfile

"" DO NOT store swapfiles in current directory

set directory-=.

"" no beeping, or visual bell(-hell)

set vb t_vb=

"" automatically rebalance windows on vim resize

autocmd VimResized * :wincmd =

"" show trailing whitespace and tabs

set list
set listchars=tab:▸\ ,trail:▫

"" show matching brackets

set showmatch

"" wrap lines

set wrap

"" show line numbers

" set number

"" show relative line numbers

" set relativenumber

"" mark column 80

" set colorcolumn=80

"" mark more than just one column
" let &colorcolumn=join(range(81,999),",")

"" set color of the highlighted column(s)
" highlight ColorColumn ctermbg=230


"" always keep one line visible above and below the cursor

if !&scrolloff
  set scrolloff=1
endif

"" when lastline is included, as much as possible of the last line in a window
"" will be displayed. when not included, alast line that doesn't fit is
"" replaced with "@" lines.

set display+=lastline

"" filetype detection

filetype indent on

"" copy the indent from the previous line

set autoindent

"" automatically insert one level of indent (in some cases)

set smartindent

"" expand tabs to spaces

set expandtab

"" insert both tab and backspace use 4 spaces

set softtabstop=4

"" actual tabs occupy 4 characters

set tabstop=4

"" normal mode indention commands use 4 space

set shiftwidth=4

"" round indent to nearest shiftwidth multiple

set shiftround

"" detect filetype and load plugins

filetype plugin on

"
"" @PLUGINS
"
"" https://github.com/junegunn/vim-plug
"
call plug#begin('~/.config/nvim/plugged')

Plug 'bitc/vim-hdevtools'

Plug 'Twinside/vim-hoogle'

" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'

" Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" Vim motions on speed!
Plug 'easymotion/vim-easymotion'

" Highlight the flooding part of an overly long line.
Plug 'whatyouhide/vim-lengthmatters'

" Delete buffers and close files in Vim without closing your windows
Plug 'moll/vim-bbye'

" A light and configurable statusline/tabline for Vim
Plug 'itchyny/lightline.vim'

" Simplified clipboard functionality for Vim
Plug 'svermeulen/vim-easyclip'

" Dark powered asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim'

" A Vim plugin which shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter'

" Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Quoting/Parenthesizing made simple
Plug 'tpope/vim-surround'

"Plug 'pangloss/vim-javascript'

" A command-line fuzzy finder written in Go
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Things you can do with fzf and Vim
Plug 'junegunn/fzf.vim'

" Git commit browser
Plug 'junegunn/gv.vim'

" Pseudo-command-line (experimental, required by vim-oblique)
Plug 'junegunn/vim-pseudocl'

" Improved /-search (experimental)
Plug 'junegunn/vim-oblique'

call plug#end()

"" @LENGTHMATTERS

call lengthmatters#highlight('ctermbg=230 ctermfg=0')

"" @DEOPLETE

" Use deoplete.

let g:deoplete#enable_at_startup = 1

" <TAB> completion

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"" @AIRLINE

"" theme

let g:airline_theme = 'wombat'

"" hide symbols not supported by font

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep              = ''
let g:airline_right_sep             = ''
let g:airline_symbols.linenr        = ''
let g:airline_symbols.branch        = '⎇'
let g:airline_symbols.paste         = '∥'
let g:airline_symbols.whitespace    = 'Ξ'

"" show airline tabline

let g:airline#extensions#tabline#enabled    = 1
let g:airline#extensions#tabline#fnamemod   = ':t'

"" @SYNTASTIC

let g:syntastic_check_on_open = 1

"" @PHP

"" config syntastic for php

let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args="--report=csv --standard=psr2"

"" @HANDLEBARS

autocmd BufNewFile,BufRead *.handlebars,*.hbs set filetype=html.handlebars
autocmd FileType html.handlebars setlocal tabstop=2 softtabstop=2 shiftwidth=2

"" @JAVASCRIPT

"" set indention for javascript

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 syntax=off

autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2 syntax=off

"autocmd FileType javascript set syntax=on

"" set syntastic options

let g:syntastic_javascript_checkers = ['jshint']

"" @HASKELL

"" set indention for haskell

autocmd FileType haskell setlocal tabstop=2 softtabstop=2 shiftwidth=2

"" #key - show type of exp. under cursor (hdevtools)

au Filetype haskell nnoremap <buffer> <leader>ht :HdevtoolsType<CR>

"" #key - clear display of type (hdevtools)

au Filetype haskell nnoremap <buffer> <silent> <leader>hT :HdevtoolsClear<CR>

"" config syntastic for haskell

let g:syntastic_haskell_hdevtools_args = '-g-Wall'
let g:syntastic_haskell_checkers = ['hdevtools']

"" #key - hoogle the word under the cursor (hoogle)

au Filetype haskell nnoremap <silent> <leader>hh :Hoogle<CR>

"" #key - hoogle and prompt for input (hoogle)

au Filetype haskell nnoremap <leader>hH :Hoogle

"" #key - hoogle for detailed documentation (e.g. "Functor")

au Filetype haskell nnoremap <silent> <leader>hi :HoogleInfo<CR>

"" #key - hoogle for detailed documentation and prompt for input

au Filetype haskell nnoremap <leader>hI :HoogleInfo

"" #key - hoogle, close the Hoogle window

au Filetype haskell nnoremap <silent> <leader>hz :HoogleClose<CR>

"" #key - insert module section (--s)

let s:width = 80

function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")

    return  repeat('-', s:width) . "\n"
    \       . "--  " . name . "\n"
    \       . "\n"

endfunction

nmap <silent> --s "=HaskellModuleSection()<CR>gp

"" #key - insert module header (--h)

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

"" @KEYS

"" #key - move around windows using CTRL

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"" #key - escape to normal mode with 'jj'

inoremap jj <ESC>

"" #key - disable mapping for K (man pages)

nmap K <nop>

"" #key - <SPACE> is <leader>

nnoremap <SPACE> <NOP>
let mapleader=" "

"" #key - save us having to use shift in normal mode

nnoremap ; :

"" #key - close window

nnoremap <leader>q :q!<CR>

"" #key - close buffer

nnoremap <leader>d :Bdelete<CR>

"" #key - write file

nnoremap <leader>w :w!<CR>

"" #key - strip trailing spaces from line

function! Strip_trailing()
  let previous_search=@/
  let previous_cursor_line=line('.')
  let previous_cursor_column=col('.')
  %s/\s\+$//e
  let @/=previous_search
  call cursor(previous_cursor_line, previous_cursor_column)
endfunction

nnoremap <leader>s :call Strip_trailing()<CR>

"" #key - treat long lines as break lines (useful when moving around in them)

nnoremap j gj
nnoremap k gk

"" #key - tab through buffers

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>

"" #key - fzf

nnoremap <leader>e :Files<CR>
nnoremap <leader>f :BLines<CR>
nnoremap <leader>b :Buffers<CR>

"" #key - escape to normal mode with 'jj' (from terminal mode, neovim)

tnoremap jj <C-\><C-n>

"" #key - visual mode pressing * or # searches for the current selection

vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

"" @FIXES

"" DO NOT use syntax highlight

syntax manual

"" fix backspace (on some systems)

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"" split is white

hi VertSplit ctermfg=015 ctermbg=015 guibg=NONE guifg=NONE guisp=NONE gui=NONE

"" handlebars and html + syntastic does not play well

let syntastic_mode_map = { 'passive_filetypes': ['html'] }
