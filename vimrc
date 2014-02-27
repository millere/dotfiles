" Set keyboard mappings for Colemak movement

noremap K J
noremap J K

noremap h gk
noremap j h
noremap k gj

" Disable arrow keys in normal mode. Train myself!
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>

"plugin loading with Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'sjl/badwolf'
try
       colors badwolf
catch
endtry

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol = '*'
let g:syntastic_warning_symbol = '!'
let g:syntastic_mode_map = { 'mode': 'active',
	\ 'active_filetypes': [],
	\ 'passive_filetypes': ['html'] }

set ttimeoutlen=50 "So airline doesn't delay to exit

syntax enable "Syntax 
filetype plugin indent on "Auto indentation.

set modelines=0 "prevent security hole

"Tab stop is 8. Use the tab character
set tabstop=8
set shiftwidth=8
set softtabstop=8

set encoding=utf-8
set scrolloff=3 "Keep 3 lines visible above or below cursor
set autoindent
set autowrite "Writes on make/shell commands
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2 "always show status line
set relativenumber
set number "this + relanum are great
set lazyredraw "only redraw when needed. Faster.
let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <leader>m :!make<cr>
nnoremap <tab> %
vnoremap <tab> %

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"Window management
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-n> <C-w>h
nnoremap <C-e> <C-w>j
nnoremap <C-i> <C-w>k
nnoremap <C-o> <C-w>l
nnoremap <space> :


" Helpful for forgetting to sudo a file
command W w !sudo tee % > /dev/null
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Turn off autocommenting

" gvim
set guioptions=
set guifont=gohufont\ 9

"clipboard
set clipboard=unnamed
