-- GLOBAL
vim.g.mapleader = " "

-- NO SE
vim.wo.number = true
vim.wo.relativenumber = true

-- OTRO QUE NO SE
vim.o.clipboard = "unnamedplus"
vim.o.list = true
vim.o.undofile = true
vim.o.undodir = vim.fn.expand("~/.config/nvim/undodir")
vim.o.undolevel = 10000
vim.o.updatetime = 300
vim.o.wrap = false
vim.o.completeopt = "menuone,noselect,noinsert"

-- OTRAS DISTINTAS A LAS ANTERIORES PERO QUE TAMPOCO SE
vim.cmd([[ let g:instant_username = "JohnGolgota" ]])
