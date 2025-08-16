vim.g.mapleader = " "

local setmap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Split screen mappings
setmap("n", "<leader>|", ":vsplit<CR>", opts)
setmap("n", "<leader>-", ":split<CR>", opts)

-- Pane navigation
setmap("n", "<C-h>", "<C-w>h", opts) -- Move left
setmap("n", "<C-j>", "<C-w>j", opts) -- Move down
setmap("n", "<C-k>", "<C-w>k", opts) -- Move up
setmap("n", "<C-l>", "<C-w>l", opts) -- Move right

-- LSP mappings
opts.desc = "Go to definition"
setmap("n", "gd", function() vim.lsp.buf.definition() end, opts)

opts.desc = "Format buffer"
setmap("n", "gf", function() vim.lsp.buf.format() end, opts)

opts.desc = "Smart rename"
setmap("n",  "<leader>rn", function() vim.lsp.buf.rename() end, opts)