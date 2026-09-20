-- Replaces coc-explorer. Bindings: <leader>m/n/b/<space> in
-- plugin/plugins/keybindings.vim.
require('neo-tree').setup({
  close_if_last_window = true,
  window = {
    position = 'left',
    mappings = {
      ['l'] = 'open',
      ['h'] = 'close_node',
    },
  },
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = 'open_default',
  },
})
