" Map the leader key to SPACE
let mapleader="\<SPACE>"

filetype plugin indent on

syntax enable

set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
set noerrorbells
set splitright
set splitbelow
set list
set listchars+=eol:\          " character to list at the end of each line
set listchars+=tab:\ \        " character to list a <Tab>
set listchars+=trail:·        " character to list trailing spacesku
set scrolloff=3

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Make it easier to escape from modes back to command mode
inoremap jk <esc>

" Move between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move between panes when in a terminal
tnoremap jk <C-\><C-N>

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'
Plug 'janko-m/vim-test'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-endwise'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'

call plug#end()

set background=dark
colorscheme solarized

let g:airline_powerline_fonts = 1

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <leader>s :nohlsearch<CR>

" Run tests in a terminal
let test#strategy = 'neovim'
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

augroup vimconfig
  au!
  au BufWritePost init.vim so $MYVIMRC
augroup END

augroup cursorline
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

autocmd! VimResized * :wincmd =
autocmd BufWritePre * %s/\s\+$//e

let g:agprg='ag -S --nocolor --nogroup --column --ignore node_modules --ignore _build'

