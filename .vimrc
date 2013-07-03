set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on
 
set history=1000
set showmatch
set matchtime=0
set shortmess=atI
set ruler
set showcmd
set number
set autoindent
set lbr

set sidescroll=1
set sidescrolloff=3
 
" Set xterm title
set title
 
" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase
 
set noerrorbells
set printoptions=paper:letter
 
" Keep more lines of context
set scrolloff=3
 
" Make backspace delete lots of things
set backspace=indent,eol,start
 
" Auto-backup files and .swp files don't go to pwd
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
 
" Allow switching edited buffers without saving
set hidden
 
" Look for the file in the current directory, then south until you reach home.
set tags=tags;~/
 
" Who needs .gvimrc?
if has('gui_running')
  set encoding=utf-8
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
  " Turn off toolbar and menu
  set guioptions-=T
  set guioptions-=m
  colorscheme desert
else
  colorscheme desert
end
 
" Change <Leader>
let mapleader = ","
 
" Quick timeouts on key combinations.
set timeoutlen=300
 
" Alternatives to ESC:
"imap jkl <ESC>
"imap jlk <ESC>
"imap kjl <ESC>
"imap klj <ESC>
"imap lkj <ESC>
"imap ljk <ESC>
"imap ;l <ESC>
 
" "Very magic" regexes in searches
"nnoremap / /\v
"nnoremap ? ?\v
 
" Vi-style editing in the command-line
"nnoremap : q:a
"nnoremap / q/a
"nnoremap ? q?a
 
" Window management
"nmap <silent> <Leader>xo :wincmd j<CR>
 
" Catch trailing whitespace
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>
 
" Fix command typos (stolen from Adam Katz)
nmap ; :
 
" ` is more useful than ' but less accessible.
nnoremap ' `
nnoremap ` '
 
" Buffer management
nmap <C-h> :bp<CR>
nmap <C-l> :bn<CR>
"nmap <TAB> :b#<CR>
"nmap <C-q> :bd<CR>
nmap <C-d> :bw<CR>
vmap <C-d> :bw<CR>
 
" Toggle highlighting
" nmap <silent> <C-n> :silent :set nohls!<CR>:silent :set nohls?<CR>
nmap <silent> <C-n> :silent :nohlsearch<CR>
 
" Scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
vnoremap <C-e> 3<C-e>
vnoremap <C-y> 3<C-y>
 
" Bash-like filename completion
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.fasl
 
autocmd BufRead *.qcf set filetype=lisp
autocmd BufRead qpx.inc set filetype=make
autocmd BufRead letter* set filetype=mail
autocmd Filetype mail set fo -=l autoindent spell
 
" ITA indenting style
autocmd Filetype c,cpp,h set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" JSH indenting style
"autocmd Filetype c,cpp,h set tabstop=8 softtabstop=4 shiftwidth=4 noexpandtab
" Wimba indenting style, sort-of
"autocmd Filetype c,cpp,h set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" Viewglob
"autocmd Filetype c,cpp,h,sh set cindent autoindent
autocmd Filetype php,js,css set tabstop=2 shiftwidth=2 expandtab

autocmd Filetype sh set ts=4 shiftwidth=2 expandtab
autocmd Filetype lisp,ruby,xml,html set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd Filetype python set ts=4 shiftwidth=4 expandtab
autocmd Filetype xml,xslt,diff,ruby color desert
autocmd Filetype xml,xslt,diff,ruby set expandtab
autocmd BufReadPre viper,.viper set filetype=lisp

:map <F5> :w<CR>
" a.vim
nmap <silent> <Leader>h :A<CR>
:map <F6> :NERDTree<CR>
:map <F9> :w <bar> !gcc %; ./a.out<CR>
