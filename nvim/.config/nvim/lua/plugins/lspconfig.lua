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
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")
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
    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })
    lspconfig.zls.setup({
      capabilities = capabilities,
    })

    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<Space>rn", vim.lsp.buf.rename, {})
  end,
}
