vim.cmd("filetype plugin off")
vim.cmd("set ignorecase")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set number")

-- trim trail whitespaces
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.cmd([[%s/\s\+$//e]])
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "make",
	callback = function()
		vim.bo.expandtab = false
		vim.bo.shiftwidth = 8
		vim.bo.tabstop = 8
		vim.bo.softtabstop = 0
	end,
})

-- Show inline Diagnostics
vim.diagnostic.config({ virtual_text = true })

-- Tema
vim.cmd("colorscheme vscode")
vim.o.background = "dark"
