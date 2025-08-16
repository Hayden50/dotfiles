return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    config = function()
        local setmap = vim.keymap.set
        local tb = require('telescope.builtin')
    
        -- Navigation
        setmap("n", "<leader>ff", tb.find_files, {desc = "Telescope: find files"})
        setmap("n", "<leader>fw", tb.live_grep, {desc = "Telescope: live grep"})
        setmap("n", "<leader>fj", tb.jumplist, {desc = "Telescope: jumplist"})
        setmap("n", "<leader>fm", tb.marks, {desc = "Telescope: find marks"})
        setmap("n", "<leader>fg", tb.git_status, {desc = "Telescope: git status"})

        -- LSP Related
        setmap("n", "<leader>fr", tb.lsp_references, {desc = "Telescope: lsp references"})
        setmap("n", "<leader>fi", tb.lsp_incoming_calls, {desc = "Telescope: incoming calls"})
        setmap("n", "<leader>fo", tb.lsp_outgoing_calls, {desc = "Telescope: outgoing calls"})
        setmap("n", "<leader>fd", function() tb.diagnostics({bufnr = 0}) end, {desc = "Telescope: buffer diagnostics"})
        setmap("n", "<leader>fD", tb.diagnostics, {desc = "Telescope: general diagnostics"})
        setmap("n", "gt", tb.lsp_type_definitions, {desc = "Telescope: go to type definition"})

    end
}
