return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
	    -- telescope setup goes here
	    require("telescope").setup({})
	    -- load fzf extension here
	    require("telescope").load_extension("fzf")
    end,
}
