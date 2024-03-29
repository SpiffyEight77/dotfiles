local status, bufferline = pcall(require, "bufferline")
if not status then
	vim.notify("bufferline not found")
	return
end


bufferline.setup({
	options = {
		close_command = "Bdelete! %d",
		right_mouse_command = "Bdelete! %d",

		buffer_close_icon = '󰅖',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',

		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left"
			}
		},

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
