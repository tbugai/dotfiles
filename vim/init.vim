" Map the leader key to SPACE
let mapleader="\<SPACE>"

filetype plugin indent on
syntax enable

set autoindent smartindent
set softtabstop=2
set expandtab
set tabstop=2
set shiftwidth=2
set number
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set magic               " Use 'magic' patterns (extended regular expressions).
set scrolloff=3
set ruler

set colorcolumn=120

" whitespace
set list
set listchars+=eol:\          " character to list at the end of each line
set listchars+=tab:\ \        " character to list a <Tab>
set listchars+=trail:·        " character to list trailing spaces
set listchars+=extends:►
set listchars+=precedes:◀

" no error or visual error annoyance
set noerrorbells
set visualbell t_vb=

" Always create below and to the right
set splitright
set splitbelow

" Turn off annoying backups and swapfiles
set noswapfile
set nobackup
set nowritebackup

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Make it easier to escape from modes back to command mode
inoremap jk <esc>

" Move between panes
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" Move between panes when in a terminal
tnoremap jk <C-\><C-N>

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-repeat'

Plug 'sheerun/vim-polyglot'
let g:ruby_indent_assignment_style = 'variable'

Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Run linters on save
Plug 'neomake/neomake'
let g:neomake_scss_enabled_makers=["sasslint"]
let g:neomake_ruby_enabled_makers=[]

let g:seoul256_background = 236
Plug 'junegunn/seoul256.vim'

Plug 'tpope/vim-endwise'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'craigemery/vim-autotag'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-repeat'

" Bubble lines of text up and down, indent and outdent
Plug 'frace/vim-bubbles'
let g:bubbles_leader = '<C>'
let g:bubbles_keyset = 'hjkl'

Plug 'Valloric/YouCompleteMe'

Plug 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'gitbranch': 'fugitive#head',
      \   'readonly': 'LightlineReadonly',
      \ },
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

call plug#end()

set background=dark
colorscheme seoul256

highlight Pmenu ctermfg=15 ctermbg=0 gui=bold guifg=#ffffff guibg=#000000
let g:airline_powerline_fonts = 1

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>s :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <Enter> :nohlsearch<CR>
nnoremap <silent> <leader>t :execute 'tag ' . input('tag/')<CR>
nnoremap <silent> <leader>j <C-]>

" " Run tests in a terminal let test#strategy = 'neovim'
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

set noshowmode

set cmdheight=1
set showcmd

" augroup cursorline
"   au!
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au WinLeave * setlocal nocursorline
" augroup END

autocmd! VimResized * :wincmd =

" Remove extranious whitespace
autocmd BufWritePre * %s/\s\+$//e

" Run linters when a file is being saved
autocmd! BufWritePost * Neomake
autocmd! BufWritePost init.vim so $MYVIMRC

let $FZF_DEFAULT_COMMAND="ag -g ''"

