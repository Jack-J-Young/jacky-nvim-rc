local rt = require("rust-tools")

--local port = 13000

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  --dap = {
	--{
	--	type = "server",
	--	port = "${port}",
	--	executable = {
	--	command = "codelldb",
	--	args = { "--port", "${port}" },
	--	},
	--}
  --}
})

--
--local mason_registry = require("mason-registry")
--
--local codelldb = mason_registry.get_package("codelldb")
--local extension_path = codelldb:get_install_path() .. "/extension/"
--local codelldb_path = extension_path .. "adapter/codelldb"
--local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
--
--local dap = require("dap")
--
--dap.adapters.codelldb = {
--  type = 'server',
--  host = '127.0.0.1',
--  port = 13000 -- 💀 Use the port printed out or specified with `--port`
--}
--
--dap.adapters.codelldb = {
--  type = 'server',
--  port = "${port}",
--  executable = {
--    -- CHANGE THIS to your path!
--    command = codelldb_path,
--    args = {"--port", "${port}"},
--
--    -- On windows you may have to uncomment this:
--    -- detached = false,
--  }
--}
--
--dap.configurations.cpp = {
--  {
--    name = "Launch file",
--    type = "codelldb",
--    request = "launch",
--    program = "cargo run",--function()
--    --  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--    --end,
--    cwd = '${workspaceFolder}',
--    stopOnEntry = false,
--  },
--}
--
--dap.configurations.c = dap.configurations.cpp
--dap.configurations.rust = dap.configurations.cpp

--dap.adapters.lldb = {
--	type = 'executable',
--	command = codelldb_path, -- adjust as needed, must be absolute path
--	name = 'lldb'
--}
--
--dap.configurations.cpp = {
--	{
--		name = 'Launch',
--		type = 'lldb',
--		request = 'launch',
--		program = function()
--			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--		end,
--		cwd = '${workspaceFolder}',
--		stopOnEntry = false,
--		args = {},
--
--		-- 💀
--		-- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
--		--
--		--    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--		--
--		-- Otherwise you might get the following error:
--		--
--		--    Error on launch: Failed to attach to the target process
--		--
--		-- But you should be aware of the implications:
--		-- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
--		-- runInTerminal = false,
--	},
--}
--
--dap.configurations.c = dap.configurations.cpp
--dap.configurations.rust = dap.configurations.cpp
