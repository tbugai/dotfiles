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
set magic               " Use 'magic' patterns (extended regular expressions).
set noerrorbells
set splitright
set splitbelow
set list
set listchars+=eol:\          " character to list at the end of each line
set listchars+=tab:\ \        " character to list a <Tab>
set listchars+=trail:·        " character to list trailing spaces
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
let g:neomake_scss_enabled_makers=["sasslint"]
let g:neomake_ruby_enabled_makers=[]

let g:ruby_indent_assignment_style = 'variable'

let g:seoul256_background = 236
Plug 'junegunn/seoul256.vim'

Plug 'tpope/vim-endwise'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'craigemery/vim-autotag'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-repeat'

Plug 'Valloric/YouCompleteMe'

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

" " Run tests in a terminal
" let test#strategy = 'neovim'
" nmap <silent> <leader>tn :TestNearest<CR>
" nmap <silent> <leader>tf :TestFile<CR>
" nmap <silent> <leader>ta :TestSuite<CR>
" nmap <silent> <leader>tl :TestLast<CR>
" nmap <silent> <leader>tv :TestVisit<CR>


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
autocmd! BufWritePost * Neomake

let $FZF_DEFAULT_COMMAND="ag -g ''"

