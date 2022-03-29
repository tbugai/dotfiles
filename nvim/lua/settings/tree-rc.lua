local tree = require("nvim-tree")
tree.setup(
  {
    open_on_setup = false
  }
)

vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>:NvimTreeToggle<CR>", {noremap = true})

vim.cmd [[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
