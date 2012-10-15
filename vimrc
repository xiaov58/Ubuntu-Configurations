""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections :
"	-> General
"   -> Search
"	-> User Interface
"	-> Text, tab and indent ralated
"   -> Mapping
"   -> Scripts
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default
set ruler
set showmode
set nocompatible
set backspace=indent,eol,start

" Sets how many lines of history VIM has to remember
set history=1000

" Set auto read when a file is changed from the outside
set autoread

" Set encoding fomat
set encoding=utf8

" Do not gernerate backup file
set nobackup

" Do not wrap 
set nowrap

" auto save when switch between files
set autowrite
 
" auto indent depend on filetype
filetype indent plugin on



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ignorecase when search
set ignorecase

" instant search
set incsearch

" Highlight search things
set hlsearch



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set nu

" Set margin when scrolling
set so=8

" Highlight current line
set cursorline
hi CursorLine   cterm=NONE ctermbg=green ctermfg=white 

" Highlight syntax
syntax on

" rules of pairs match
set matchpairs=(:),{:},[:],<:>

" show command typed
set showcmd

" show invisible characters
set list listchars=tab:>-,eol:░
set nolist

" nbsp, tab, trail
hi SpecialKey ctermfg=77 guifg=#654321 cterm=bold gui=bold




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent ralated
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set auto indent
set ai

" Spaces instead of tabs
set expandtab

" 4 spaces for indenting
set shiftwidth=4

" 4 spaces for tabs
set tabstop=4




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set mapleader (default is \)
let mapleader = "\"

" add a new line without entering insert mode  ===============================================> <CR>
map <CR> o<Esc>

" switch show line number  ===================================================================> <F2>
noremap <F2> :set nohlsearch!<CR>

" switch show invisible characters  ==========================================================> <F3>
noremap <F3> :set list!<CR>

" switch replace between tab and 4 space  ====================================================> <F4>
noremap <F4> :set noexpandtab!<CR>:% retab!<CR>




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jump to the position right before you close the file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" jump to the middle of brackets
imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap <> <><Left>
imap "" ""<Left>


