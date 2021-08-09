"Following plugins using pathogen:
execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set autoindent
set encoding=utf-8
set nu
set t_Co=256
let g:airline_theme='solarized'
set termguicolors
colorscheme gruvbox
set bg=dark
set backupdir-=.
set backupdir^=~/tmp,/tmp
let g:pymode_lint_on_write = 0
let g:pymode_syntax_space_errors = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<Down>']

" Relative or absolute number lines
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction

nnoremap <C-n> :call NumberToggle()<CR>
