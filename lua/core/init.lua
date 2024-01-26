
vim.g.mapleader = " "

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.clipboard = "unnamedplus"
vim.o.list = true
vim.o.undofile = true
vim.o.undodir = vim.fn.expand("~/.config/nvim/undodir")
vim.o.undolevel = 10000
vim.o.updatetime = 300
vim.o.wrap = false
vim.o.completeopt = "menuone,noselect,noinsert"

vim.cmd([[ let g:instant_username = "JohnGolgota" ]])