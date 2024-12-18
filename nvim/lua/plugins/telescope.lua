return {
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.5",
		dependencies = {"nvim-lua/plenary.nvim"},
		config = function()
            require('telescope').setup{
                defaults = { file_ignore_patterns = {"env", "__pycache__"} }
            }
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-Space>", builtin.find_files, {})
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {require("telescope.themes").get_dropdown{}}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	}
}
