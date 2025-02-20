-- init.lua

--------------
-- SETTINGS --
--------------

local set = vim.opt

set.hidden = true
set.confirm = true
set.mouse = 'a'
set.termguicolors = true
set.number = true
set.swapfile = false
set.wrap = true
set.linebreak = true
set.cursorline = true
set.showmode = false
set.scrolloff = 6
set.sidescrolloff = 6
set.ignorecase = true
set.smartcase = true
set.splitbelow = true
set.splitright = true
set.clipboard = 'unnamedplus'
set.shiftwidth = 4
set.autoindent = true
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true
set.signcolumn = 'yes'
set.laststatus = 2
set.undofile = true
-- set.formatoptions -= 'cro'
-- set.fo += 'tcro'

-------------
-- KEYMAPS --
-------------

local s = { silent = true }                     -- Silent option
local nr = { noremap = true }                   -- No recursive option
local nrs = { noremap = true, silent = true }   -- No recursive option, silent option
local keymap = vim.api.nvim_set_keymap          -- Shorten function name

-- Map leader key
keymap ("", ";", "<Nop>", nrs)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Movement keys (normal)
keymap ("n", "H", "h", nrs)
keymap ("n", "J", "gj", nrs)
keymap ("n", "K", "gk", nrs)
keymap ("n", "L", "l", nrs)

keymap ("n", "gj", "L", nrs)
keymap ("n", "gk", "H", nrs)
keymap ("n", "gm", "M", nrs)

-- Movement keys (visual)
keymap ("v", "H", "h", nrs)
keymap ("v", "J", "gj", nrs)
keymap ("v", "K", "gk", nrs)
keymap ("v", "L", "l", nrs)

keymap ("v", "gj", "L", nrs)
keymap ("v", "gk", "H", nrs)
keymap ("v", "gm", "M", nrs)

-- Movement keys (block)
keymap ("x", "H", "h", nrs)
keymap ("x", "J", "gj", nrs)
keymap ("x", "K", "gk", nrs)
keymap ("x", "L", "l", nrs)

-- Split movements
keymap ("n", "<C-h>", ":wincmd h<CR>", nrs)
keymap ("n", "<C-j>", ":wincmd j<CR>", nrs)
keymap ("n", "<C-k>", ":wincmd k<CR>", nrs)
keymap ("n", "<C-l>", ":wincmd l<CR>", nrs)

keymap ("n", "<A-S-k>", ":vertical resize +3<CR>", nrs)
keymap ("n", "<A-S-j>", ":vertical resize -3<CR>", nrs)

-- Tabs
keymap ("n", "<C-t>", ":tabnew<CR>", nrs)
keymap ("n", "<A-k>", ":tabn<CR>", nrs)
keymap ("n", "<A-j>", ":tabp<CR>", nrs)

-- Quit current window
keymap ("n", "<C-q>", ":quit<CR>", nrs)

-- Close current window
keymap ("n", "<C-c>", "<C-w>c", nrs)

-- Keep yank
keymap ("v", "p", '"_dP', nrs)

-- Stay in indent mode
keymap ("v", "<", "<gv", nrs)
keymap ("v", ">", ">gv", nrs)

-- Global search/replace shortcut
keymap ("n", [[<C-\>]], ":%s//g<Left><Left>", nr)

-- Visual search/replace shortcut
keymap ("v", [[<C-\>]], ":s//g<Left><Left>", nr)

--- Clear search query
keymap ("n", "<C-/>", ":noh<CR>", nrs)

-- Disable operation (Unmap)
keymap ("n", "<C-z>", "<Nop>", nrs)
keymap ("n", "<C-q>", "<Nop>", nrs)

-- Check spelling
keymap ("n", "gs", ":setlocal spell! spelllang=en_us<CR>", nrs)


