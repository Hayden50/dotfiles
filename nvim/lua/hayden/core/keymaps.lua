vim.g.mapleader = " "
local keymap = vim.keymap
   
-- Insert Mode 
keymap.set("i", "<leader>jk", "<ESC>", {desc = "Exit insert mode with jk"})
  
-- Normal Mode 
keymap.set('n', 'x', '"_x') -- deletes a single character w/o adding to reg
keymap.set('n', '<cr>', 'ciw', {desc = "Deletes current work and enters i mode "})
keymap.set('n', '<Tab>', '<C-W>w'); -- jumps between windows 
keymap.set('n', '<S-Tab>', '<C-W>W');
keymap.set('n', '<leader><Tab>', ':tabnext<CR>'); -- jumps between tabs 
keymap.set('n', '<leader><S-Tab>', ':tabprevious<CR>');
keymap.set('n', '<leader><leader>', ':tabnew<CR>'); -- creates a new tab 
     
-- Visual Mode 
keymap.set("v", "y", "ygv<esc>")   
