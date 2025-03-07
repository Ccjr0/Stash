-- RRethy/nvim-base16

vim.cmd('colorscheme base16-default-dark')

-- Define colors

local base00 = "#181818"
local base01 = "#282828"
local base02 = "#383838"
local base03 = "#585858"
local base04 = "#b8b8b8"
local base05 = "#d8d8d8"

-- Apply highlight groups

vim.api.nvim_set_hl(0, "TabLine", { fg = base03, bg = base00 })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = base05, bg = base00 })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = base00 })

vim.api.nvim_set_hl(0, "Comment", { fg = base03, italic = true })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = base05, bold = false, bg = base00 })
vim.api.nvim_set_hl(0, "LineNr", { fg = base03 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = base02, bg = "NONE" })
