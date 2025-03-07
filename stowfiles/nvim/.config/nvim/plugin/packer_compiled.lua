-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ccjr/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/home/ccjr/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/home/ccjr/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/home/ccjr/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ccjr/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nÇ\6\0\0\t\0\"\1<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\6\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0B\4\4\0?\4\0\0=\3\5\0029\2\24\0019\2\25\2+\3\2\0=\3\26\0026\2\27\0009\2\28\0029\2\29\2'\4\15\0'\5\30\0'\6\31\0005\a \0B\2\5\0019\2!\0009\4\24\1B\2\2\1K\0\1\0\nsetup\1\0\1\vsilent\2\15:Alpha<CR>\14<leader>d\bset\vkeymap\bvim\14noautocmd\topts\vconfig\14:quit<CR>\22ó°…š  > Quit Nvim\6q#:edit $HOME/.config/nvim/.<CR>\18î˜•  > Config\6c&:edit $HOME/Documents/notes/.<CR>\17ï„  > Notes\6n\28:Telescope oldfiles<CR>\18ïƒ…  > Recent\6r\20:enew <BAR><CR>\22ï€–  > Empty file\6e\vbutton\fbuttons\1\n\0\0\30                         \30                         \30                         \30               _         \30   ____ _   __(_)___ ___ \30  / __ \\ | / / / __ `__ \\\30 / / / / |/ / / / / / / /\30/_/ /_/|___/_/_/ /_/ /_/ \30                         \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\v€€À™\4\0" },
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["lf.vim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/lf.vim",
    url = "https://github.com/ptzz/lf.vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["luatab.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/luatab.nvim",
    url = "https://github.com/alvarosevilla95/luatab.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-markdown"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/nvim-markdown",
    url = "https://github.com/ixru/nvim-markdown"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["smart-splits.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/smart-splits.nvim",
    url = "https://github.com/mrjones2014/smart-splits.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/ccjr/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nÇ\6\0\0\t\0\"\1<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\6\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0B\4\4\0?\4\0\0=\3\5\0029\2\24\0019\2\25\2+\3\2\0=\3\26\0026\2\27\0009\2\28\0029\2\29\2'\4\15\0'\5\30\0'\6\31\0005\a \0B\2\5\0019\2!\0009\4\24\1B\2\2\1K\0\1\0\nsetup\1\0\1\vsilent\2\15:Alpha<CR>\14<leader>d\bset\vkeymap\bvim\14noautocmd\topts\vconfig\14:quit<CR>\22ó°…š  > Quit Nvim\6q#:edit $HOME/.config/nvim/.<CR>\18î˜•  > Config\6c&:edit $HOME/Documents/notes/.<CR>\17ï„  > Notes\6n\28:Telescope oldfiles<CR>\18ïƒ…  > Recent\6r\20:enew <BAR><CR>\22ï€–  > Empty file\6e\vbutton\fbuttons\1\n\0\0\30                         \30                         \30                         \30               _         \30   ____ _   __(_)___ ___ \30  / __ \\ | / / / __ `__ \\\30 / / / / |/ / / / / / / /\30/_/ /_/|___/_/_/ /_/ /_/ \30                         \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\v€€À™\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
