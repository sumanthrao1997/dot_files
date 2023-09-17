local wezterm = require 'wezterm'
local utils = {}

-- Example usage:
function utils.open_path_in_new_tab(file_path)
  local function getFileExtension(path)
    return path:match("^.+(%..+)$")
  end

  local function getParentPathWithExtension(path)
    if getFileExtension(path) ~= nil then
      local lastSeparator = path:match("[/\\]([^/\\]+)$")
      if lastSeparator then
        return path:sub(1, -(#lastSeparator + 1))
      else
        return path
      end
    else
      return path
    end
  end

  local act = wezterm.action
  local action = act.SpawnCommandInNewTab {
    cwd = getParentPathWithExtension(file_path),
    set_environment_variables = {
      TERM = 'screen-256color',
    },
    args = {
      'nvim',
      file_path,
    },
  }
  return action
end

return utils
