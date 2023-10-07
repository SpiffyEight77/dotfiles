local wezterm = require 'wezterm';

return {
	font = wezterm.font_with_fallback { 'JetBrains Mono' },
	font_size = 14.0,

	-- color_scheme = 'tokyonight_storm',

	color_scheme = 'rose-pine-moon',

	scrollback_lines = 3500,

	-- default_prog = { '/bin/zsh', '-c', '-l', 'tmux attach'},

	enable_tab_bar = false,

	window_decorations = "RESIZE",

	-- window_background_opacity = 0.8,

	-- macos_window_background_blur = 100,
}
