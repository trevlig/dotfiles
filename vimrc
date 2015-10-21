
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

" I am a pirate! This file is loot, ripped in parts and pieces from all the
" .vimrc I might have come across on my many voyages of the internet.

"
" none vi compatilble
"
set nocompatible

"
" hide scrollbar
"
set guioptions-=rRlL

"
" linespace
"
set linespace=2

"
" store a ton of history
"
set history=1000

"
" reload files when changed on disk
"
set autoread

"
" UTF-8
"
set encoding=utf-8

"
" turn bell-hell off
"
set vb t_vb=

"
" don't store swapfiles in the current directory
"
set directory-=.

"
" case-insensitive search...
"
set ignorecase

"
" search as you type
"
set incsearch

"
" the /g flag on :s
"
set gdefault

"
" show where you are at
"
set ruler

"
" keep cursor in middle of screen always
"
set scrolloff=999

"
" mark column 80
"
set colorcolumn=80

"
" Configure backspace so it acts as it should act
"
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"
" show trailing whitespace and tabs
"
set list
set listchars=tab:▸\ ,trail:▫

"
" show line numbers
"
set number

"
" relative line numbers
"
set relativenumber

"
" enable syntax highlighting
"
syntax enable

"
" filetype detection
"
filetype indent on
filetype plugin on

"
" show matching brackets
"
set showmatch

"
" auto-indent
"
set autoindent

"
" expand tabs to spaces
"
set expandtab

"
" insert both tab and backspace use 4 spaces
"
set softtabstop=4

"
" actual tabs occupy 4 characters
"
set tabstop=4

"
" normal mode indention commands use 4 space
"
set shiftwidth=4

"
" dont redraw while performing macros; good performance config
"
set lazyredraw

"
"            /$$
"           | $$
"   /$$$$$$ | $$ /$$   /$$  /$$$$$$
"  /$$__  $$| $$| $$  | $$ /$$__  $$
" | $$  \ $$| $$| $$  | $$| $$  \ $$
" | $$  | $$| $$| $$  | $$| $$  | $$
" | $$$$$$$/| $$|  $$$$$$/|  $$$$$$$
" | $$____/ |__/ \______/  \____  $$
" | $$                     /$$  \ $$
" | $$                    |  $$$$$$/
" |__/                     \______/
"
" https://github.com/junegunn/vim-plug
"
" #plug
"
call plug#begin('~/.vim/plugged')

"
" set of mappings for HTML, XML, PHP, ASP, ...
"
Plug 'tpope/vim-ragtag'

"
" pairs of hany bracket mappings
"
Plug 'tpope/vim-unimpaired'

"
" color schemas
"
Plug 'jordwalke/flatlandia'
Plug 'altercation/vim-colors-solarized'

"
" ctrlp; full path fuzzy file, buffer, mru, tag, ... finder for vim
"
Plug 'kien/ctrlp.vim'

"
" a tree explorer plugin for vim.
"
Plug 'scrooloose/nerdtree'

"
" nerd commenter; allows for easy commenting of code for many filetypes
"
Plug 'scrooloose/nerdcommenter'

"
" easymotion; vim motion on speed!
"
Plug 'Lokaltog/vim-easymotion'

" ag; This plugin is a front for ag, A.K.A. the_silver_searcher.
" (Note: ag needs to be installed on your system; brew install ag)
"
Plug 'rking/ag.vim'

"
" Kwbdi; script for closing buffer but not the window.
"
Plug 'vim-scripts/kwbdi.vim'

"
" provides insert mode auto-completion for quotes, parens, brackets, etc.
"
Plug 'Raimondi/delimitMate'

"
" changes vim working directory to project root
"
Plug 'airblade/vim-rooter'

"
" syntastic is a syntax checking plugin
"
Plug 'scrooloose/syntastic'

"
" airline; lean & mean status/tabline for vim
"
Plug 'bling/vim-airline'

"
" fugitive; may very well be the best git wrapper of all time.
"
Plug 'tpope/vim-fugitive'

"
" a Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
"
Plug 'airblade/vim-gitgutter'

"
" smoot scrolling in vim (C-D, C-U)
"
Plug 'yonchu/accelerated-smooth-scroll'

"
" a code-completion engine for vim
"
Plug 'Valloric/YouCompleteMe'

"
"
"
Plug 'othree/html5.vim'

call plug#end()

"
"                                 /$$$$$$
"                                /$$__  $$
"   /$$$$$$$  /$$$$$$  /$$$$$$$ | $$  \__/
"  /$$_____/ /$$__  $$| $$__  $$| $$$$
" | $$      | $$  \ $$| $$  \ $$| $$_/
" | $$      | $$  | $$| $$  | $$| $$
" |  $$$$$$$|  $$$$$$/| $$  | $$| $$
"  \_______/ \______/ |__/  |__/|__/
"
" #conf

"
" #ag
"

"
" Use ag a.k.a 'the silver seacher for grep & ack operations
"
if executable('ag')
  " Use ag over ack
  let g:ackprg = 'ag --nogroup --column'
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag over ag :)
  let g:ag_prg='ag -S --nocolor --colum'
endif


"
" #ctrlp
"

" ctrlp will set its local working directory according to this variable: ...
" 'c' - the directory of the current file
"
let g:ctrlp_working_path_mode = 'c'
"
" .ctrlp marks root
"
let g:ctrlp_root_markers = ['.ctrlp']
"
" show hidden files when using ctrlp
"
let g:ctrlp_show_hidden = 1
"
" tweak how ctrlp presents results
"
let g:ctrlp_match_window = 'order:ttb,max:20'

"
" Use ag a.k.a 'the silver searcher' for CtrlP operations
"
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"
" #nerdtree
"

"
" show hidden files in nerd tree
"
let g:NERDTreeShowHidden=1

"
" close nerd tree when filed opened
"
let g:NERDTreeQuitOnOpen=1

"
" change root when ever current working directory is changed
"
let g:NERDTreeChDirMode=2

"
" close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
"
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

"
" #rooter
"
let g:rooter_patterns = ['.ctrlp', '.git/']
let g:rooter_disable_map = 1
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 1

"
" #syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_jump = 0
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_php_checkers = ['php']
" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args="--report=csv --standard=psr2"


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
" #keys

"
" <SPACE> as leader
"
nnoremap <SPACE> <NOP>
let mapleader=" "

"
" save us having to use shift in normal mode
"
nnoremap ; :

"
" escape normal mode with 'jj'
"
inoremap jj <ESC>

"
" disable mapping for K (man pages)
"
nmap K <nop>

"
" close buffer, keep windows
"
nmap <leader>k <Plug>Kwbd

"
" that will map Ctrl+C whilst still within insert mode
" to the line splitting command (Used in conjuncture with delimitMate).
"
imap <C-c> <CR><Esc>O

"
" write file
"
nnoremap <leader>w :w!<CR>

"
" close buffer, kill window
"
nnoremap <leader>q :close<CR>

"
" windows navigation
"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"
" tab through your tabs!
"
"imap <Tab> <Esc>:tabnext<Cr>
"imap <c-Tab> <Esc>:tabprev<Cr>
nmap <Tab> :tabnext<Cr>
nmap <c-Tab> :tabprev<Cr>

"
" ragtag
"
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1


"
" strip trailing spaces from line
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

"
" #ctrlp
"
nmap <leader>e :CtrlP<CR>
nmap <leader>E :CtrlPRoot<CR>
nmap <leader>r :CtrlPMRUFiles<CR>
nmap <leader>b :CtrlPBuffer<CR>

"
" #nerdtree
"

function! ToggleNERDTreeFind()
    if g:NERDTree.IsOpen()
        execute ':NERDTreeClose'
    else
        execute ':NERDTreeFind'
    endif
endfunction

nmap <leader>n :call ToggleNERDTreeFind()<cr>

"
" grep/ag word under cursor
"
nnoremap <leader>f :Ag!<CR>

"
"            /$$
"           |__/
"  /$$   /$$ /$$
" | $$  | $$| $$
" | $$  | $$| $$
" | $$  | $$| $$
" |  $$$$$$/| $$
" \______/ |__/
"
" #ui

"
" automatically rebalance windows on vim resize
"
autocmd VimResized * :wincmd =

"
" font
"
if has("gui_running")
    if has("gui_macvim")
        set guifont=Input\ Mono:h12
    endif
endif

"
" colorschemes
"
color flatlandia
set background=dark

"
" modify colors syntastic uses to show errors
"
hi SpellRare  ctermfg=016 ctermbg=NONE guibg=#aa2915 guifg=#f8f8f8 guisp=NONE gui=NONE
hi SpellCap   ctermfg=016 ctermbg=NONE guibg=#aa2915 guifg=#f8f8f8 guisp=NONE gui=NONE
hi SpellBad   ctermfg=016 ctermbg=NONE guibg=#aa2915 guifg=#f8f8f8 guisp=NONE gui=NONE
hi SpellBad   ctermfg=016 ctermbg=NONE guibg=#aa2915 guifg=#f8f8f8 guisp=NONE gui=NONE
hi Error      ctermfg=016 ctermbg=NONE guibg=#aa2915 guifg=#f8f8f8 guisp=NONE gui=NONE

"
" airline symbols
"

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"
" display airline properly
"
set laststatus=2

