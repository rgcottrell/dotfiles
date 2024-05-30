return {
  "alexghergh/nvim-tmux-navigation",
  event = function()
    if vim.fn.exists("$TMUX") == 1 then
      return "VeryLazy"
    end
  end,
  keys = {
    { "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>" },
    { "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>" },
    { "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>" },
    { "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>" },
  },
  config = function()
    require("nvim-tmux-navigation").setup({
      disable_when_zoomed = true,
    })
  end,
}
