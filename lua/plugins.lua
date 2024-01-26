
return require("lazy").setup({
	-- LSP
	"neovim/nvim-lspconfig",
	-- Visualize LSP
	{
		"j-hui/fidget.nvim",
		config = function()
		    require("fidget").setup()
		end
	},
	-- Svelte
	"evanleck/vim-svelte",
	{'neoclide/coc.nvim', branch = 'release'},
	-- Autocomplete
	"hrsh7th/nvim-cmp",
	{
		"hrsh7th/cmp-nvim-lsp",
		"jbyuki/instant.nvim",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		dependencies = { "hrsh7th/nvim-cmp" },
	},
	-- snippets engine
	"hrsh7th/vim-vsnip",
	-- rust analyzer
	"simrat39/rust-tools.nvim",
	"github/copilot.vim",
    {
        "nvim-neo-tree/neo-tree.nvim",
        keys = {
            { "<leader>ft", "<cmd>NeoTree toggle<cr>", desc = "NeoTree" },
        },
        config = function()
            require("neo-tree").setup()
        end,
    }
})

