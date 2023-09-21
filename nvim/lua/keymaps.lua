local map = vim.keymap.set
local builtin = require('telescope.builtin')
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

local opts = {noremap=true}
local nxo = {'n','x','o'}

-- remap colemak
map(nxo, 'n', 'j', opts)
map(nxo, 'e', 'k', opts)
map(nxo, 'i', 'l', opts)
map(nxo, 'j', 'e', opts)
map({'x','o'}, 'k', 'n', opts)
map(nxo, 'l', 'i', opts)
map({'x','o'}, 'K', 'N', opts)
map(nxo, 'L', 'I', opts)
map("n", "k", "nzzzv")
map("n", "K", "nzzzv")

map("n", "<leader>wh", "<C-w>h", opts)
map("n", "<leader>wn", "<C-w>j", opts)
map("n", "<leader>we", "<C-w>k", opts)
map("n", "<leader>wi", "<C-w>l", opts)

-- usefull remaps

map("v", "N", ":m '>+1<CR>gv=gv")
map("v", "E", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")


map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("x", "<leader>p", "\"_dP")

map("n", "<leader>d", "\"_d")
map("v", "<leader>d", "\"_d")

map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("n", "<leader>Y", "\"+Y")

-- Plugins keymaps

map("n", "<leader>pv", "<Cmd>NvimTreeToggle<CR>")
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<C-f>', builtin.git_files, {})

--map("n", "<space>", "<Cmd>WhichKey<CR>", {desc = "WhichKey"})

map("n", "<leader>a", mark.add_file)
map("n", "<C-s>", ui.toggle_quick_menu)

map("n", "<C-n>", function() ui.nav_file(1) end)
map("n", "<C-e>", function() ui.nav_file(2) end)
map("n", "<C-i>", function() ui.nav_file(3) end)
map("n", "<C-o>", function() ui.nav_file(4) end)

map("n", "<leader>u", vim.cmd.UndotreeToggle)

map("n", "<leader>gs", vim.cmd.Git)


