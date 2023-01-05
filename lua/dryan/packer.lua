-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use "zbirenbaum/copilot.lua"
  -- use {
  --   'zbirenbaum/copilot-cmp',
  --   after = "copilot.lua"
  -- }

  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  use "lewis6991/gitsigns.nvim"
  use 'bronson/vim-trailing-whitespace'
  -- use 'dense-analysis/ale'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    event = 'ColorScheme',
    config = function()
      require('lualine').setup({
        options = {
          --- @usage 'rose-pine' | 'rose-pine-alt'
          theme = 'rose-pine'
        }
      })
    end
  }
  use 'lukas-reineke/indent-blankline.nvim'

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd.colorscheme('rose-pine')
    end
  })

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
