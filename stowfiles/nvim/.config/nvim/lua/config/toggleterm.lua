require("toggleterm").setup{
    direction = "float",
    shade_terminals = false
}

vim.keymap.set ('n', '<leader>T', ':ToggleTerm<CR>')
