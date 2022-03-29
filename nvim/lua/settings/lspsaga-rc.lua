local saga = require("lspsaga")

saga.init_lsp_saga()

vim.api.nvim_set_keymap(
  "n",
  "<leader>ca",
  "<cmd>lua require('lspsaga.codeaction').code_action()<cr>",
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>gh",
  "<cmd>lua require('lspsaga.provider').lsp_finder()<cr>",
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>gd",
  "<cmd>lua require('lspsaga.provider').preview_definition()<cr>",
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>rn",
  "<cmd>lua require('lspsaga.rename').rename()<cr>",
  {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
  "v",
  "<leader>ca",
  ":<C-U><cmd>lua require('lspsaga.codeaction').range_code_action()<cr>",
  {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>cd",
  "<cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<cr>",
  {noremap = true, silent = true}
)

vim.api.nvim_set_keymap("n", "[e", "<cmd>:Lspsaga diagnostic_jump_next<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "]e", "<cmd>:Lspsaga diagnostic_jump_prev<cr>", {noremap = true, silent = true})

vim.api.nvim_set_keymap(
  "n",
  "<C-t>",
  "<cmd>lua require('lspsaga.floaterm').open_float_terminal()<cr>",
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "t",
  "<C-t>",
  "<cmd>lua require('lspsaga.floaterm').close_float_terminal()<cr>",
  {noremap = true, silent = true}
)
