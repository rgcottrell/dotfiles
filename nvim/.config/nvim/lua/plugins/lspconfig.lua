return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "j-hui/fidget.nvim",
    "folke/neodev.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.bashls.setup({
      capabilities = capabilities,
    })
    lspconfig.dockerls.setup({
      capabilities = capabilities,
    })
    lspconfig.gopls.setup({
      capabilities = capabilities,
    })
    lspconfig.html.setup({
      capabilities = capabilities,
    })
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
    lspconfig.taplo.setup({
      capabilities = capabilities,
    })
    lspconfig.tailwindcss.setup({
      capabilities = capabilities,
    })
    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })
    lspconfig.zls.setup({
      capabilities = capabilities,
    })
  end,
}
