-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "Catppuccin Macchiato"

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 19

config.enable_tab_bar = false

config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 8

-- and finally, return the configuration to wezterm
return config
