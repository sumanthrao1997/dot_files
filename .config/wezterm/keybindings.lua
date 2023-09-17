local wezterm = require 'wezterm'
local utils = require 'utils'
local keybindings = {}


function keybindings.apply_to_config(config)
  local act = wezterm.action
  config.keys = {
    {
      key = '|',
      mods = 'LEADER|SHIFT',
      action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = '-',
      mods = 'LEADER',
      action = act.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
      key = 'K',
      mods = 'CTRL|SHIFT',
      action = act.ClearScrollback 'ScrollbackAndViewport',
    },
    -- resize mode with r
    {
      key = 'r',
      mods = 'LEADER',
      action = act.ActivateKeyTable {
        name = 'resize_pane',
        one_shot = false,
      },
    },
    ------------------------------ to open directly ---------------------------------
    {
      -- to open config in tab
      key = 'F2',
      mods = 'CTRL|SHIFT',
      action = utils.open_path_in_new_tab(wezterm.config_file)
    },
    {
      -- to open vim config in new tab
      key = 'F1',
      mods = 'CTRL|SHIFT',
      action = utils.open_path_in_new_tab('~/.config/nvim/')
    },
    {
      -- to open config in tab
      key = 'F3',
      mods = 'CTRL|SHIFT',
      action = utils.open_path_in_new_tab(os.getenv('HOME') .. '/.zshrc')
    },
  }


  config.key_tables = {
    -- Defines the keys that are active in our resize-pane mode.
    -- Since we're likely to want to make multiple adjustments,
    -- we made the activation one_shot=false. We therefore need
    -- to define a key assignment for getting out of this mode.
    -- 'resize_pane' here corresponds to the name="resize_pane" in
    -- the key assignments above.
    resize_pane = {
      { key = 'LeftArrow',  action = act.AdjustPaneSize { 'Left', 1 } },
      { key = 'h',          action = act.AdjustPaneSize { 'Left', 1 } },
      { key = 'RightArrow', action = act.AdjustPaneSize { 'Right', 1 } },
      { key = 'l',          action = act.AdjustPaneSize { 'Right', 1 } },
      { key = 'UpArrow',    action = act.AdjustPaneSize { 'Up', 1 } },
      { key = 'k',          action = act.AdjustPaneSize { 'Up', 1 } },
      { key = 'DownArrow',  action = act.AdjustPaneSize { 'Down', 1 } },
      { key = 'j',          action = act.AdjustPaneSize { 'Down', 1 } },

      -- Cancel the mode by pressing escape
      { key = 'Escape',     action = 'PopKeyTable' },
    },
  }
end

return keybindings
