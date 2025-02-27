local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Plugins
  use 'RRethy/nvim-base16'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'alvarosevilla95/luatab.nvim'
  use 'mhinz/vim-signify'
  use 'terrortylor/nvim-comment'
  use 'norcalli/nvim-colorizer.lua'
  use 'ptzz/lf.vim'
  use 'voldikss/vim-floaterm'
  use 'mrjones2014/smart-splits.nvim'
  use 'folke/zen-mode.nvim'
  -- use 'goolord/alpha-nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)

