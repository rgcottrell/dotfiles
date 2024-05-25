return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignore = false,
        },
        follow_current_file = {
          enable = true,
        },
      },
    })

    vim.keymap.set("n", "<Leader>ef", "<Cmd>Neotree filesystem reveal<CR>", { desc = "[E]xplore [F]iles" })
  end,
}
