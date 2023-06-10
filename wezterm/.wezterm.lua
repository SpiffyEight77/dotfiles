local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme_dirs = { '~/.config/wezterm/colors' }
config.color_scheme = 'tokyonight_moon'

config.font = wezterm.font 'Fira Code'

return config

