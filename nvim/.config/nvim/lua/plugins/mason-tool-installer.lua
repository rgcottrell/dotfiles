return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier",
        "eslint_d",
        "stylua",
        "pylint",
        "eslint",
      },
    })
  end,
}