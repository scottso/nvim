if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      strategies = {
        chat = {
          adapter = "anthropic",
        },
        inline = {
          adapter = "anthropic",
        },
      },
    },
  },
}
