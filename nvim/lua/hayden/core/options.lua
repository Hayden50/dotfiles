local opt = vim.opt

-- Line Edits
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- searching
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true

-- backspace 
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
