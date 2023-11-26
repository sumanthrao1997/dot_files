local font_size = 18.0
-- local font_size = 24.0
-- Pull in the wezterm API
local wezterm = require 'wezterm'

--imports
local keybindings = require 'keybindings'
local tab_bar = require 'tab_bar'

-- config init
local config = wezterm.config_builder()

--font size
config.font_size = font_size

-- check_for_updates
config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400

-- Leader key is similar to tmux
config.leader = { key = 'w', mods = 'CTRL', timeout_milliseconds = 1000 }

--  apply all the helper functions
keybindings.apply_to_config(config)
tab_bar.apply_to_config(config)

-- color scheme
config.color_scheme = "Abernathy_black"
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 30
config.scrollback_lines = 10000

-- bell
config.audible_bell = "Disabled"

-- selecting descrete gpu for my situation.
-- can get the available gpus by using wezterm.gui.enumerate_gpus()
for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
  if gpu.backend == 'Vulkan' and gpu.device_type == 'DiscreteGpu' then
    config.webgpu_preferred_adapter = gpu
    config.front_end = 'WebGpu'
    break
  end
end

--return
return config
