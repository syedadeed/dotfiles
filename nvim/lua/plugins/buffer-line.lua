return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function ()
		local bufferline = require('bufferline')
		bufferline.setup{
			options = {
				style_preset = bufferline.style_preset.no_italic,
				numbers = "none",
				indicator = {style = "none"},
				show_buffer_icons = false,
				show_buffer_close_icons = false,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						seprator = false,
					}
				}
			}
		}
	end
}
