local M = {}

M.telescope = {
    plugin = true,

    n = {
        ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find Files" },
        ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find Files" },
        ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live Grep" },
        ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "Buffers" },
        ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "Help Tags" },
    },
}

return M
