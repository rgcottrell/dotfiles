return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<Leader>tt", ":TestNearest<CR>", { desc = "Run Nearest Test" })
    vim.keymap.set("n", "<Leader>tT", ":TestFile<CR>", { desc = "Run All Tests in File" })
    vim.keymap.set("n", "<Leader>ta", ":TestSuite<CR>", { desc = "Run All Tests" })
    vim.keymap.set("n", "<Leader>tl", ":TestLast<CR>", { desc = "Run Last Test" })
    vim.keymap.set("n", "<Leader>tg", ":TestVisit<CR>", { desc = "Run Tests from Last File" })
    vim.cmd("let test#strategy = 'vimux'")
  end,
}
