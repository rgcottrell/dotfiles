return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup()

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, file in ipairs(harpoon_files.items) do
        table.insert(file_paths, file.path)
      end

      local conf = require("telescope.config").values
      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    -- vim.keymap.set("n", "<C-e>", function()
    --   toggle_telescope(harpoon:list())
    -- end, { desc = "Open harpoon window" })
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Toggle harpoon Quick menu" })

    vim.keymap.set("n", "<Leader>hq", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Toggle harpoon quick menu" })
    vim.keymap.set("n", "<Leader>ha", function()
      harpoon:list():add()
    end, { desc = "Add current file to harpoon" })
    vim.keymap.set("n", "<Leader>hr", function()
      harpoon:list():remove()
    end, { desc = "Remove current file from harpoon" })
    vim.keymap.set("n", "<Leader>hc", function()
      harpoon:list():clear()
    end, { desc = "Clear harpoon list" })
    vim.keymap.set("n", "<Leader>h1", function()
      harpoon:list():select(1)
    end, { desc = "Navigate to harpoon file [1]" })
    vim.keymap.set("n", "<Leader>h2", function()
      harpoon:list():select(2)
    end, { desc = "Navigate to harpoon file [2]" })
    vim.keymap.set("n", "<Leader>h3", function()
      harpoon:list():select(3)
    end, { desc = "Navigate to harpoon file [3]" })
    vim.keymap.set("n", "<Leader>h4", function()
      harpoon:list():select(4)
    end, { desc = "Navigate to harpoon file [4]" })
    vim.keymap.set("n", "<Leader>h5", function()
      harpoon:list():select(5)
    end, { desc = "Navigate to harpoon file [5]" })
  end,
}
