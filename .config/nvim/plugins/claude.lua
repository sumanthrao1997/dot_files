require("claudecode").setup({
  -- Server Configuration
  port_range = { min = 10000, max = 65535 },
  auto_start = true,
  log_level = "info",
  terminal_cmd = nil,

  -- Send/Focus Behavior
  focus_after_send = false,

  -- Selection Tracking
  track_selection = true,
  visual_demotion_delay_ms = 50,

  -- Terminal Configuration
  terminal = {
    split_side = "right",
    split_width_percentage = 0.30,
    provider = "auto",
    auto_close = true,
    snacks_win_opts = {},
    provider_opts = {
      external_terminal_cmd = nil,
    },
  },

  -- Diff Integration
  diff_opts = {
    layout = "vertical",
    open_in_new_tab = false,
    keep_terminal_focus = false,
    hide_terminal_in_new_tab = false,
  },
})

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>ac", "<cmd>ClaudeCode<cr>",            vim.tbl_extend("force", opts, { desc = "Toggle Claude" }))
map("n", "<leader>af", "<cmd>ClaudeCodeFocus<cr>",       vim.tbl_extend("force", opts, { desc = "Focus Claude" }))
map("n", "<leader>ar", "<cmd>ClaudeCode --resume<cr>",   vim.tbl_extend("force", opts, { desc = "Resume Claude" }))
map("n", "<leader>aC", "<cmd>ClaudeCode --continue<cr>", vim.tbl_extend("force", opts, { desc = "Continue Claude" }))
map("n", "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", vim.tbl_extend("force", opts, { desc = "Select Claude model" }))
map("n", "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>",       vim.tbl_extend("force", opts, { desc = "Add current buffer" }))
map("v", "<leader>as", "<cmd>ClaudeCodeSend<cr>",        vim.tbl_extend("force", opts, { desc = "Send to Claude" }))
map("n", "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>",  vim.tbl_extend("force", opts, { desc = "Accept diff" }))
map("n", "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>",    vim.tbl_extend("force", opts, { desc = "Deny diff" }))

-- File tree: add file to Claude context
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
  callback = function(ev)
    vim.keymap.set("n", "<leader>as", "<cmd>ClaudeCodeTreeAdd<cr>",
      vim.tbl_extend("force", opts, { desc = "Add file to Claude", buffer = ev.buf }))
  end,
})
