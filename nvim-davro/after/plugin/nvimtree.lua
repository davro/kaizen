-- disable netrw at the very start of your init.lua

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
--require("nvim-tree").setup()

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  update_focused_file = {
    enable = true
  }
})

