call plug#begin('~/.vim/installed')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
call plug#end()

set guifont=Lucida_Sans_Typewriter:h10:cANSI:qDRAFT

syntax on
color dracula
set nobackup
set splitright " Open vertical split panes to the right
set noundofile
set laststatus=2 " Set airline to always be on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number " Show line numbers
set scl=yes
set cursorline " Highlight current line
set showmatch " Highlight maching bracket/brace pairs
set incsearch " Search as you type
set hlsearch " Highlight search matches
set ignorecase smartcase " Only upper-case is case-sensitive in searches
set backspace=indent,eol,start
filetype plugin indent on
imap jj <Esc>

let mapleader = ' '
map <Leader>n :NERDTreeToggle<CR>
map <Leader>w <C-w>
map <Leader>d :ALEGoToDefinition<CR>
map <Leader>f :ALEFix<CR>

" Airline settings

let g:airline#extensions#tabline#enabled = 1 " Show tab line
let g:airline#extensions#ale#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols_ascii = 1

" Ale settings

let g:ale_linters = {
\ 'javascript': ['eslint', 'tsserver'],
\}

let g:ale_fixers = {
\ 'javascript': ['prettier'],
\}

let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_tsserver_use_global = 1

let g:ale_lint_delay = 600
