require("luatab").setup()

-- Define colors
local base00 = "#181818" -- Background
local base03 = "#585858" -- Selected tabline
local base05 = "#D0D0D0" -- Foreground

-- Apply highlight groups
vim.api.nvim_set_hl(0, "TabLine", { fg = base03, bg = base00 })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = base05, bg = base00 })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = base00 })
