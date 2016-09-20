"
" configuration for 'Shougo/deoplete.vim'
"
let g:deoplete#enable_at_startup            = 1
let g:deoplete#enable_refresh_always        = 1
let g:deoplete#enable_buffer_path           = 0
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#auto_complete_delay          = 100
let g:deoplete#enable_smart_case            = 1
" tab to cycle trough suggestions
inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
