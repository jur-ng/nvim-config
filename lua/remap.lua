local nnoremap = require("keymap").nnoremap
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

map('n', '<A-t>', '<Cmd>Neotree filesystem reveal right<CR>', opts)

nnoremap("<leader>ff", function()
	require('telescope.builtin').find_files()
end)

nnoremap("<leader>fg", function()
	require('telescope.builtin').live_grep()
end)

nnoremap("<leader>fb", function()
	require('telescope.builtin').buffers()
end)

nnoremap("<leader>fh", function()
	require('telescope.builtin').help_tags()
end)
