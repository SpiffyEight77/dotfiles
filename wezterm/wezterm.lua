local wezterm = require "wezterm"
local act = wezterm.action

return {
  keys = {
    { key = "Enter", mods = "SHIFT", action = act.SendString "\n" },
  },

  font = wezterm.font_with_fallback { "JetBrains Mono" },
  font_size = 14.0,

  color_scheme = "rose-pine-moon",

  scrollback_lines = 3500,

  enable_tab_bar = false,

  window_decorations = "RESIZE",
}
