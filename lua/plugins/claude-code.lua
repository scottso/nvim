--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "greggh/claude-code.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", branch = "master" }, -- Required for git operations
  },
  opts = {
    window = {
      height_ratio = 0.5, -- Percentage of screen height for the terminal window
    },
  },
  config = true,
}
