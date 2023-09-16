local wezterm = require 'wezterm'
local utils = {}

function utils.open_dir_in_new_tab(dir)
  local act = wezterm.action
  local action = act.SpawnCommandInNewTab {
    cwd = dir,
    set_environment_variables = {
      TERM = 'screen-256color',
    },
    args = {
      'nvim',
      dir,
    },
  }
  return action
end

return utils
