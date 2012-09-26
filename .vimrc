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

set encoding=utf-8
set laststatus=2
set number
set ruler
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set hlsearch

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let Powerline_symbols = 'fancy'
