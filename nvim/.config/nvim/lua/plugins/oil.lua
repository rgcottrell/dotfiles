return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "-", "<Cmd>Oil --float<CR>", desc = "Open parent directory" },
  },
  config = function()
    require("oil").setup({
      default_file_explorer = false,
      float = {
        max_height = 20,
        max_width = 60,
      },
    })
  end,
}
