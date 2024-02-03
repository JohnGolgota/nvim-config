local default_plugins = {
  -- LSP
  "neovim/nvim-lspconfig",
  -- Visualize LSP
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },
  -- Svelte
  "evanleck/vim-svelte",
  {
    "neoclide/coc.nvim",
    branch = "release",
  },
  -- Autocomplete
  "hrsh7th/nvim-cmp",
  {
    "hrsh7th/cmp-nvim-lsp",
    "jbyuki/instant.nvim",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
  },
  -- snippets engine
  "hrsh7th/vim-vsnip",
  -- rust analyzer
  "simrat39/rust-tools.nvim",
  "github/copilot.vim",
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require("core.utils").load_mappings("nvimtree")
    end,
  },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    init = function()
      require("core.utils").load_mappings("telescope")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSInstall" },
    build = { "TSUpdate" },
  },
}

return require("lazy").setup(default_plugins)
