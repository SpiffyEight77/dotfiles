local wezterm = require 'wezterm';

return {
	font = wezterm.font_with_fallback { 'JetBrains Mono' },
	font_size = 14.0,

	color_scheme_dirs = { "$HOME/.config/wezterm/colors" },

	color_scheme = "wezterm_tokyonight_storm",

	scrollback_lines = 3500,

	-- default_prog = { '/bin/zsh', '-c', '-l', 'tmux attach'},

	enable_tab_bar = false,

	window_decorations = "RESIZE",
}
