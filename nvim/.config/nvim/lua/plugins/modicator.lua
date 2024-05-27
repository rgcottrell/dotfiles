return {
  "mawkler/modicator.nvim",
  event = "BufEnter",
  config = function()
    require("modicator").setup({
      show_warnings = false,
      highlights = {
        defaults = {
          bold = true,
          italic = true,
        },
      },
    })
  end,
}
