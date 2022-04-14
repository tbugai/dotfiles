local INDENT = 2

vim.opt.tabstop = INDENT
vim.opt.softtabstop = INDENT
vim.opt.shiftwidth = INDENT
vim.opt.expandtab = true

vim.opt.number = true

vim.cmd [[
  set termguicolors
  set background=dark
  colorscheme nordfox
]]

require("settings.telescope-rc")
require("settings.treesitter-rc")
require("settings.lsp-colors-rc")
require("settings.lsp-installer-rc")
require("settings.lspsaga-rc")
require("settings.completion-rc")
require("settings.formatter-rc")
--require("settings.tree-rc")
require("settings.autopairs-rc")
require("settings.autotag-rc")

require("settings.lualine-rc")
