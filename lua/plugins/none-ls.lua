-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
	"nvimtools/none-ls.nvim",
	opts = function(_, opts)
		-- opts variable is the default configuration table for the setup function call
		local null_ls = require("null-ls")

		-- Check supported formatters and linters
		-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
		-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

		-- Only insert new sources, do not replace the existing ones
		-- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
		opts.sources = require("astrocore").list_insert_unique(opts.sources, {
			-- Set a formatter
			null_ls.builtins.formatting.stylua,
			-- null_ls.builtins.formatting.prettier,
		})

		opts.sources = {
			null_ls.builtins.diagnostics.golangci_lint.with({
				cwd = require("null-ls.helpers").cache.by_bufnr(function(params)
					return require("null-ls.utils").root_pattern(".golangci.yml")(params.bufname)
				end),
				args = { "run", "--fix=false", "--show-stats=false", "--output.json.path=stdout", "$DIRNAME" },
			}),
		}
	end,
}
