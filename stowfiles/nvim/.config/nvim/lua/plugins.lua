-- plugins.lua

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

-- Use packer

use 'wbthomason/packer.nvim'

-- ====== PLUGINS ======

-- Alpha-nvim

use {
     "goolord/alpha-nvim",
     config = function ()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
             [[                         ]],
             [[                         ]],
             [[                         ]],
             [[               _         ]],
             [[   ____ _   __(_)___ ___ ]],
             [[  / __ \ | / / / __ `__ \]],
             [[ / / / / |/ / / / / / / /]],
             [[/_/ /_/|___/_/_/ /_/ /_/ ]],
             [[                         ]],
         }
         dashboard.section.buttons.val = {
             dashboard.button( "e", "  > Empty file" , ":enew <BAR><CR>"),
             dashboard.button( "r", "  > Recent"   ,   ":Telescope oldfiles<CR>"),
             dashboard.button( "n", "  > Notes"    ,   ":edit $HOME/Documents/notes/.<CR>"),
             -- dashboard.button( "t", "  > TODO"    ,    ":edit $HOME/Documents/notes/TODO.md<CR>"),
             dashboard.button( "c", "  > Config" ,     ":edit $HOME/.config/nvim/.<CR>"),
             dashboard.button( "q", "󰅚  > Quit Nvim" ,  ":quit<CR>"),
         }

         dashboard.config.opts.noautocmd = true

         -- vim.cmd[[autocmd User AlphaReady set laststatus=0 | autocmd BufUnload <buffer> set laststatus=2]] -- Show statusline

         vim.keymap.set('n', '<leader>d', ':Alpha<CR>', { silent = true })

         alpha.setup(dashboard.config)
     end
}

use 'numToStr/Comment.nvim'
use 'nvim-lualine/lualine.nvim'
use 'alvarosevilla95/luatab.nvim'
use 'sbdchd/neoformat'
use 'RRethy/nvim-base16'
use 'norcalli/nvim-colorizer.lua'
use 'ixru/nvim-markdown'
use 'nvim-treesitter/nvim-treesitter'
use 'kyazdani42/nvim-web-devicons'
use 'nvim-lua/plenary.nvim'
use 'mrjones2014/smart-splits.nvim'
use 'nvim-telescope/telescope.nvim'
use 'folke/zen-mode.nvim'

-- Vim

-- use 'itchyny/lightline.vim'
use 'ptzz/lf.vim'
use 'voldikss/vim-floaterm'
use 'mhinz/vim-signify'
-- use 'dhruvasagar/vim-open-url'

  if packer_bootstrap then
    require('packer').sync()
  end
end)

