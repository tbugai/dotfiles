-- toggle NERDTree show/hide using <C-n> and <leader>n
vim.api.nvim_set_keymap("n", "<leader>t", ":NERDTreeToggle<CR>", {noremap = true})
-- reveal open buffer in NERDTree
vim.api.nvim_set_keymap("n", "<leader>r", ":NERDTreeFind<CR>", {noremap = true})

