return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
    })
    telescope.load_extension("ui-select")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<Leader>s:", builtin.command_history, { desc = "Search recent commands" })
    vim.keymap.set("n", "<Leader>sh", builtin.help_tags, { desc = "Search help" })
    vim.keymap.set("n", "<Leader>sk", builtin.keymaps, { desc = "Search keymaps" })
    vim.keymap.set("n", "<Leader>sf", builtin.find_files, { desc = "Search files" })
    vim.keymap.set("n", "<Leader>ss", builtin.builtin, { desc = "Search telescope builtins" })
    vim.keymap.set("n", "<Leader>sw", builtin.grep_string, { desc = "Search current word" })
    vim.keymap.set("n", "<Leader>sg", builtin.live_grep, { desc = "Search by grep" })
    vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Search diagnostics" })
    vim.keymap.set("n", "<Leader>sr", builtin.resume, { desc = "Search resume" })
    vim.keymap.set("n", "<Leader>s.", builtin.oldfiles, { desc = "Search recent files" })
    vim.keymap.set("n", "<Leader>sb", builtin.buffers, { desc = "Search buffers" })
    vim.keymap.set("n", "<Leader>sc", function()
      builtin.find_files({ cwd = vim.fn.stdpath("config")})
    end, { desc = "Search nvim config files" })
  end,
}
