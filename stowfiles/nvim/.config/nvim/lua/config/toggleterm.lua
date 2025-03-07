-- akinsho/toggleterm.nvim

require("toggleterm").setup{
    direction = "float",
    shade_terminals = false
}

vim.keymap.set ('n', '<leader>t', ':ToggleTerm<CR>')
