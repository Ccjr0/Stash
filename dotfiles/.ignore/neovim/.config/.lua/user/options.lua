-- options.lua
-- :help options

---- Backup/swap file options
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false

---- Search options
vim.opt.hlsearch = true -- Highlight all matches on previous search pattern
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Smart case

---- Indentation options
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.showtabline = 2
vim.opt.smartindent = true

---- Split options
vim.opt.splitbelow = true
vim.opt.splitright = true

---- Timing/completion options
vim.opt.timeoutlen = 1000 -- Time to wait for a mapped sequence to complete (in ms)
vim.opt.updatetime = 300 -- Faster completion (4000ms default)
vim.opt.completeopt = { "menuone", "noselect" } -- Mostly just for cmp

---- Interface options
vim.opt.mouse = "a" -- Enable mouse
vim.opt.termguicolors = false -- Enable guicolors
vim.opt.pumheight = 10 -- Pop up menu height
vim.opt.cursorline = false
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.wrap = true
vim.opt.showmode = true

vim.opt.clipboard = "unnamedplus"
vim.opt.conceallevel = 0 -- So that '' is visible in md files
vim.opt.fileencoding = "utf-8" -- The encoding written to a file
vim.opt.undofile = true -- Enable persistent undo
vim.opt.signcolumn = "yes" -- Always show the sign column, otherwise it would shift the text each time

vim.cmd [[set iskeyword+=-]]
vim.cmd [[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]
vim.cmd [[autocmd BufWritePre * %s/\s\+$//e]]
vim.cmd [[autocmd BufWritePost *Xresources,*Xdefaults !xrdb %]]
