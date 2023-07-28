 --Buffer line setup
require'bufferline'.setup{
	options = {
		indicator = { style = 'icon', icon = ' '},
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		close_command = "bdelete %d",
		right_mouse_command = "bdelete! %d",
		left_trunc_marker = '',
		right_trunc_marker = '',
		offsets = {{filetype = "NvimTree", text = "EXPLORER", text_align = "center"}},
		show_tab_indicators = true,
		show_close_icon = false,
		diagnostics = "coc",
		diagnostics_indicator =
		function(count, level, diagnostics_dict, context)
			local s = " "
			if context.buffer:current() then
				for e, n in pairs(diagnostics_dict) do
					local sym = e == "error" and " " or (e == "warning" and " " or "" )
					s = s .. n .. sym
				end
			end
			return s
		end
	},
}

local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		history = {
      path = '~/.local/share/nvim/telescope_history',
      limit = 20,
    },
		mappings = {
			i = {
				["<esc>"] = actions.close,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
			n = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
		},
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
	},
	pickers = {
		live_grep = {
			prompt_prefix = "🔍 ",
		},
		grep_string = {
			initial_mode = "normal",
		},
		find_files = {
			theme = "dropdown",
			prompt_title = "",
			previewer = false,
			prompt_prefix = "Files> ",
			layout_config = {
				width = 0.8,
				height = 0.8,
			},
		},
	},
})
