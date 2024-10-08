vim.g.mapleader = " "
local keymap = vim.keymap

-- Insert Mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Normal Mode
keymap.set("n", "x", '"_x') -- deletes a single character w/o adding to reg
keymap.set("n", "<cr>", "ciw", { desc = "Deletes current work and enters i mode " })
keymap.set("n", "<leader><Tab>", "<C-W>w") -- jumps between windows 
keymap.set("n", "<leader><S-Tab>", "<C-W>W")
keymap.set("n", "<Tab>", ":tabnext<CR>") -- jumps between tabs 
keymap.set("n", "<S-Tab>", ":tabprevious<CR>")
keymap.set("n", "<leader><leader>", ":tabnew<CR>") -- creates a new tab 
keymap.set("n", "<leader>|", ":vsplit<CR>") -- creates a vertical window
keymap.set("n", "<leader>-", ":split<CR>") -- creates a horizontal window
-- NOTE: <leader>mp will format; set in plugins/formatting.lua

-- Telescope Configs
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope: Find Files " })
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", {})
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", {})
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", {})
keymap.set("n", "<leader>fs", ":Telescope grep_string<CR>", {})

-- Visual Mode
keymap.set("v", "y", "ygv<esc>")
