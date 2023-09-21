require "keymaps"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "ggandor/lightspeed.nvim",
  "folke/which-key.nvim",
  "BurntSushi/ripgrep",
  "numToStr/Comment.nvim",
  {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
      'neovim/nvim-lspconfig',
      {
        'hrsh7th/cmp-nvim-lsp',	dependencies = {
	  'L3MON4D3/LuaSnip'
      } },
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim'
    }
  },
  "tpope/vim-fugitive",
  {"nvim-treesitter/nvim-treesitter", build=":TSUpdate"},
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
      dependencies = { 
        'nvim-lua/plenary.nvim',
      }
  },
})

