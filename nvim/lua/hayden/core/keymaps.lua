vim.g.mapleader = " "
local keymap = vim.keymap
  
keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"})
keymap.set("n", "x", "_x") -- deletes a single character w/o adding to reg
