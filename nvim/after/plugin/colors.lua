
function ColorMyPencils(color)
	-- color = color or "rose-pine"
	color = color or "gruvbox"
    vim.o.background = "dark" -- or "light" for light mode
    vim.cmd([[colorscheme gruvbox]])
    --vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


ColorMyPencils()