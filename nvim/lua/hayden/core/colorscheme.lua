-- local status, _ = pcall(vim.cmd, "colorscheme catppuccin")

pcall(vim.cmd, "let g:sonokai_style = 'atlantis'")
local status, _ = pcall(vim.cmd, "colorscheme sonokai")

if not status then
	print("Colorscheme not found")
	return
end

