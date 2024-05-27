-- Set <space> as the leader key
vim.keymap.set("n", "<Space>", "")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable netrw plugin
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- Limit number of completion suggestions
vim.opt.pumheight = 10

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Share the system clipboard
vim.opt.clipboard = "unnamedplus"

-- Tabs and indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.breakindent = true

-- Line wrapping
vim.opt.wrap = false

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the
-- search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live as you type
vim.opt.inccommand = "split"

-- Turn on termguicolors for color schemes
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Keep lines above/below the cursor unless the cursor is at the top/bottom of
-- the window
vim.opt.scrolloff = 8

-- Cursor line
vim.opt.cursorline = true

-- Set the color column to 80 characters
vim.opt.colorcolumn = "80"

-- Turn off swapfile
vim.opt.swapfile = false
