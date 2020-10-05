inoremap jk <ESC>

nnoremap <C-p> :<C-u>FZF<CR>
"Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

"Search for the current selection
"nmap gs<plug>(GrepperOperator)
"xmap gs<plug>(GrepperOperator)

let mapleader= " "

let g:grepper = {}

let g:grepper.tools = ['grep', 'git', 'rg']
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Vexplore
augroup END

filetype plugin indent on

syntax on

set encoding=utf-8
set clipboard+=unnamedplus
set number

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
