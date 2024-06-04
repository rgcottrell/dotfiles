return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "codelldb",
        "eslint",
        "eslint_d",
        "stylua",
        "prettier",
        "pylint",
        "zls",
      },
    })
  end,
}
