call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/autocomplpop'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'voldikss/vim-floaterm'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'itchyny/lightline.vim'

Plug 'ervandew/supertab'
Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}

Plug 'tpope/vim-commentary'

call plug#end()

source ~/.config/nvim/colors/lightline/nordone.vim

"-------------------------------------------------------------------------------------
let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10 
syntax on

set noswapfile
set nobackup
set autoread
set autowrite
set history=50

set showcmd

set ruler
set number
"set relativenumber

" Tab charactor
set listchars=tab:\|\ 
set list

set updatetime=300

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
set noshowmode

" Enable copying from vim to clipboard
set clipboard=unnamedplus

"set ft=conf
"--------------------------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<C-n>'

"NERDTree
map <F5> :NERDTreeToggle<CR>
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
"NERDTree git plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowClean = 1 " default: 0

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Theme
let g:lightline = {
      \ 'colorscheme': 'nordone',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'li:checkhealth telescopeneinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ }
colorscheme nord
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >

" Italics for my favorite color scheme
"let g:onedark_terminal_italics=1

let g:Hexokinase_v2 = 0
let g:hexokinase_refreshEvents = ['TextChanged', 'InsertLeave', 'BufRead']
"Set highlighter virtual, highlighter, sign_column, foreground/full, background/full
let g:Hexokinase_highlighters = ['virtual']
let g:Hexokinase_ftAutoload = ['*']
let g:Hexokinase_signIcon = 'o'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.7
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_borderchars = ''
let g:floaterm_keymap_toggle = 'ft'

" Auto close tag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

let g:user_emmet_node='n'
let g:user_emmet_leader_key=','

" run python
nnoremap <f1> <esc>:!python3 %<enter>
" compile java program
nnoremap <f2> <esc>:!javac % -g<enter>
" run java
nnoremap <f3> <esc>:!java %<enter>
