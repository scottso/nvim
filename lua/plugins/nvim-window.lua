return {
  {
    "yorickpeterse/nvim-window",
    keys = {
      -- { "<Leader>w", false, desc = "Window" },
      { "<Leader>wp", "<cmd>lua require('nvim-window').pick()<cr>", desc = "nvim-window: Jump to window" },
    },
    config = true,
  },
}
