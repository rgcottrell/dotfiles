return {
  "SmiteshP/nvim-navic",
  dependencies = {
    "nvim-lspconfig",
  },
  config = function()
    require("nvim-navic").setup({
      click = true,
      depth_limit = 0,
      depth_limit_indicator = "..",
      highlight = true,
      lsp = {
        auto_attach = true,
      },
    })
  end,
}
