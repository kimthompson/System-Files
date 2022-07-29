" Nerdtree auto start stuff
map <C-n> :NERDTreeToggle
autocmd bufenter * if (winnr("$") == 1 && exists("b.NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()
augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap linebreak nolist
augroup END

" switch windows with directional keys
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set clipboard=unnamed " copy to the system clipboard

" get out of insert mode with 'jk'
inoremap jk <Esc>

" initialize vim-plug for neovim
call plug#begin(stdpath('data') . '/plugged')

" looks and GUI
Plug 'NLKNguyen/papercolor-theme' " my theme
Plug 'ryanoasis/vim-devicons' " pretty icons everywhere
Plug 'luochen1990/rainbow' " rainbow parenthesis
Plug 'gregsexton/MatchTag' " highlight matching html tags
Plug 'Jorengarenar/vim-MvVis' " move visual selection

" the rest
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf itself
Plug 'junegunn/fzf.vim' " fuzzy search integration
Plug 'sheerun/vim-polyglot' " syntax highlighting for over 100 languages, lazy-loaded
Plug 'dense-analysis/ale' " linting for any project that has it set up, including eslint and prettier
Plug 'scrooloose/nerdtree' " trying out nerdtree
Plug 'machakann/vim-sandwich' " bracket matching and management utility
Plug 'tpope/vim-sleuth' " automatically adjusts shiftwidth and expandtab heuristically based on the current file or by looking at other files of the same type
Plug 'tpope/vim-commentary' " better commenting
Plug 'tpope/vim-fugitive' " git support
Plug 'tpope/vim-eunuch' " run common Unix commands inside Vim
Plug 'jparise/vim-graphql' " adds graphql syntax highlighting and file recognition
Plug 'evanleck/vim-svelte' " adds svelte syntax highlighting and file recognition
Plug 'tpope/vim-rails' " adds Ruby on Rails power tools
Plug 'thoughtbot/vim-rspec' " runs rspec

call plug#end() " required
filetype plugin indent on " required

set t_Co=256 " This is may or may not needed.

set background=dark
colorscheme PaperColor
syntax enable

set tabstop=2 softtabstop=2 shiftwidth=2 autoindent " tab width
set textwidth=80 " line character limit
set tw=80
set emoji
set undodir=/tmp
set hls is " search highlights as you type
set expandtab " tabs are spaces
set number " show line numbers
set showcmd " show command in bottom bar
set title " tab title as file name
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
set grepprg=rg\ --vimgrep
set foldlevel=0
set nocompatible " be iMproved, required
filetype off " required
set number
set laststatus=2
let mapleader = ','
let TreeShowHidden=1

" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=1

" colors for git gutter
hi DiffAdd  guibg=#0f111a guifg=#43a047
hi DiffChange guibg=#0f111a guifg=#fdd835
hi DiffRemoved guibg=#0f111a guifg=#e53935

" rainbow brackets
let g:rainbow_active = 1

" FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_tags_command = 'ctags -R'

let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!build/**' --glob '!.dart_tool/**' --glob '!.idea' --glob '!node_modules'"

" enable spell only if file type is normal text
let spellable = ['markdown', 'gitcommit', 'txt', 'text', 'liquid', 'rst']
autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif

" fzf if passed argument is a folder
augroup folderarg
    " change working directory to passed directory
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'cd' fnameescape(argv()[0])  | endif

    " start startify (fallback if fzf is closed)
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | Startify  | endif

    " start fzf on passed directory
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'Files ' fnameescape(argv()[0]) | endif
augroup END

" files in fzf
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0)

" advanced grep
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

"" FZF
nnoremap <silent> <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Commands<CR>
nmap <leader>t :BTags<CR>
nmap <leader>/ :Rg<CR>
nmap <leader>gc :Commits<CR>
nmap <leader>gs :GFiles?<CR>
nmap <leader>sh :History/<CR>

" fugitive mappings
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Git blame<CR>

" statusline
source ~/.config/nvim/statusline.vim
