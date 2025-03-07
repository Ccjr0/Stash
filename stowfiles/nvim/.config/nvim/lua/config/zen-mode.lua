-- folke/zen-mode.nvim

vim.keymap.set('n', '<leader>r', ':ZenMode<CR>', { silent = true })

require('zen-mode').setup({
    window = {
        backdrop = 1,
        width = .60,
        height = .85,
        options = {
            signcolumn = "no",
            number = false,
        },
    },
})
