-- plugins.lua

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
       autocmd!
       autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected all so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "vimwiki/vimwiki"
    use "mcchrish/nnn.vim"
    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"
    use "mrjones2014/smart-splits.nvim"
    use "terryma/vim-multiple-cursors"
    use "ap/vim-css-color"
    use "tpope/vim-commentary"
    use "tpope/vim-surround"
    use "tpope/vim-fugitive"
    use "mfussenegger/nvim-dap"
    use { "iamcco/markdown-preview.nvim", run = 'cd app && yarn install', cmd = 'MarkdownPreview' }
end)
