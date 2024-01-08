require("plugins")

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.list = true
vim.o.undofile = true
vim.o.undodir = vim.fn.expand("~/.config/nvim/undodir")
vim.o.undolevel = 10000
vim.o.updatetime = 300
vim.o.wrap = false

if packer_bootstrap then
	require("packer").sync()
	return
end

vim.o.completeopt = "menuone,noselect,noinsert"

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
