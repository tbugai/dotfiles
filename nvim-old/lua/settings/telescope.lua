--Telescope
local actions = require("telescope.actions")
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules" },
    mappings = {
      n = {
        ["C-j"] = actions.move_selection_next,
        ["C-k"] = actions.move_selection_previous,
      },
    },
  },
  pickers = {
    lsp_code_actions = {
      theme = "dropdown"
    },
    find_files = {
      theme = "dropdown",
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
      mappings = {
        n = {
          ["C-j"] = actions.move_selection_next,
          ["C-k"] = actions.move_selection_previous,
        }
      }
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
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ft', [[<cmd>lua require('telescope.builtin').tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fs', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', [[<cmd>lua require('telescope.builtin').registers()<CR>]], { noremap = true, silent = true })
