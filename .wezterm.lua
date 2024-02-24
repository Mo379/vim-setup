-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'deep'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_opacity = 0.9
config.window_frame = {
  border_left_width = '0.15cell',
  border_left_color = 'silver',
  border_bottom_height = '0.15cell',
  border_bottom_color = 'silver',
}
-- This is where you actually apply your config choices
-- and finally, return the configuration to wezterm
return config

