return {
  'VonHeikemen/lsp-zero.nvim',
  lazy = false,
  dependencies = {
    -- LSP Support
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
  },
  config = function()
    local lsp = require("lsp-zero")
    local cmp = require("cmp")

    lsp.preset("recommended")

    lsp.ensure_installed({
      'tsserver',
      'eslint',
      'pyright',
      'prismals',
    })

    lsp.on_attach(function(client, bufnr)
      vim.keymap.set("n", "gf", function() vim.lsp.buf.format { async = true } end,
        { buffer = bufnr, remap = false, desc = "Format" })
      vim.keymap.set("i", "<C-Space>", function() vim.lsp.buf.signature_help() end,
        { buffer = bufnr, remap = false, desc = "Signature Help" })
    end)

    lsp.set_preferences({
      sign_icons = {}
    })


    local cmp_mappings = lsp.defaults.cmp_mappings({
      ['<CR>'] = cmp.mapping.confirm({
        -- documentation says this is important.
        -- I don't know why.
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      }),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
    })

    -- disable completion with tab
    cmp_mappings['<Tab>'] = nil
    cmp_mappings['<S-Tab>'] = nil

    lsp.setup_nvim_cmp({
      mapping = cmp_mappings,
    })

    lsp.setup()

    vim.api.nvim_create_autocmd(
      "BufWritePre",
      {
        pattern = "*.ts,*.tsx,*.js,*.jsx",
        command = "EslintFixAll",
      })
  end
}
