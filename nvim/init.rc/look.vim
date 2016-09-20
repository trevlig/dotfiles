"
"  /$$                     /$$
" | $$                    | $$
" | $$  /$$$$$$   /$$$$$$ | $$   /$$
" | $$ /$$__  $$ /$$__  $$| $$  /$$/
" | $$| $$  \ $$| $$  \ $$| $$$$$$/
" | $$| $$  | $$| $$  | $$| $$_  $$
" | $$|  $$$$$$/|  $$$$$$/| $$ \  $$
" |__/ \______/  \______/ |__/  \__/
"
"
" turn on syntax highlighting
"
syntax on

"
" use colors that look good on a light background
"
set background=light

"
" set colorscheme
"
colorscheme off

"
" characters to fill the statuslines and vertical separators.
"
" stl:c     ' ' or '^'  statusline of the current window
" stlnc:c   ' ' or '='  statusline of the non-current windows
" vert:c    '|'         vertical separators |:vsplit|
" fold:c    '-'         filling 'foldtext'
" diff:c    '-'         deleted lines of the 'diff' option
"
set fillchars+=vert:\ " comment to avoid remove trailing space

"
" set vertical split hightlight color
"
" (note, might need to change terminal color for white)
"
hi VertSplit ctermfg=15 ctermbg=15 guibg=NONE guifg=NONE guisp=NONE gui=NONE


