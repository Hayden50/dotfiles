local opt = vim.opt
 
-- lines 
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false 

-- indentation 
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- lets vim use the terminal background as background
vim.cmd [[
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
]]

-- QoL
opt.clipboard:append("unnamedplus")  -- uses system clipboard
opt.backspace = "indent,eol,start"

-- search
opt.ignorecase = true
opt.smartcase = true

-- Folding with treesitter
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldtext = "v:lua.vim.treesitter.foldtext()"