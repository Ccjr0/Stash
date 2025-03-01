tag = '0.1.8'
config = function()
  require('telescope.builtin').find_files()
end

vim.keymap.set("n", "<leader>f", require('telescope.builtin').find_files)

