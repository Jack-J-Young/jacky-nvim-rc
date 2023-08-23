vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Formatiing
vim.cmd("set listchars=eol:↲,tab:⭾·:,trail:~,extends:>,precedes:<,space:␣")

function ToggleList()
	local current_value = string.gsub(vim.api.nvim_exec(":set list?", true), "%s+", "")
	if current_value == "list" then
		vim.api.nvim_command("set nolist")
	else
		vim.api.nvim_command("set list")
	end
end

vim.api.nvim_set_keymap('n', '<leader>w', ':lua ToggleList()<CR>', {noremap = true, silent = true})
