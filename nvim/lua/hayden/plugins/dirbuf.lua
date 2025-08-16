return {
    "elihunter173/dirbuf.nvim",
    config = function()
        require('dirbuf').setup({})
        vim.keymap.set("n", "<leader>ee", function() vim.cmd('Dirbuf') end, {desc = "Dirbuf: File Explorer"})
    end
}