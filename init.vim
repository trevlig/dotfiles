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
" >> USE
"
" `jj` (or <ESC>) to escape into normal mode
"
" in normal mode
"
" `<space>e` to find a file
" `<space>b` to show list of buffers
" `<space>d` to kill buffer
" `<space>q` to quite/close window
" `<space>w` to write the current buffer to file
" `<space>f` to find a line in the current buffer
" `<space>s` to remove trailing spaces
"

"
" >> VIM BASIC CONFIG
"

" vim, not vi
set nocompatible

" updatetime
set updatetime=250

" store more history
set history=1000

" ignore case when searching (e.g. /FooBAR -> /foobar)
set ignorecase

" search as you type
set incsearch

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
set listchars=tab:▸\ ,trail:▫

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

"
" >> PLUG START
"
" https://github.com/junegunn/vim-plug
"
call plug#begin('~/.config/nvim/plugged')

" dark powered asynchronous completion framework for neovim
"
" > pip3 install neovim
"
Plug 'Shougo/deoplete.nvim'

" syntax checking hacks for vim
Plug 'scrooloose/syntastic'

" vim motions on speed!
Plug 'easymotion/vim-easymotion'

" a light and configurable statusline/tabline for Vim
Plug 'itchyny/lightline.vim'

" GIT -> git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" GIT -> a vim plugin which shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter'

" simplified clipboard functionality for Vim
Plug 'svermeulen/vim-easyclip'

" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" comment stuff out
Plug 'tpope/vim-commentary'

" delete buffers and close files in Vim without closing your windows
Plug 'moll/vim-bbye'

" highlight the flooding part of an overly long line.
Plug 'whatyouhide/vim-lengthmatters'

" quoting/Parenthesizing made simple
Plug 'tpope/vim-surround'

" GIT -> Git commit browser
Plug 'junegunn/gv.vim'

" a command-line fuzzy finder written in Go
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" things you can do with fzf and Vim
Plug 'junegunn/fzf.vim'

call plug#end()

" << PLUG END

" >> DEOPLETE <<

let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" >> LENGTH MATTERS <<

call lengthmatters#highlight('ctermbg=230 ctermfg=0')

" >> SYNTASTIC <<

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" >> PHP <<

let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args="--report=csv --standard=psr2"

" >> HANDLEBARS <<

autocmd BufNewFile,BufRead *.handlebars,*.hbs set filetype=html.handlebars
autocmd FileType html.handlebars setlocal tabstop=2 softtabstop=2 shiftwidth=2

" handlebars and html + syntastic does not play well
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" >> JAVASCRIPT <<

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 syntax=off
autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2 syntax=off

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" >> KEYS <<

" switch window by CTRL + vim movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" escape insert to normal mode with 'jj'
inoremap jj <ESC>

" escape terminal mode to normal mode with 'jj'
tnoremap jj <C-\><C-n>

" disable mapping for K (man pages)
nmap K <nop>

" <SPACE> is <leader>
nnoremap <SPACE> <NOP>
let mapleader=" "

"" save us having to use shift in normal mode
nnoremap ; :
vnoremap ; :

" close window with <SPACE>q
nnoremap <leader>q :q!<CR>

" close buffer with <SPACE>d
nnoremap <leader>d :Bdelete<CR>

" write buffer to file with <SPACE>w
nnoremap <leader>w :w!<CR>

" strip trailing spaces from all buffer lines with <SPACE>s
function! Strip_trailing()
  let previous_search=@/
  let previous_cursor_line=line('.')
  let previous_cursor_column=col('.')
  %s/\s\+$//e
  let @/=previous_search
  call cursor(previous_cursor_line, previous_cursor_column)
endfunction
nnoremap <leader>s :call Strip_trailing()<CR>

" treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

" fzf
nnoremap <leader>e :Files<CR>
nnoremap <leader>f :BLines<CR>
nnoremap <leader>b :Buffers<CR>

" visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" >> VARIOUS FIXES

" DO NOT use syntax highlight
syntax manual

" fix backspace (on some systems)
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"" split is white
hi VertSplit ctermfg=015 ctermbg=015 guibg=NONE guifg=NONE guisp=NONE gui=NONE

