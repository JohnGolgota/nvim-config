local M = {}

M.doc = {
  -- is key map for plugin. bool nulleable
  plugin = true,
  -- n: normal. object
}

M.general = { n = { ["<C-s>"] = { "<cmd> w <CR>", "Save File" } }, i = { ["<C-s>"] = { "<cmd> w <CR>", "Save File" } } }

M.telescope = {
  plugin = true,

  -- Modes n: normal, i: insert, v: visual, t: terminal

  n = {
    ["<leader>ee"] = { "<cmd> Telescope find_files <CR>", "Find Files" },
    ["<leader>ea"] = {
      "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>",
      "Find Files",
    },
    ["<leader>eg"] = { "<cmd> Telescope live_grep <CR>", "Live Grep" },
    ["<leader>eb"] = { "<cmd> Telescope buffers <CR>", "Buffers" },
    ["<leader>eh"] = { "<cmd> Telescope help_tags <CR>", "Help Tags" },
  },
}

return M
