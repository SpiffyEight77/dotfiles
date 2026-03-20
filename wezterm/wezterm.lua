local wezterm = require "wezterm"

return {
  font = wezterm.font_with_fallback { "JetBrains Mono" },
  font_size = 14.0,

  color_scheme = "rose-pine-moon",

  scrollback_lines = 3500,

  enable_tab_bar = false,

  window_decorations = "RESIZE",
}
