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
      desc = "AI",
    },
    {
      "<leader>ac",
      "<cmd>ClaudeCode<cr>",
      mode = { "n", "v" },
      noremap = true,
      silent = true,
      desc = "ClaudeCode chat",
    },
  },
  opts = {
    window = {
      height_ratio = 1.0, -- Percentage of screen height for the terminal window
      position = "vertical",
    },
    git = {
      use_git_root = true,
    },
  },
  config = true,
}
