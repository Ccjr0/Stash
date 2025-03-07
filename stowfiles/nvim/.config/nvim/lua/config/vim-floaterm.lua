-- voldikss/vim-floaterm

vim.g.floaterm_title = ''
vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9
vim.g.floaterm_autoclose = 2

vim.keymap.set ('n', '<leader>t', ':FloatermNew<CR>', { silent = true })
