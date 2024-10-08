return {
  "VonHeikemen/lsp-zero.nvim",
  lazy = false,
  branch = "v2.x",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    -- "stevearc/conform.nvim",
  },
  config = function()
    local lsp = require("lsp-zero")
    local cmp = require("cmp")

    lsp.preset({
      name = "recommended",
      set_lsp_keymaps = { preserve_mappings = false },
    })

    lsp.ensure_installed({
      "tsserver",
      "pyright",
      "prismals",
      "lua_ls",
      "jsonls",
      "tailwindcss",
    })

    lsp.configure("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    local root_pattern = require("lspconfig.util").root_pattern

    lsp.configure("tailwindcss", {
      root_dir = root_pattern("tailwind.config.js", "tailwind.config.cjs", "tailwind.config.ts"),
    })

    lsp.on_attach(function(client, bufnr)
      -- local conform = require("conform")
      -- vim.keymap.set("n", "gf", function()
      --   -- vim.lsp.buf.format({ async = true })
      --   conform.format()
      --   print("format")
      -- end, { buffer = bufnr, remap = false, desc = "Format" })

      -- vim.keymap.set("i", "<C-Space>", function() vim.lsp.buf.signature_help() end,
      --   { buffer = bufnr, remap = false, desc = "Signature Help" })
      --
      -- vim.keymap.set("n", "gk", function() vim.lsp.buf.signature_help() end,
      --   { buffer = bufnr, remap = false, desc = "Signature Help" })

      -- vim.api.nvim_create_autocmd("BufWritePre", {
      -- 	pattern = "*.ts,*.tsx,*.js,*.jsx",
      -- 	command = "sil EslintFixAll",
      -- })
    end)

    lsp.set_preferences({
      sign_icons = {},
    })

    local cmp_mappings = lsp.defaults.cmp_mappings({
      ["<CR>"] = cmp.mapping.confirm({
        -- documentation says this is important.
        -- I don't know why.
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      }),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
    })

    -- disable completion with tab
    cmp_mappings["<Tab>"] = nil
    cmp_mappings["<S-Tab>"] = nil

    lsp.setup_nvim_cmp({
      mapping = cmp_mappings,
    })

    lsp.setup()
  end,
}
