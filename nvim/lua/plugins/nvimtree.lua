return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			git = {
				enable = true,
				ignore = false,
				timeout = 400,
			},
            renderer = {
                root_folder_modifier = false
            },
            update_focused_file = {
                enable = true
            }
		})
	end,
}
