if true then
	return {}
end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
	"ravitemer/mcphub.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
	},
	-- cmd = "MCPHub", -- lazily start the hub when `MCPHub` is called
	build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
	config = function()
		require("mcphub").setup({
			-- Required options
			port = 3000, -- Port for MCP Hub server
			config = vim.fn.expand("~/.config/nvim/mcpservers.json"), -- Absolute path to config file

			-- This sets vim.g.mcphub_auto_approve to false by default (can also be toggled from the HUB UI with `ga`)
			auto_approve = false,
			-- Optional options
			on_ready = function(hub)
				-- Called when hub is ready
			end,
			on_error = function(err)
				-- Called on errors
			end,
			log = {
				level = vim.log.levels.WARN,
				to_file = false,
				file_path = nil,
				prefix = "MCPHub",
			},
		})
	end,
}
