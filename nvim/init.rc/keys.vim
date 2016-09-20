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
"
" <space> is the <leader>
"
nnoremap <SPACE> <NOP>
let mapleader=" "
"
" escape to normal mode with 'jk'
"
inoremap jk <ESC>
tnoremap jk <C-\><C-n>

"
" streamlined window switching, no more pressing W
"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"
" append redraw cursor line at center of window to
" C-u, C-d, C-f or C-b
"
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-u> <C-u>zz
vnoremap <C-d> <C-d>zz
vnoremap <C-f> <C-f>zz
vnoremap <C-b> <C-b>zz

"
" treat wrapped lines as break lines
"
nnoremap j gj
nnoremap k gk

"
" <bs> - stop the highlight for the 'hlsearch' option
" in normal mode
"
nnoremap <BS> :noh<CR>

"
" <leader>w - write buffer to file
"
nnoremap <leader>w :w!<CR>

"
" <leader>q - quit the current window
"
nnoremap <leader>q :Sayonara<CR>

"
" <leader>q - close current buffer
"
nnoremap <leader>d :Sayonara!<CR>

"
" fzf
"
nnoremap <leader>e :Files<CR>
nnoremap <leader>t :GFiles<CR>
nnoremap <leader>g :GFiles?<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>/ :BLines!<CR>

"
" replace 'f' with 1-char Sneak
"
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

"
" replace 't' with 1-char Sneak
"
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
