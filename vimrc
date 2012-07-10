call pathogen#infect()
syntax on
filetype plugin indent on

set number
set guifont=Menlo\ Regular:h14
set laststatus=2
set statusline=%t\ %m\ %y%=%l,%c\ %P
set encoding=utf-8 
colorscheme ir_black

let g:Powerline_symbols = 'fancy'

set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType c,cpp,ruby,javascript autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

if has("gui_macvim")
  set guioptions=e
end
