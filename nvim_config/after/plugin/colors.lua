function ColorMyPencils(color)
	-- rose-pine, gruvbox, tokyodakr
	color = color or 'rose-pine-moon'  
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', {bg='none'})
	vim.api.nvim_set_hl(0, 'NormalFloat', {bg='none'})
end

ColorMyPencils('gruvbox')

vim.cmd("highlight CursorLine guibg=#262626")
vim.cmd("highlight CursorColumn guibg=#262626")
