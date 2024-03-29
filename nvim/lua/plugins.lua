require("packer").startup(
  function(use)
    use {"wbthomason/packer.nvim"} -- Package manager
    use {"EdenEast/nightfox.nvim"} -- Colorscheme

    use {"hoob3rt/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true}}
    use {
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons" -- optional, for file icon
      }
    }

    use {"neovim/nvim-lspconfig"}
    use {"williamboman/nvim-lsp-installer"}

    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use {"onsails/lspkind-nvim"}

    use {"tami5/lspsaga.nvim"}
    use {"folke/lsp-colors.nvim"}

    use {"hrsh7th/nvim-cmp"} -- Autocompletion
    use {"hrsh7th/cmp-nvim-lsp"}
    use {"hrsh7th/cmp-nvim-lua"}
    use {"hrsh7th/cmp-buffer"}
    use {"hrsh7th/cmp-path"}
    use {"hrsh7th/cmp-cmdline"}

    use {"L3MON4D3/LuaSnip"} -- Snippets
    use {"rafamadriz/friendly-snippets"}
    use {"saadparwaiz1/cmp_luasnip"}

    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        {"nvim-lua/popup.nvim"},
        {"nvim-lua/plenary.nvim"},
        {"nvim-telescope/telescope-fzy-native.nvim"}
      }
    }

    use {"mhartington/formatter.nvim"}
    use {"windwp/nvim-autopairs"}
    use {"windwp/nvim-ts-autotag"}
    use {"numToStr/Comment.nvim"}
  end
)
