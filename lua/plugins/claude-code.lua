--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "greggh/claude-code.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", branch = "master" }, -- Required for git operations
  },
  config = true,
}
