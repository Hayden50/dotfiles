vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- lines
opt.relativenumber = true
opt.cursorline = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- theme
opt.termguicolors = true

-- QoL
opt.clipboard:append("unnamedplus")  -- uses system clipboard
opt.backspace = "indent,eol,start"
