call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag' " Auto close HTML/XML tag
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/autocomplpop'
Plug 'ervandew/supertab'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'

Plug 'voldikss/vim-floaterm'

Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'

Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}

Plug 'tpope/vim-commentary'
call plug#end()

source ~/.config/nvim/colors/lightline/nordone.vim
" source ~/.config/nvim/coc.vim
"-------------------------------------------------------------------------------------

let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=5 
autocmd VimEnter * NERDTree | wincmd p
syntax on

" General settings
set encoding=UTF-8
set mouse=a
set autoindent
set smartindent

set backspace=2
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
" set path+=.**

set hidden
" set showtabline=2

set noswapfile
set nobackup
set nowritebackup
set autoread
set autowrite
set history=5000
set undolevels=5000

set noshowcmd
set cmdheight=2

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

" set background=dark
set termguicolors
set noshowmode

" Enable copying from vim to clipboard
set clipboard=unnamedplus


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
nmap t :NERDTreeToggle<CR>
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
	\ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowClean = 1 " default: 0

let g:gitgutter_map_keys = 0

" COC Config -----------------------------------------
" coc.vim config
" Remap keys for gotos
" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent>rn <Plug>(coc-rename)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

nmap <Leader>f :Format <CR>

" Apply AutoFix to problem on the current line.
nmap <leader>fc  <Plug>(coc-fix-current)

"Theme------------------------------------------------
let g:lightline = {
	\ 'colorscheme': 'nordone',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
	\   'right': [ [ 'lineinfo', 'percent' ],
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

" Hexokinase_v2
let g:Hexokinase_v2 = 0
let g:hexokinase_refreshEvents = ['TextChanged', 'InsertLeave', 'BufRead']
"Set highlighter virtual, highlighter, sign_column, foreground/full, background/full
let g:Hexokinase_highlighters = ['virtual']
let g:Hexokinase_ftAutoload = ['*']
let g:Hexokinase_signIcon = 'o'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=v:true
let g:floaterm_width=0.6
let g:floaterm_height=0.4
let g:floaterm_position='bottomright'
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_borderchars = '─│─│┌┐┘└'
let g:floaterm_keymap_toggle = 'ft'

" Auto close tag
let g:closetag_filenames = '*.html,*.xml,*.js,*.jsx,*.vue'
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
