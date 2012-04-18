call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax enable
syntax on
filetype plugin indent on

""" Theme """ 
set background=dark
set nocompatible
set modeline
colorscheme solarized
