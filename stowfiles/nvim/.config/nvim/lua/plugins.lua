local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    -- Neovim
    
    use 'wbthomason/packer.nvim'
    use 'RRethy/base16-nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvimdev/dashboard-nvim'
    use 'mrjones2014/smart-splits.nvim'
    use 'folke/zen-mode.nvim'
    use 'terrortylor/nvim-comment'
    use 'norcalli/nvim-colorizer.lua'

    -- Vim

    use 'ptzz/lf.vim'
    use 'voldikss/vim-floaterm'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
