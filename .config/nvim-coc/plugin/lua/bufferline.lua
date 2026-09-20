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