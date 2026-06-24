-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Encontrar Arquivos via telescop" })
vim.keymap.set("n", "<C-o>", builtin.buffers, { desc = "Buscar por buffers" })

-- Nvimtree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- remover
vim.keymap.set("n", "<leader><Right>", "<C-w>l") -- remover
vim.keymap.set("n", "<leader><Left>", "<C-w>h") -- remover
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>h")

-- Comments
local comments = require("Comment.api")
vim.keymap.set({ "n", "v" }, "<C-;", comments.toggle.blockwise.current)

-- Geral
vim.keymap.set("n", "<S-q>", "%") -- Ir para fechamento
vim.keymap.set("n", "<C-s>", ":w<CR>") -- Salvar
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>") -- Salvar

vim.keymap.set("n", "<C-z>", "u") -- Desfazer

vim.keymap.set("v", "<C-x>", "d") -- Recortar
vim.keymap.set("v", "<C-c>", "y") -- Copiar

vim.keymap.set("n", "<leader>q", function()
	local current = vim.api.nvim_get_current_buf()
	vim.cmd("bnext")
	vim.api.nvim_buf_delete(current, { force = false })
end)

vim.keymap.set("n", "i", function()
	if vim.bo.filetype == "NvimTree" then
		vim.fn.feedkeys("<CR>")
	end
end)

vim.keymap.set("n", "<C-CR>", "o") -- Inserir na proxima linha
vim.keymap.set("i", "<C-CR>", "<Esc>o") -- Inserir na proxima linha

vim.keymap.set("n", "<CR>", "i") -- Inserir

vim.keymap.set("n", "<C-A-CR>", "A") -- Inserir no final da linha
vim.keymap.set("n", "<A-CR>", "I") -- Inserir no começo

vim.keymap.set("n", "<C-Right>", "w") -- Para a proxima palavra --remover
vim.keymap.set("n", "<C-Left>", "b") -- Para palavra anterior --remover

vim.keymap.set("n", "<C-Up>", ":-3<CR>") -- Subir 3 linhas --remover
vim.keymap.set("i", "<C-Up>", "<Esc>n:-3<CR>") -- Subir 3 linhas -- remover
vim.keymap.set("n", "<C-Down>", ":+3<CR>") -- Desce 3 linhas -- remover
vim.keymap.set("i", "<C-Down>", "<Esc>n:+3<CR>") -- Desce 3 linhas -- remover
vim.keymap.set("n", "<C-a>", ":%y<CR>") -- Selecionar tudo
vim.keymap.set("n", "<C-n>", ":enew<CR>") -- Criar novo buffer
vim.keymap.set("n", "<C-k>", ":-3<CR>") -- Subir 3 linhas
vim.keymap.set("i", "<C-k>", "<Esc>n:-3<CR>") -- Subir 3 linhas
vim.keymap.set("n", "<C-j>", ":+3<CR>") -- Desce 3 linhas
vim.keymap.set("i", "<C-j>", "<Esc>n:+3<CR>") -- Desce 3 linhas

-- Formatar
vim.keymap.set("n", "<leader>f", function()
	require("conform").format()
end)

-- Bufferline
vim.keymap.set("n", "<M-Right>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<M-Left>", ":BufferLineCyclePrev<CR>", { silent = true })

vim.keymap.set("n", "<leader>g", require("gitsigns").blame_line)
