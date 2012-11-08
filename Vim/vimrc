""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections :
"   -> General
"   -> User Interface
"   -> Indent and Search
"   -> Mapping
"   -> Scripts
"   -> Plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" Rules of pairs match
set matchpairs=(:),{:},[:],<:>

" Line break 
set tw=1000

" Auto save when switch between files
set autowrite
 
" Filetype detection
filetype on
filetype plugin on
filetype indent on



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor no not blink
set gcr=a:block-blinkon0

" Do not wrap
set nowrap

" Show line number
set nu

" Set margin when scrolling
set so=8

" Highlight currentline
set cursorline

" Highlight syntax
syntax on

" Show command typed
set showcmd

" Show invisible characters
set list listchars=tab:>-,eol:░
set nolist

" Color scheme
set background=light
"colorscheme XXX

" Hide gvim tool bar
set guioptions-=T

" Font
set guifont=Monospace\ 14



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent and  Search 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Ignorecase when search
set ignorecase

" Instant search
set incsearch

" Highlight search things
set hlsearch

" Search +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
let mapleader = ";"

" Use <S-CR> go to the EOL  ================================================================> <S-CR>
noremap! <S-CR> <Esc>A

" Use <Space> to scroll half page down  ===================================================> <Space>
noremap <Space> <C-d>

" Use <S-Space> to scroll half page up (gvim only)  =====================================> <S-Space>
noremap <S-Space> <C-u>

" Use ` to replace <ESC>  =======================================================================> `
noremap ` <Esc>
noremap! ` <Esc>

" Use <S-z> to replace <S-z><S-z>  ==========================================================> <S-z>
noremap <S-z> <S-z><S-z>

" Add a new line without entering insert mode  ===============================================> <CR>
noremap <CR> o<Esc>d$

" switch wrap line or not ====================================================================> <F1>
noremap <F1> :set nowrap!<CR>
noremap! <F1> <Esc>:set nowrap!<CR>li

" switch show line number  ===================================================================> <F2>
noremap <F2> :set nohlsearch!<CR>
noremap! <F2> <Esc>:set nohlsearch!<CR>li

" switch show invisible characters  ==========================================================> <F3>
noremap <F3> :set list!<CR>
noremap! <F3> <Esc>:set list!<CR>li

" switch replace between tab and 4 space  ====================================================> <F4>
noremap <F4> :set noexpandtab!<CR>:% retab!<CR>
noremap! <F4> <Esc>:set noexpandtab!<CR>:% retab!<CR>li

" switch taglist window   ====================================================================> <F5>
noremap <F5> :TlistToggle<CR>
noremap! <F5> <Esc>:TlistToggle<CR>li

" jump to the middle of brackets
imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap <> <><Left>
imap "" ""<Left>
imap '' ''<Left>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jump to the position right before you close the file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" taglist ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" do not show tags of multiple files
let Tlist_Show_One_File = 1

" show taglist window on right side
let Tlist_Use_Right_Window = 1

" exit when taglist window is the last
let Tlist_Exit_OnlyWindow = 1
