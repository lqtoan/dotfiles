call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree' 
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/autocomplpop'
Plug 'jiangmiao/auto-pairs' 
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
Plug 'mattn/emmet-vim'
call plug#end()

"-------------------------------------------------------------------------------------
let mapleader = "\<Space>" 
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10 
syntax on

set noswapfile
set autoread
set autowrite
set history=50

set showcmd

set ruler
set number
set relativenumber

set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

set encoding=UTF-8
set mouse=a 

set incsearch 
set hlsearch  

set cindent
set backspace=2
set tabstop=4 
set softtabstop=0
set shiftwidth=4
set smarttab

set laststatus=2

set termguicolors
" no insert in insert mode 
set noshowmode

"set ft=conf 
"--------------------------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<C-n>"

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
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ }
colorscheme onedark
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
" Italics for my favorite color scheme
let g:onedark_terminal_italics=1
let g:Hexokinase_v2 = 0
let g:hexokinase_refreshEvents = ['TextChanged', 'InsertLeave', 'BufRead']
let g:Hexokinase_highlighters = ['virtual']
let g:Hexokinase_ftAutoload = ['*']
let g:Hexokinase_signIcon = 'o'

" Auto close tag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

" run python
nnoremap <f1> <esc>:!python3 %:t<enter>
" compile java program
nnoremap <f2> <esc>:!javac %:t<enter>
" run java
nnoremap <f3> <esc>:!java %:r<enter>

