-- options.lua

local opt = vim.opt

opt.hidden = true
opt.confirm = true
opt.swapfile = false
opt.mouse = 'a'
opt.shiftwidth = 4
opt.autoindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.backspace = "indent,eol,start"
opt.number = true
opt.wrap = true
opt.linebreak = true
opt.showmode = false
opt.cursorline = true
opt.scrolloff = 6
opt.sidescrolloff = 6
opt.ignorecase = true
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.clipboard:append("unnamedplus")
opt.undofile = true
opt.laststatus = 2
opt.signcolumn = 'yes'
opt.conceallevel = 2
opt.termguicolors = true
opt.background = "dark"

