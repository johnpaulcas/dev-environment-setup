local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBlock",
	color_scheme = "Tokyo Night Moon",
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" }),
	font_size = 12,
	-- macos_window_background_blur = 20,
	background = {
		{
			source = {
				File = "/Users/paul/Pictures/cyperpunk.jpg",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.25,
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.8,
		},
	},
	window_padding = {
		left = 3,
		right = 3,
		top = 10,
		bottom = 2,
	},
	colors = {
		cursor_bg = "#94e2d5",
		-- Overrides the text color when the current cell is occupied by the cursor
		cursor_fg = "black",
		-- Specifies the border color of the cursor when the cursor style is set to Block,
		-- or the color of the vertical or horizontal bar when the cursor style is set to
		-- Bar or Underline.
		cursor_border = "#94e2d5",
	},
}

return config
