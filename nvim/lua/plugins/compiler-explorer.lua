return {
	"dchinmay2/godbolt.nvim",
	config = function()
		require("godbolt").setup({
			languages = {
				c = { compiler = "cg133", options = {} },
			},
		})
	end,
}
