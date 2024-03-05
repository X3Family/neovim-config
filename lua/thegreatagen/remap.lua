vim.g.mapleader = " "
vim.g.maplocalleader = ' '

function formatFile()
    if pcall(vim.lsp.buf.format) then
        vim.cmd("CocCommand editor.action.formatDocument")
    end
    print("formatted")
end

-- navigiting the line to the top and bottom
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- formatting & saving
vim.keymap.set("n", "<leader>w", function()
    vim.cmd("w")
    formatFile()
    print("saved & formatted")
end)

vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>f", formatFile)
