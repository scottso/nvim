-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
	"greggh/claude-code.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" }, -- Required for git operations
	},
	keys = {
		{
			"<leader>a",
			desc = "ClaudeCode",
		},
		{
			"<leader>ai",
			"<cmd>ClaudeCode<cr>",
			mode = { "n", "v" },
			noremap = true,
			silent = true,
			desc = "ClaudeCode chat",
		},
		{
			"<leader>ar",
			"<cmd>ClaudeCodeResume<cr>",
			mode = { "n", "v" },
			noremap = true,
			silent = true,
			desc = "ClaudeCode Display an interactive conversation picker",
		},
		{
			"<leader>ac",
			"<cmd>ClaudeCodeContinue<cr>",
			mode = { "n", "v" },
			noremap = true,
			silent = true,
			desc = "ClaudeCode Continue the most recent conversation",
		},
		{
			"<leader>av",
			"<cmd>ClaudeCodeVerbose<cr>",
			mode = { "n", "v" },
			noremap = true,
			silent = true,
			desc = "ClaudeCode Enable verbose logging with full turn-by-turn output",
		},
	},
	opts = {
		window = {
			split_ratio = 0.4, -- Percentage of screen height for the terminal window
			position = "vertical",
		},
		git = {
			use_git_root = true,
		},
	},
	config = true,
}
