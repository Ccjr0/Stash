-- keymaps.lua

local opts = { noremap = true, silent = true } -- No-recursive option, silent option
local term_opts = { silent = true } -- Silent term option
local keymap = vim.api.nvim_set_keymap -- Shorten function name

-- Map leader key
keymap ("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Smart-splits bindings
keymap ("n", "<C-A-h>", ":SmartResizeLeft<CR>", opts)
keymap ("n", "<C-A-j>", ":SmartResizeDown<CR>", opts)
keymap ("n", "<C-A-k>", ":SmartResizeUp<CR>", opts)
keymap ("n", "<C-A-l>", ":SmartResizeRight<CR>", opts)

keymap ("n", "<C-h>", ":SmartCursorMoveLeft<CR>", opts)
keymap ("n", "<C-j>", ":SmartCursorMoveDown<CR>", opts)
keymap ("n", "<C-k>", ":SmartCursorMoveUp<CR>", opts)
keymap ("n", "<C-l>", ":SmartCursorMoveRight<CR>", opts)

-- Stay in indent mode
keymap ("v", "<", "<gv", opts)
keymap ("v", ">", ">gv", opts)

-- Keep yank
keymap ("v", "p", '"_dP', opts)

-- Global search/replace shortcut
keymap ("n", "<C-s>", ":%s//g<Left><Left>", opts)

-- Visual search/replace shortcut
keymap ("v", "<C-s>", ":s//g<Left><Left>", opts)

-- Disable operation
keymap ("n", "<C-z>", "<Nop>", opts)
keymap ("n", "<C-q>", "<Nop>", opts)

-- Easier movement keys (normal)
keymap ("n", "K", "gk", opts)
keymap ("n", "J", "gj", opts)
keymap ("n", "H", "h", opts)
keymap ("n", "L", "l", opts)

-- Easier movement keys (visual)
keymap ("v", "K", "gk", opts)
keymap ("v", "J", "gj", opts)
keymap ("v", "H", "h", opts)
keymap ("v", "L", "l", opts)

-- Easier close
keymap ("n", "<C-c>", "<C-w>c", opts)

--- Clear search query
keymap ("n", "<C-_>", ":noh<CR>", opts)

