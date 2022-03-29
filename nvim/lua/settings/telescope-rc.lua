local telescope = require("telescope")

telescope.setup {
  defaults = {},
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
      find_command = {"fd", "--type", "f", "--strip-cwd-prefix"}
    }
  }
}

vim.api.nvim_set_keymap(
  "n",
  "<leader><space>",
  "<cmd>lua require('telescope.builtin').find_files()<cr>",
  {noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
-- vim.api.nvim_set_keymap('n', '<leader>p', "<cmd>lua require('telescope.builtin').registers()<cr>", { noremap = true })

telescope.load_extension("fzy_native")
