return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  config = function()
    require("mason-lspconfig").setup({
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
        "rust_analyzer", -- Rust
        "spectral", -- OpenAPI
        "tailwindcss", -- Tailwind CSS
        "taplo", -- TOML
        "tsserver", -- TypeScript
        "yamlls", -- YAML
      },
      automatic_installation = true,
    })
  end,
}
