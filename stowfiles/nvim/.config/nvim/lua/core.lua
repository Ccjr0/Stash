-- core.lua

-- === OPTIONS ===

vim.opt.hidden = true
vim.opt.confirm = true
vim.opt.swapfile = false
vim.opt.mouse = 'a'
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.backspace = "indent,eol,start"
vim.opt.number = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.scrolloff = 6
vim.opt.sidescrolloff = 6
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.wildignorecase = true
vim.opt.fileignorecase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard:append("unnamedplus")
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.laststatus = 2
vim.opt.signcolumn = 'yes'
vim.opt.conceallevel = 2
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.compatible = false
vim.cmd("syntax on")
-- vim.cmd("filetype plugin on")

-- === KEYMAPS ===

local s = { silent = true }                     -- Silent option
local nr = { noremap = true }                   -- No recursive option
local nrs = { noremap = true, silent = true }   -- No recursive option, silent option
local keymap = vim.api.nvim_set_keymap          -- Shorten function name

-- Map leader key

keymap ('', ';', '<Nop>', nrs)
vim.g.mapleader = ';'
vim.g.maplocalleader = ';'

-- Movement keys

keymap ('n', 'H', 'h', nrs)     -- Normal
keymap ('n', 'J', 'gj', nrs)
keymap ('n', 'K', 'gk', nrs)
keymap ('n', 'L', 'l', nrs)
keymap ('n', 'D', '<C-d>', nrs)
keymap ('n', 'U', '<C-u>', nrs)

keymap ('n', 'gj', 'L', nrs)
keymap ('n', 'gk', 'H', nrs)
keymap ('n', 'gm', 'M', nrs)

keymap ('n', 'gl', '$', nrs)
keymap ('n', 'gh', '0', nrs)

keymap ('v', 'H', 'h', nrs)     -- Visual
keymap ('v', 'J', 'gj', nrs)
keymap ('v', 'K', 'gk', nrs)
keymap ('v', 'L', 'l', nrs)
keymap ('v', 'D', '<C-d>', nrs)
keymap ('v', 'U', '<C-u>', nrs)

keymap ('v', 'gl', '$', nrs)
keymap ('v', 'gh', '0', nrs)

keymap ('v', 'gj', 'L', nrs)
keymap ('v', 'gk', 'H', nrs)
keymap ('v', 'gm', 'M', nrs)

keymap ('x', 'H', 'h', nrs)     -- Block
keymap ('x', 'J', 'gj', nrs)
keymap ('x', 'K', 'gk', nrs)
keymap ('x', 'L', 'l', nrs)
keymap ('x', 'D', '<C-d>', nrs)
keymap ('x', 'U', '<C-u>', nrs)

keymap ('x', 'gl', '$', nrs)
keymap ('n', 'gh', '0', nrs)

-- Split movements

-- keymap ('n', '<C-h>', ':wincmd h<CR>', nrs)
-- keymap ('n', '<C-j>', ':wincmd j<CR>', nrs)
-- keymap ('n', '<C-k>', ':wincmd k<CR>', nrs)
-- keymap ('n', '<C-l>', ':wincmd l<CR>', nrs)

-- Open/exchange Splits

keymap ('n', '<C-w>l', ':vsplit<CR>', nrs)          -- Split right
keymap ('n', '<C-w>h', ':vsplit<CR><C-w>h', nrs)    -- Split left
keymap ('n', '<C-w>j', ':split<CR><C-w>j', nrs)     -- Split below
keymap ('n', '<C-w>k', ':split<CR><C-w>k', nrs)     -- Split above

keymap ('n', '<C-x>', '<C-w>x', nrs)

-- Tabs

keymap ('n', '<C-t>', ':tabnew<CR>', nrs)
keymap ('n', '<A-k>', ':tabn<CR>', nrs)
keymap ('n', '<A-j>', ':tabp<CR>', nrs)

keymap ('n', '<A-S-j>', ':tabmove -1<CR>', nrs)
keymap ('n', '<A-S-k>', ':tabmove +1<CR>', nrs)

-- Quit current window

keymap ('n', '<C-q>', ':qall<CR>', nrs)

-- Close current window

keymap ('n', '<C-c>', '<C-w>c', nrs)

-- Keep yank

keymap ('v', 'p', '"_dP', nrs)

-- Stay in indent mode

keymap ('v', '<', '<gv', nrs)
keymap ('v', '>', '>gv', nrs)

-- Global search/replace shortcut

keymap('n', '<C-f>', ':%s//g<Left><Left>', nr)
keymap ('v', [[<C-f>]], ':s//g<Left><Left>', nr)

--- Clear search query

keymap('n', '<C-/>', ':nohlsearch<CR>', nrs)

-- Disable operation (Unmap)

keymap ('n', 'q', '<Nop>', nrs)

-- Check spelling

keymap ('n', 'gs', ':setlocal spell! spelllang=en_us<CR>', nrs)

--- Function to resource files and sync packer

keymap ('n', '<leader>S', ':PackerSync<CR>', nrs)

-- === AUTOCMD ===

-- Remove trailing whitespaces before saving

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]]
})

-- Run xrdb whenever Xdefaults or Xresources are saved

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = {"*Xresources", "*Xdefaults", "*.xrdb"},
  command = 'silent !xrdb $HOME/.Xresources'
})

-- Clear the message line after specified time in ms

vim.api.nvim_create_autocmd("CmdlineLeave", {
	group = “someGroup”,
	callback = function()
		vim.fn.timer_start(1000, function()
			print(" ")
		end)
	end
})

-- Disable auto-comment on new line

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions = vim.opt_local.formatoptions - { "c", "r", "o" }
  end,
})

--- === MISC ===

-- function ReloadConfig()
--   dofile(vim.fn.stdpath("config") .. "/lua/core.lua")   -- Reload core and plugins
--   dofile(vim.fn.stdpath("config") .. "/lua/plugins.lua")

--   local status_ok, packer = pcall(require, "packer")  -- Try sync packer
--   if status_ok then
--     packer.sync()
--     vim.notify("Core & Plugins Reloaded + Packer Synced!", vim.log.levels.INFO)
--   else
--     vim.notify("Packer not found!", vim.log.levels.WARN)
--   end
-- end
-- keymap ('n', '<leader>S', ':PackerSync<CR>', { noremap = true, silent = true }) -- Keymap to reload

