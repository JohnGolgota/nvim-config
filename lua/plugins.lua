
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"
	-- LSP
	use "neovim/nvim-lspconfig"
	-- Visualize LSP
	use {
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup()
		end
	}
	-- Svelte
	use "evanleck/vim-svelte"
	use {'neoclide/coc.nvim', branch = 'release'}
	-- Autocomplete
	use "hrsh7th/nvim-cmp"
	use {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		after = { "hrsh7th/nvim-cmp" },
		require = { "hrsh7th/nvim-cmp" },
	}
	-- snippets engine
	use "hrsh7th/vim-vsnip"
	-- rust analyzer
	use "simrat39/rust-tools.nvim"
	use "github/copilot.vim"
end)

