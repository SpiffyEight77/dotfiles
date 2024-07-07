local status, bufferline = pcall(require, "bufferline")
if not status then
	vim.notify("bufferline not found")
	return
end

bufferline.setup({
	options = {
		close_command = "Bdelete! %d",
		right_mouse_command = "Bdelete! %d",

		buffer_close_icon = '',
		close_icon = '',
		modified_icon = '●',
		left_trunc_marker = '',
		right_trunc_marker = '',

		indicator = {
			style = 'underline',
		},
		numbers = "ordinal",
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		truncate_names = true, -- whether or not tab names should be truncated
		separator_style = { '', '' },

		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			}
		},

		color_icons = true, -- whether or not to add the filetype icon highlights

		diagnostics = "nvim_lsp",
		---@diagnostic disable-next-line: unused-local
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or "")
				s = s .. n .. sym
			end
			return s
		end,
	},
})
