call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax enable
syntax on
filetype plugin indent on

colorscheme molokai

""" Theme """ 
set background=dark
set nocompatible
set modeline

set encoding=utf-8
set laststatus=2
set number
set ruler
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set hlsearch

if has("gui_running")
      set guioptions-=m
      set guioptions-=T

      " no scrollbars
      set guioptions+=LlRrb
      set guioptions-=LlRrb

      highlight SpellBad term=underline gui=undercurl guisp=Orange 
      "git clone git://gist.github.com/1630581.git ~/.fonts/ttf-dejavu-powerline
      set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10

      let g:Powerline_symbols = 'fancy'
      let g:Powerline_stl_path_style = 'short'

      set clipboard=unnamedplus " X11 clipboard
endif

if filereadable("/usr/local/share/vim/plugin/ropevim.vim")
  source /usr/local/share/vim/plugin/ropevim.vim
  let ropevim_codeassist_maxfixes=10
  let ropevim_guess_project=1
  let ropevim_vim_completion=1
  let ropevim_enable_autoimport=0
  let ropevim_extended_complete=1 
  let ropevim_enable_shortcuts=0
  autocmd FileType python setlocal omnifunc=RopeCompleteFunc
  
  let g:SuperTabDefaultCompletionType = "context"

  map <leader>rg :call RopeGotoDefinition()<cr>
  map <leader>rd :call RopeShowDoc()<cr>
  map <leader>rm :RopeExtractMethod<cr>
  "map <leader>rl :call RopeInline()<cr>
  map <leader>ri :call RopeOrganizeImports()<cr>
  map <leader>rr :call RopeRename()<cr>
  map <leader>rc :call RopeShowCalltip()<cr>

else
  autocmd FileType python set omnifunc=pythoncomplete#Complete
endif
call pathogen#infect()
