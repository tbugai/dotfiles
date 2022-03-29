-- Install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", {noremap = true, silent = true})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("plugins")
require("settings.defaults")

require("settings.autocomplete")
require("settings.diagnostics")
require("settings.focus")
require("settings.lsp")
require("settings.nerdtree")
require("settings.statusbar")
require("settings.telescope")
require("settings.treesitter")

--Enable Comment.nvim
require("Comment").setup()

-- vim: ts=2 sts=2 sw=2 et
