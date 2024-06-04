return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        "go",
        "html",
        "java",
        "javascript",
        "json",
        "kotlin",
        "lua",
        "luadoc",
        "markdown",
        "printf",
        "python",
        "regex",
        "rust",
        "swift",
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
        "zig",
      },
      auto_install = true,
      sync_install = true,
      ignore_install = {},
      highlight = {
        enable = true,
      },
      indent = {
        enable = true
      },
    })
  end,
}
