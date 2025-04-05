if true then
	return {}
end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
	config = function()
		require("avante").setup({
			-- system_prompt as function ensures LLM always has latest MCP server state
			-- This is evaluated for every message, even in existing chats
			system_prompt = function()
				local hub = require("mcphub").get_hub_instance()
				return hub:get_active_servers_prompt()
			end,
			-- Using function prevents requiring mcphub before it's loaded
			custom_tools = function()
				return {
					require("mcphub.extensions.avante").mcp_tool(),
				}
			end,
			provider = "claude",
			claude = {
				temperature = 0,
				max_tokens = 16384,
				model = "claude-3-7-sonnet-20250219",
			},
			behaviour = {
				enable_claude_text_editor_tool_mode = true,
			},
			disabled_tools = {
				"list_files", -- Built-in file operations
				"search_files",
				"read_file",
				"create_file",
				"rename_file",
				"delete_file",
				"create_dir",
				"rename_dir",
				"delete_dir",
				"bash", -- Built-in terminal access
			},
		})
	end,
}
