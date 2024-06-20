-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.recipes.vscode" },
  -- import/override with your plugins folder
  { import = "astrocommunity.syntax.vim-cool" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
}
