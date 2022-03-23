--Set highlight on search
vim.o.hlsearch = true
vim.api.nvim_set_keymap('n', '<CR>', '<cmd>noh<CR><CR>', { noremap = true })

--Make line numbers default
vim.wo.number = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

--Skt colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]

--Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

--Use 'jk' as escape
vim.api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true })

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

--Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]


--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_show_trailing_blankline_indent = false

vim.cmd [[
  set autoindent smartindent
  set noerrorbells
  set visualbell t_vb=
]]
