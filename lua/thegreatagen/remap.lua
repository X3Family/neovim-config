
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- navigiting the line to the top and bottom
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- formatting & saving
vim.keymap.set("n", "<leader>w", function()
    vim.cmd("w")
    vim.lsp.buf.format()
end)
