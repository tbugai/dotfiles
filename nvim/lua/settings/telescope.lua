--Telescope
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules" },
    mappings = {
      i = {
        ["C-u"] = false
      },
    },
  },
  pickers = {
    lsp_code_actions = {
      theme = "dropdown"
    },
    find_files = {
      theme = "dropdown"
    }
  },

  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    }
  }
}

-- Enable telescope fzf native
require('telescope').load_extension 'fzf'
require('telescope').load_extension 'ui-select'

--Add leader shortcuts
vim.api.nvim_set_keymap('n', '<leader>l', [[<cmd>lua require('telescope.builtin').buffers({ sort_mru = true, ignore_current_buffer = true })<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', [[<cmd>lua require('telescope.builtin').registers()<CR>]], { noremap = true, silent = true })
