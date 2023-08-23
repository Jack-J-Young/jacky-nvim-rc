vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Replace
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Grab visual
vim.keymap.set("n", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "K", ":m '>+1<CR>gv=gv")

-- Center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Clipboard yank
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"+d")
vim.keymap.set("v", "<leader>d", "\"+d")

-- QuickFix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Quick replace
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Toggle whitespace
function ToggleList()
    local result = vim.api.nvim_exec(":set list?", true)
	local current_value = string.gsub(result, "%s+", "")
	if current_value == "list" then
		vim.api.nvim_command("set nolist")
	else
		vim.api.nvim_command("set list")
	end
end

vim.api.nvim_set_keymap('n', '<leader>w', ':lua ToggleList()<CR>', {
    noremap = true, silent = true
})

-- Git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

-- Grapple
vim.keymap.set("n", "<leader>a", require("grapple").toggle)
vim.keymap.set("n", "<leader>j", require("grapple").popup_tags)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Undo Tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
