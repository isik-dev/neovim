return {
      'nvim-treesitter/nvim-treesitter',
      tag = "v0.9.3",
      lazy = false,
      build = ':TSUpdate',
      config = function()
          require("nvim-treesitter.configs").setup({
              ensure_installed = { "python", "lua", "markdown" },
              highlight = { enable = true }
          })
      end,
}
