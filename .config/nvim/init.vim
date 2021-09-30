call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag' " Auto close HTML/XML tag
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/autocomplpop'
Plug 'ervandew/supertab'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'voldikss/vim-floaterm'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'

Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}

Plug 'tpope/vim-commentary'

call plug#end()

source ~/.config/nvim/colors/lightline/nordone.vim
"-------------------------------------------------------------------------------------

let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=5 
syntax on

" General settings
set encoding=UTF-8
set mouse=a
set cindent
set backspace=2
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab

set hidden
set noswapfile
set nobackup
set nowritebackup
set autoread
set autowrite
set history=50

set showcmd
set cmdheight=1

set ruler
set number
set relativenumber
set cursorline

" Tab charactor
set listchars=tab:\|\ 
set list

set updatetime=300

set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

set incsearch
set hlsearch

set laststatus=2

set termguicolors
set noshowmode

" Enable copying from vim to clipboard
set clipboard=unnamedplus

"set ft=conf

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
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

" COC Config -----------------------------------------
" coc.vim config
" Remap keys for gotos
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> rn <Plug>(coc-rename)

" nnoremap R :CocCommand <CR>

"Theme------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'nordone',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'li:checkhealth telescopeneinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
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
let g:floaterm_autoinsert=v:true
let g:floaterm_width=0.5
let g:floaterm_height=0.5
let g:floaterm_position='bottomright'
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_borderchars = '─│─│┌┐┘└'
let g:floaterm_keymap_toggle = 'ft'

" Auto close tag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

let g:user_emmet_node='n'
let g:user_emmet_leader_key=','

" :r is path, :t is filename
" run python
nnoremap <f1> <esc>:!python3 %<enter>
" compile java program
nnoremap <f2> <esc>:!javac %<enter>
" run java
nnoremap <f3> <esc>:!java %<enter>
