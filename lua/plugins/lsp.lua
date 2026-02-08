return {
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {"pyright"},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- require("lspconfig").pyright.setup({}) -- this is deprecated
			vim.lsp.config("pyright", {})
			vim.lsp.enable("pyright")
      			vim.api.nvim_create_autocmd("LspAttach", {
      			    callback = function(args)
      			        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
					buffer = args.buf })
      			    end,
      			})

		end,
	},
}
