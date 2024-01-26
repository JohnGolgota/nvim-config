
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

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

vim.cmd([[ let g:instant_username = "JohnGolgota" ]])

require("plugins")

vim.o.completeopt = "menuone,noselect,noinsert"

require("telescope")

server = {
	on_attach = on_attach,
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy"
			},
		},
	},
}
