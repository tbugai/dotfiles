require("nvim-treesitter.configs").setup(
  {
    highlight = {
      enable = true,
      disable = {}
    },
    indent = {
      enable = true,
      disable = {}
    },
    ensure_installed = {
      "css",
      "go",
      "javascript",
      "lua",
      "ruby",
      "rust",
      "scss",
      "vue"
    },
    autotag = {
      enable = true
    }
  }
)
