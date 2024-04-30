vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt
 
-- lines 
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false 

-- indentation 
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- theme
opt.termguicolors = true

-- QoL
opt.clipboard:append("unnamedplus")  -- uses system clipboard
opt.backspace = "indent,eol,start"
