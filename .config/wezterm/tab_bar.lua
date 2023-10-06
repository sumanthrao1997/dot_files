local wezterm = require 'wezterm'
local tab_bar = {}

local function basename(s)
  return string.gsub(s, "(.*[/\\])(.*)", "%2")
end

function tab_bar.apply_to_config(config)
  wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local index = tab.tab_index + 1
    local pane = tab.active_pane
    local title = tab.active_pane.title
    local progress = basename(pane.foreground_process_name)
    local text = index .. ": " .. title .. " || " .. progress
    return { { Text = text }, }
  end)

  -- wezterm.on(
  -- 'format-tab-title',
  -- function(tab, tabs, panes, config, hover, max_width)
  -- local edge_background = '#0b0022'
  -- local background = '#1b1032'
  -- local foreground = '#808080'

  -- if tab.is_active then
  -- background = '#2b2042'
  -- foreground = '#c0c0c0'
  -- elseif hover then
  -- background = '#3b3052'
  -- foreground = '#909090'
  -- end

  -- local edge_foreground = background

  -- local title = tab_title(tab)

  -- -- ensure that the titles fit in the available space,
  -- -- and that we have room for the edges.
  -- title = wezterm.truncate_left(title, max_width - 2)

  -- return {
  -- { Background = { Color = edge_background } },
  -- { Foreground = { Color = edge_foreground } },
  -- -- { Text = SOLID_LEFT_ARROW },
  -- { Background = { Color = background } },
  -- { Foreground = { Color = foreground } },
  -- { Text = title },
  -- { Background = { Color = edge_background } },
  -- { Foreground = { Color = edge_foreground } },
  -- -- { Text = SOLID_RIGHT_ARROW },
  -- }
  -- end
  -- )
end

return tab_bar
