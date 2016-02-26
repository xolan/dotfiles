call plug#begin('~/.config/nvim/plugged')

	Plug 'yggdroot/indentline'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }


call plug#end()

" general
set number
set cursorline
hi CursorLine guibg=#000050 guifg=fg
hi CursorLine guibg=#004000 guifg=fg
set cursorcolumn
hi CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
hi CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=NONE

set shiftwidth=2
set tabstop=2
set softtabstop=2

syntax on
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
set list!

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0
