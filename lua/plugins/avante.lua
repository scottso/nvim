if true then
	return {}
end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
	"yetone/avante.nvim",
	opts = {
		provider = "claude",
		claude = {
			temperature = 0,
			max_tokens = 16384,
			model = "claude-3-7-sonnet-20250219",
			-- reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
		},
		behaviour = {
			enable_claude_text_editor_tool_mode = true,
		},
	},
}
