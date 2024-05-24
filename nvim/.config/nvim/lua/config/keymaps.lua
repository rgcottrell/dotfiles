-- Move to window using the <ctrk> + hjkl keys
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- Clear search highlights
vim.keymap.set("n", "<Leader>h", ":nohlsearch<CR>")
