"
" configuration for 'itchyny/lightline.vim'
"
let g:lightline_hybrid_style = 'plain'

let g:lightline = {
    \ 'colorscheme': 'hybrid',
    \ 'active': {
    \   'left': [
    \       [ 'mode' ], [ 'fugitive', 'relativepath', 'modified' ]
    \   ], 'right': [ ['lineinfo'] ]
    \ },
    \ 'inactive': {
    \   'left': [
    \       ['filename']
    \   ], 'right': [ ['lineinfo'] ]
    \ }
\ }
