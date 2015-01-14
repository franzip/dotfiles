" Make Vim more useful
set nocompatible

" ================ General Config ====================

" Enable line numbers
set number
" Allow backspace in insert mode
set backspace=indent,eol,start
" Show the (partial) command as it’s being typed
set showcmd
" Show the current mode
set showmode
" Disable error bells
set noerrorbells

" Enable syntax highlighting
syntax on
" Change mapleader
let mapleader=","

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/plugins.vim
" Use Vundle plugin to manage all other plugins
" Vundle support + plugins

" Keep .vimrc clean. Load stuff from different .vim files
" inspired by https://github.com/ddellaquila/dd-vim
let $MODULES=$HOME."/.vim/modules"

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Load plugins
if filereadable(expand("~/.vim/modules/plugins.vim"))
  source ~/.vim/modules/plugins.vim
endif
" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Don’t add empty newlines at the end of files
set binary
set noeol

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Highlight current line
set cursorline
" Show “invisible” characters

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a

" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the filename in the window titlebar
set title

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Load the rest
if filereadable(expand("~/.vim/modules/functions.vim"))
  source ~/.vim/modules/functions.vim
endif
if filereadable(expand("~/.vim/modules/mappings.vim"))
  source ~/.vim/modules/mappings.vim
endif
if filereadable(expand("~/.vim/modules/abbreviations.vim"))
  source ~/.vim/modules/abbreviations.vim
endif
if filereadable(expand("~/.vim/modules/custom.vim"))
  source ~/.vim/modules/custom.vim
endif
if filereadable(expand("~/.vim/modules/filetypes.vim"))
  source ~/.vim/modules/filetypes.vim
endif

" useful stuff
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>


