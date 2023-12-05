function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	--[[
	-- Make background transparent
	-- Don't need it with transparent.nvim
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "SpecialKey", { bg = "none" })
	vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
	--]]

	--vim.opt.list = true
	--vim.opt.listchars = { space = '_', tab = '>~', eol = '↵'}
end

ColorMyPencils()
