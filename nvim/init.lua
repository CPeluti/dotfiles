require "plugins"
require "keymaps"
require "whichkey"
require "lsp"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.cmd.colorscheme "catppuccin"
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.wo.number=true
vim.opt.cursorline=true
