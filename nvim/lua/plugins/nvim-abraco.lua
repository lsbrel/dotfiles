return {
	-- "lsbrel/nvim-abraco",
	-- only for development purposes
	dev = { true },
	dir = "~/Documentos/lsbrelww/nvim-abraco/",
	config = function()
		require("nvim-abraco").setup({})
	end,
}
