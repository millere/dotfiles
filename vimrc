nnoremap j gj
nnoremap k gk
let mapleader = "\<Space>"

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Manage plugins nicely :)
Plugin 'gmarik/Vundle.vim'

" My color scheme
Plugin 'sjl/badwolf'

" Provides the best go support for vim, period.
Plugin 'fatih/vim-go'
" Use goimports as go fmt - fixes imports on save
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" Better status bar, make it useful and pretty
Plugin 'bling/vim-airline'

" Error checking on save
Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol = '*'
let g:syntastic_warning_symbol = '!'
let g:syntastic_mode_map = { 'mode': 'active',
			\ 'active_filetypes': [],
			\ 'passive_filetypes': ['html'] }

" syntax highlighting for rust, markdown, and qml
Bundle 'wting/rust.vim'
Plugin 'tpope/vim-markdown'
Plugin 'peterhoeg/vim-qml'
Plugin 'vim-scripts/Smart-Tabs'

Plugin 'kovisoft/slimv'

Plugin 'vim-scripts/SyntaxRange'

call vundle#end()
filetype plugin indent on

" Mappings
let mapleader = "\<Space>" "Use space as leader
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gr <Plug>(go-rename)

set ttimeoutlen=50 "So airline doesn't delay exit modes
syntax enable "syntax highlighting is a good thing
set modelines=0 "Modelines have a security thing

set encoding=utf-8 "Everything should be utf-8 at this point
set scrolloff=3 "Keep 3 lines visible above or below cursor
set autoindent "Yeah, I like my editor to do things for me
set autowrite "Writes on make/shell commands
set showmode
set showcmd "Show characters typed in normal until command is complete
set hidden "Don't abandon buffers!
set wildmenu
set wildmode=list:longest
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2 "always show status line
set number
set lazyredraw "only redraw when needed. Faster.
set mouse=a
set t_Co=256

set smartcase
set incsearch

"Split management
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
set splitbelow
set splitright

colors badwolf
