-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

local act = wezterm.action

-- This is where you actually apply your config choices

-- lanuch zsh by default
--config.default_prog = { "/usr/bin/zsh", "-l" }
config.default_prog = { 'powershell', '-NoLogo' }

config.detect_password_input = true

-- color_schemes
-- dark
config.color_scheme = "Apple Classic"
-- config.color_scheme = "Chester"
-- config.color_scheme = "DanQing (base16)"
-- config.color_scheme = "Zenburn"
-- config.color_scheme = "Unikitty Reversible (base16)"
-- config.color_scheme = "Sakura"
-- config.color_scheme = "Sea Shells (Gogh)"
-- config.color_scheme = "Pasque (base16)"
-- config.color_scheme = "Obsidian"

-- config.color_scheme = "Mariana"

-- config.color_scheme = "Toy Chest (Gogh)"

-- light
-- config.color_scheme = "Builtin Solarized Light"
-- config.color_scheme = "Catppuccin Latte"
-- config.color_scheme = "dawnfox"
-- config.color_scheme = "Catppuccin Latte"
-- config.color_scheme = "Default (light) (terminal.sexy)"
-- config.color_scheme = "Mocha (light) (terminal.sexy)"
-- config.color_scheme = "purplepeter"
-- config.color_scheme = "Solarized Light (Gogh)"
-- config.color_scheme = "Novel"

config.window_background_opacity = 0.7

config.font = wezterm.font_with_fallback({
	--"SpaceMono Nerd Font Mono",
	--"JetBrainsMono Nerd Font Mono",
	--"Hack Nerd Font Mono",
	--"Cascadia Mono",
    "FiraCode Nerd Font",
})
config.font_size = 16.0

config.enable_tab_bar = true

config.window_padding = {
	left = 20,
	right = 20,
	top = 10,
	bottom = 10,
}

config.window_close_confirmation = "NeverPrompt"

-- cursor
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 600
config.cursor_blink_ease_out = "Linear"

-- keymappings
config.keys = {
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Next"),
	},
}

-- and finally, return the configuration to wezterm
return config