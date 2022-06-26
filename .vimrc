
set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8

let mapleader=" "
nnoremap <SPACE> <Nop>

set number
set relativenumber
set cursorline
set backspace=indent,eol,start

set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap

set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch

set hlsearch
set history=1000

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set background=dark
colorscheme gruvbox  


"PLUGINS

call plug#begin('~/.vim/plugged')


"-- Meta: não instalar nenhum plugin!


call plug#end()




"MAPPINGS

"Insert Mode
"-- Pular para fora 
inoremap <C-l> <esc>A
inoremap <C-h> <esc>i
"-- Chamar pesquisa
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>


"VIMSCRIPT

    augroup filetype_vim
            autocmd!
            autocmd FileType vim setlocal foldmethod=marker
    augroup END

"If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

"This allows you to undo changes to a file even after saving it
if version >= 703
   set undodir=~/.vim/backup
   set undofile
   set undoreload=10000
endif

"STATUS LINE           

set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2

