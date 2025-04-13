-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- don't do anything in non-vscode instances
if not vim.g.vscode then
	return {}
end

-- a list of known working plugins with vscode-neovim, update with your own plugins
local plugins = {
	"lazy.nvim",
	"AstroNvim",
	"astrocore",
	"astroui",
	"Comment.nvim",
	"nvim-autopairs",
	"nvim-treesitter",
	"nvim-ts-autotag",
	"nvim-treesitter-textobjects",
	"nvim-ts-context-commentstring",
}

local Config = require("lazy.core.config")
-- replace the default `cond`
Config.options.defaults.cond = function(plugin)
	return vim.tbl_contains(plugins, plugin.name)
end

return {}
