"
"             /$$
"            | $$
"    /$$$$$$ | $$ /$$   /$$  /$$$$$$
"   /$$__  $$| $$| $$  | $$ /$$__  $$
"  | $$  \ $$| $$| $$  | $$| $$  \ $$
"  | $$  | $$| $$| $$  | $$| $$  | $$
"  | $$$$$$$/| $$|  $$$$$$/|  $$$$$$$
"  | $$____/ |__/ \______/  \____  $$
"  | $$                     /$$  \ $$
"  | $$                    |  $$$$$$/
"  |__/                     \______/
"
" minimalist vim plugin manager
"
" https://github.com/junegunn/vim-plug
"
" auto-install
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

"
" FZF
"
" https://github.com/junegunn/fzf.vim
"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"
" Dark powered asynchronous completion framework for neovim
"
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"
" Enable repeating supported plugin maps with .
"
" https://github.com/tpope/vim-repeat
"
Plug 'tpope/vim-repeat'

"
" Sneak is a minimalist motion to reach any location
" specified by two characters
"
" (vim-sneak need to be initialized before vim-easyclip,
"  see https://github.com/svermeulen/vim-easyclip/issues/60)
"
" https://github.com/justinmk/vim-sneak
"
Plug 'justinmk/vim-sneak'

"
" Simplified clipboard functionality for vim
"
" https://github.com/svermeulen/vim-easyclip
"
Plug 'svermeulen/vim-easyclip'

"
" Vim plugin for copying to the system clipboard with text-objects
" and motions
"
Plug 'christoomey/vim-system-copy'

"
" Comment stuff out
"
" https://github.com/tpope/vim-commentary
"
Plug 'tpope/vim-commentary'

"
" a Git wrapper so awesome, it should be illegal
"
Plug 'tpope/vim-fugitive'

"
" quoting/parenthesizing made simple
"
Plug 'tpope/vim-surround'

"
" A simple, easy-to-use Vim alignment plugin.
"
Plug 'junegunn/vim-easy-align'

"
" a Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
"
Plug 'airblade/vim-gitgutter'

"
" Vim script for text filtering and alignment
"
Plug 'godlygeek/tabular', { 'on':  'Tabularize' }

"
" Sane buffer/window deletion.
"
Plug 'mhinz/vim-sayonara'

"
" A light and configurable statusline/tabline for Vim
"
Plug 'itchyny/lightline.vim'

"
" Theme for lightline
"
Plug 'cocopon/lightline-hybrid.vim'

"
" Better whitespace highlighting for Vim
"
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
