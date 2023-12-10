-- init.lua

------------
-- OPTIONS |
------------
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

------------
-- KEYMAPS |
------------
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

------------
-- PLUGINS |
------------
-- local fn = vim.fn

-- -- Automatically install packer
-- local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
-- if fn.empty(fn.glob(install_path)) > 0 then
--     PACKER_BOOTSTRAP = fn.system({
--         "git",
--         "clone",
--         "--depth",
--         "1",
--         "https://github.com/wbthomason/packer.nvim",
--         install_path,
--     })
--     print("Installing packer close and reopen Neovim...")
--     vim.cmd([[packadd packer.nvim]])
-- end

-- -- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--     augroup packer_user_config
--        autocmd!
--        autocmd BufWritePost plugins.lua source <afile> | PackerSync
--     augroup end
-- ]]

-- -- Use a protected all so we don't error out on first use
-- local status_ok, packer = pcall(require, "packer")
-- if not status_ok then
--     return
-- end

-- -- Have packer use a popup window
-- packer.init {
--     display = {
--         open_fn = function()
--             return require("packer.util").float
--         end,
--     },
-- }

-- -- Install your plugins here
-- return packer.startup(function(use)
--     use "wbthomason/packer.nvim" -- Have packer manage itself
--     use "vimwiki/vimwiki"
--     use "mcchrish/nnn.vim"
--     use "vim-airline/vim-airline"
--     use "vim-airline/vim-airline-themes"
--     use "mrjones2014/smart-splits.nvim"
--     use "terryma/vim-multiple-cursors"
--     use "ap/vim-css-color"
--     use "tpope/vim-commentary"
--     use "tpope/vim-surround"
--     use "tpope/vim-fugitive"
--     use "mfussenegger/nvim-dap"
--     use { "iamcco/markdown-preview.nvim", run = 'cd app && yarn install', cmd = 'MarkdownPreview' }

--     -- Automatically set up your configuration after cloning packer.nvim
--     -- Put this at the end after all plugins
--     if PACKER_BOOTSTRAP then
--         require ("packer").sync()
--     end
-- end)
