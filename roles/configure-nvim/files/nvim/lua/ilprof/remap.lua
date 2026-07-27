vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<esc>")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

vim.keymap.set("n", "<leader>w", "<C-w>w")
vim.keymap.set("n", "<leader>q", ":wqa<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set({"n", "v"}, "<A-j>", ":m .+1<CR>==")
vim.keymap.set({"n", "v"}, "<A-k>", ":m .-2<CR>==")
