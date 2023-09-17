-- Pull in the wezterm API
local wezterm = require 'wezterm'

--imports
local keybindings = require 'keybindings'
local tab_bar = require 'tab_bar'
-- config
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Leader key is similar to tmux
config.leader = { key = 'w', mods = 'CTRL', timeout_milliseconds = 1000 }

--  apply all the helper functions
keybindings.apply_to_config(config)
tab_bar.apply_to_config(config)

--font size
config.font_size = 16.0
-- config.font_size = 22.0
-- selecting descrete gpu for my situation.
-- can grt the available gpus by using wezterm.gui.enumerate_gpus()
for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
  if gpu.backend == 'Vulkan' and gpu.device_type == 'DiscreteGpu' then
    config.webgpu_preferred_adapter = gpu
    config.front_end = 'WebGpu'
    break
  end
end

-- color scheme
config.color_scheme = "Abernathy_black"
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 30
config.scrollback_lines = 10000

config.audible_bell = "Disabled"
--return
return config