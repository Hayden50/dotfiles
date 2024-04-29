vim.g.mapleader = " "
local km = vim.keymap

---------------------
-- GENERAL KEYBINDS
---------------------

km.set("i", "jk", "<Backspace><ESC>") -- allows jk to switch to normal mode
km.set("i", "JK", "<Backspace><ESC>") -- allows JK to switch to normal mode

km.set("n", "x", '"_x') -- delete single character without copying into register
km.set("n", "<leader>nh", ":nohl<CR>")

-- window managementkeymaps
km.set("n", "<leader>ww", "<C-w>v") -- split window vertically
km.set("n", "<leader>ws", "<C-w>s") -- split window horizontally
km.set("n", "<leader>we", "<C-w>=") -- make split windows equal width & height
km.set("n", "<leader>wc", ":close<CR>") -- close current split window

-- tabs
km.set("n", "<leader>tt", ":tabnew<CR>") -- open new tab
km.set("n", "<leader>ty", ":tabn<CR>") --  go to next tab
km.set("n", "<leader>tr", ":tabp<CR>") --  go to previous tab
km.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab

-- value editing
km.set("n", "<leader>+", "<C-a>") -- increment value
km.set("n", "<leader>-", "<C-x>") -- decrement value

-- General
km.set("n", "<leader><ESC>", "<cmd>nohl") -- quits search 

-------------------
-- PLUGIN KEYBINDS
-------------------

km.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require('telescope.builtin')
km.set('n', '<leader>ff', builtin.find_files, {})
km.set('n', '<leader>fg', builtin.git_files, {})
km.set('n', '<leader>fb', builtin.buffers, {})
km.set('n', '<leader>fh', builtin.help_tags, {})
km.set('n', '<leader>gi', builtin.lsp_implementations, {})

-- telescope git commands (not on youtube nvim video)
km.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
km.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
km.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]

-- Vim Fugitive
km.set("n", "<leader>gs", vim.cmd.Git) -- Git status

-- Trouble
km.set("n", "<leader>qw", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true }) -- toggle a list of error
km.set("n", "<leader>qq", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true }) -- toggle a list of error

-- DAP
km.set("n", "<leader><F4>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>") -- toggle breakpoint
km.set("n", "<leader><F5>", "<cmd>lua require'dap'.continue()<cr>") -- start debug process
km.set("n", "<leader><F6>", "<cmd>lua require'dap'.step_into()<cr>") -- step through 
km.set("n", "<leader><F3>", "<cmd>lua require'dapui'.toggle()<cr>") -- toggle visual window 
km.set("n", "<leader><F2>", "<cmd>lua require'dap'.repl.open()<cr>") -- Open REPL

-- Hop
km.set("n", "<leader>hh", "<cmd>HopWord<CR>") -- Opens up hop frame 

-- VimTex
km.set("n", "<leader>cl", "<cmd>VimtexCompile<CR>") -- Opens up hop frame 
