-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	-- language packs
	{ import = "astrocommunity.pack.bash" },
	{ import = "astrocommunity.pack.docker" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.golangci-lint" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.markdown" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.typescript-all-in-one" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.recipes.vscode" },
	-- { import = "astrocommunity.recipes.telescope-lsp-mappings" },
	{ import = "astrocommunity.recipes.picker-lsp-mappings" },
	{ import = "astrocommunity.syntax.vim-cool" },
	{ import = "astrocommunity.git.neogit" },
	{ import = "astrocommunity.git.diffview-nvim" },
	-- { import = "astrocommunity.completion.avante-nvim" },
	-- { import = "astrocommunity.completion.copilot-lua-cmp" },
	-- { import = "astrocommunity.editing-support.chatgpt-nvim" },
	-- { import = "astrocommunity.utility.noice-nvim" },
	{ import = "astrocommunity.terminal-integration.vim-tmux-navigator" },
	{ import = "astrocommunity.split-and-window.colorful-winsep-nvim" },
	{ import = "astrocommunity.motion.vim-matchup" },
	{ import = "astrocommunity.scrolling.vim-smoothie" },
	{ import = "astrocommunity.media.codesnap-nvim" },
	{ import = "astrocommunity.editing-support.nvim-treesitter-context" },
	-- { import = "astrocommunity.indent.indent-blankline-nvim" },
	-- Can't have both rainbowline and mini-identscope
	-- { import = "astrocommunity.indent.indent-rainbowline" },
	{ import = "astrocommunity.indent.mini-indentscope" },
	{ import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
	-- { import = "astrocommunity.fuzzy-finder.fzf-lua" },
	{ import = "astrocommunity.recipes.heirline-nvchad-statusline" },
	{ import = "astrocommunity.colorscheme.catppuccin" },
	{ import = "astrocommunity.icon.mini-icons" },
	-- import/override with your plugins folder
}
