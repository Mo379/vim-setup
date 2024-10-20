-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'deep'
config.window_padding = {
  left = 3,
  right = 3,
  top = 3,
  bottom = 3,
}
config.window_background_opacity = 0.9
config.window_frame = {
  border_left_width = '0.20cell',
  border_left_color = 'silver',
  border_bottom_height = '0.20cell',
  border_bottom_color = 'silver',
  border_right_width = '0.20cell',
  border_right_color = 'silver',
}
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

return config

