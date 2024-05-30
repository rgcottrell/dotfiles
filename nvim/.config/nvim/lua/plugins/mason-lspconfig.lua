return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  config = function()
    require("mason-lspconfig").setup({
      -- Rust is configured automatically by the rustacean plugin.
      ensure_installed = {
        "bashls", -- Bash
        "clangd", -- C/C++
        "cssls", -- CSS
        "dockerls", -- Docker
        "eslint", -- ESLint
        "gopls", -- Go
        "html", -- HTML
        "jsonls", -- JSON
        "lemminx", -- XML
        "lua_ls", -- Lua
        "pyright", -- Python
        "spectral", -- OpenAPI
        "tailwindcss", -- Tailwind CSS
        "taplo", -- TOML
        "tsserver", -- TypeScript
        "yamlls", -- YAML
        "zls", -- Zig
      },
      automatic_installation = true,
    })
  end,
}
