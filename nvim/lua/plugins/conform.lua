return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				javascriptreact = { "prettier" },
				json = { "prettier" },
				terraform = { "terraform_fmt" },
				python = { "black" },
				sql = { "sqlfmt" },
				lua = { "stylua" },
				go = { "gofumpt" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				rust = { "rustfmt" },
				php = { "pretty-php" },
				xml = { "xmlformat" },
			},
		})
	end,
}
