-- kyazdani42/nvim-web-devicons

require'nvim-web-devicons'.setup {
 -- your personal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#89E051",
    cterm_color = "113",
    name = "Zsh"
  },
  md = {
      icon = "",
      color = "#DDDDDD",
      cterm_color = "253",
      name = "Markdown"
  },
 };
}

