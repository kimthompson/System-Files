set nocompatible              " be iMproved, required
filetype off                  " required
set number
set laststatus=2
let mapleader = '-'
"
" Nerdtree auto start stuff
map <C-n> :NERDTreeToggle
autocmd bufenter * if (winnr("$") == 1 && exists("b.NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()

" switch windows with directional keys
map <C-j> <C-W>j 
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set clipboard=unnamed " copy to the system clipboard

" get out of insert mode with 'jk'
inoremap jk <Esc>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'NLKNguyen/papercolor-theme' " my theme
Plugin 'sheerun/vim-polyglot' " syntax highlighting for over 100 languages, lazy-loaded
Plugin 'dense-analysis/ale' " linting for any project that has it set up, including eslint and prettier
Plugin 'scrooloose/nerdcommenter' " commenting shortcuts for many languages
Plugin 'scrooloose/nerdtree' " trying out nerdtree
Plugin 'tpope/vim-surround' " bracket matching and management utility
Plugin 'tpope/vim-sleuth' " automatically adjusts shiftwidth and expandtab heuristically based on the current file or by looking at other files of the same type
Plugin 'jparise/vim-graphql' " adds graphql syntax highlighting and file recognition
Plugin 'evanleck/vim-svelte' " adds svelte syntax highlighting and file recognition
Plugin 'tpope/vim-rails' " adds Ruby on Rails power tools
Plugin 'skalnik/vim-vroom' " runs Ruby tests

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor
syntax enable

" Recs from https://dougblack.io/words/a-good-vimrc.html
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2
set textwidth=80 " line character limit
set hls is " search highlights as you type
set autoindent " enable autoindent
set expandtab " tabs are spaces
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
filetype plugin on
set omnifunc=syntaxcomplete#Complete " basic, vim-included omnicompletion
set wrap
set textwidth=0 wrapmargin=0
setlocal spell spelllang=en_us
set nospell
set modeline
set nojoinspaces " pesky 2-spaces after the period thing
set showcmd
set shortmess=at
set backspace=indent,eol,start " backspace ought to perform like it does in other programs
let TreeShowHidden=1
