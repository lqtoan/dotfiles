call plug#begin('~/.config/nvim/bundle')
Plug 'scrooloose/nerdtree' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"-------------------------------------------------------------------------------------
let mapleader = "\<Space>" 
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10 
syntax on

set encoding=UTF-8
set mouse=a 

set incsearch 
set hlsearch  

set tabstop=4 
set softtabstop=0
set shiftwidth=4

"--------------------------------------------------------------------------------------
"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let NERDTreeShowHidden=1
let g:NERDTreeShowBookmarks=1

"Theme
colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }
let g:airline_theme = 'onedark'
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
" Italics for my favorite color scheme
let g:onedark_terminal_italics=1