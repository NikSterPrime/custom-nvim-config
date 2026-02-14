return{
    { --show CSS colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    {
	'vidocqh/auto-indent.nvim',
	opts = {},
    },
    {
	'tpope/vim-fugitive',
    },
    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
    },
}
