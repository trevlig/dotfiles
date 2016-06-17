" =============================================================================
" 0. install
"
" > brew tap neovim/neovim && brew install --HEAD neovim
" > pip3 install neovim
" > npm install -g eslint
" > npm install -g eslint_d
" =============================================================================
" =============================================================================
" A. Plugin manager
"
" https://github.com/junegunn/vim-plug
" =============================================================================
" auto-install
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" =============================================================================
" B. Plugins
" =============================================================================
call plug#begin('~/.config/nvim/plugged')
" completion for neovim
Plug 'Shougo/deoplete.nvim'
" syntax checking
Plug 'scrooloose/syntastic'
" easier motions
" Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
" status line
Plug 'itchyny/lightline.vim'
" work with words
Plug 'tpope/vim-abolish'
" git wrapper
Plug 'tpope/vim-fugitive'
" git gutter
Plug 'airblade/vim-gitgutter'
" simplified clipboard (using m instead of d for cut)
Plug 'svermeulen/vim-easyclip'
" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'
" comments
Plug 'tpope/vim-commentary'
" highlight characters past 80 column
Plug 'whatyouhide/vim-lengthmatters'
" quoting/parenthesizing
Plug 'tpope/vim-surround'
" git commit browser (:GV)
Plug 'junegunn/gv.vim'
" a command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" fzf in vim
Plug 'junegunn/fzf.vim'
" auto close parentheses
Plug 'cohama/lexima.vim'
" easy alignment
Plug 'godlygeek/tabular', { 'on':  'Tabularize' }
" edit in isolation
Plug 'ferranpm/vim-isolate', { 'on':  ['Isolate', 'UnIsolate'] }
" copying to the system clipboard with text-objects and motions (cpiw, cpi'
" , cP, cv)
Plug 'christoomey/vim-system-copy'
" star improved
Plug 'ironhouzi/vim-stim'
" close buffers and windows
Plug 'mhinz/vim-sayonara'
" alternative to ack.vim
Plug 'dyng/ctrlsf.vim'
" Snippet support (C-j)
Plug 'SirVer/ultisnips'
" Snippet collection
Plug 'honza/vim-snippets'
" === JS ===
" js syntax
Plug 'jelera/vim-javascript-syntax'
" js libs syntax (react, angular)
Plug 'othree/javascript-libraries-syntax.vim'
" jsx syntax (needs vim-javascript for indentation)
Plug 'mxw/vim-jsx' | Plug 'pangloss/vim-javascript'
" " typescript syntax
Plug 'leafgarland/typescript-vim'
" json syntax
Plug 'sheerun/vim-json'
" === HTML/CSS ====
" html5 syntax
Plug 'othree/html5.vim'
" scss syntax
Plug 'cakebaker/scss-syntax.vim'
call plug#end()
"===============================================================================
" plugin configurations
"===============================================================================
" easymotion
" let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" let g:EasyMotion_smartcase = 1
" sneak
" let g:sneak#streak = 1
" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_buffer_path = 1
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#auto_complete_delay = 50
let g:deoplete#enable_smart_case = 1
inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" syntastic
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args="--report=csv --standard=psr2"
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
" lengthmatters
call lengthmatters#highlight('ctermbg=1 ctermfg=231')
let g:lengthmatters_start_at_column = 81
let g:lengthmatters_use_textwidth = 0
" lightline
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left': [
    \       [ 'mode' ], [ 'fugitive', 'filename', 'modified' ]
    \   ], 'right': [ ['lineinfo'] ]
    \ },
    \ 'inactive': {
    \   'left': [
    \       ['filename']
    \   ], 'right': [ ['lineinfo'] ]
    \ }
\ }
" ultisnips
" disable built-in cx-ck to be able to go backward
inoremap <C-x><C-k> <NOP>
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsListSnippets='<C-l>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
"===============================================================================
" keyboard shortcuts
"===============================================================================
" escape to normal mode with 'jj' or 'jk'
inoremap jj <ESC>
tnoremap jj <C-\><C-n>
inoremap jk <ESC>
tnoremap jk <C-\><C-n>
" <SPACE> is <leader>
nnoremap <SPACE> <NOP>
let mapleader=" "
" write buffer to file with <SPACE>w
nnoremap <leader>w :w!<CR>
" close window with <SPACE>q
nnoremap <leader>q :q!<CR>
" close buffer with <SPACE>d
nnoremap <leader>d :Sayonara!<CR>
" save us having to use shift in normal mode
" nnoremap ; :
" vnoremap ; :
" switch window by CTRL + vim movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>
" treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk
" disable mapping for K (man pages)
nmap K <nop>
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
" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv
" " Move visual block
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv
" Keep the cursor in place while joining lines
nnoremap J mzJ`z
" Split line (sister to Join lines) S is covered by cc.
nnoremap S mzi<CR><ESC>`z
" fzf
nnoremap <leader>e :Files<CR>
nnoremap <leader>f :BLines<CR>
nnoremap <leader>b :Buffers<CR>
" Center when moving up and down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-u> <C-u>zz
vnoremap <C-d> <C-d>zz
vnoremap <C-f> <C-f>zz
vnoremap <C-b> <C-b>zz
" easy motion
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)
" vmap s <Plug>(easymotion-s2)
" vmap t <Plug>(easymotion-t2)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)zz
" map  N <Plug>(easymotion-prev)zz
nnoremap n nzz
nnoremap N Nzz
" Reset highlighted search
" nnoremap <CR> :let @/=""<CR><CR>
nnoremap <BS> :noh<CR>
"===============================================================================
" file type specific settings
"===============================================================================
" javascript
autocmd FileType javascript setlocal
            \ tabstop=2
            \ softtabstop=2
            \ shiftwidth=2
"           \ syntax=off
" json
autocmd FileType json setlocal
            \ tabstop=2
            \ softtabstop=2
            \ shiftwidth=2
"           \ syntax=off
" handlebars
autocmd BufNewFile,BufRead *.handlebars,*.hbs set filetype=html.handlebars
autocmd FileType html.handlebars setlocal
            \ tabstop=2
            \ softtabstop=2
            \ shiftwidth=2
"===============================================================================
" neovim specific settings
"===============================================================================
" cursor is pipe in insert mode, block otherwise
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
"===============================================================================
" vim default overrides
"===============================================================================
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
"===============================================================================
" last but not least ...
"===============================================================================
" colors
syntax on
set background=light
colorscheme off
"" split is white
set fillchars+=vert:\ 
hi VertSplit ctermfg=15 ctermbg=231 guibg=NONE guifg=NONE guisp=NONE gui=NONE
