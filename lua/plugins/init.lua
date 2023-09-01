local Plugins = {
  { 'tpope/vim-fugitive' },
  { 'wellle/targets.vim' },
  { 'tpope/vim-repeat' },
  { 'kyazdani42/nvim-web-devicons', lazy = true },
  { 'numToStr/Comment.nvim',        config = true, event = 'VeryLazy' },
  { 'psliwka/vim-smoothie' },

  -- Themes
  --[[
  {
    'askfiy/visual_studio_code',
    priority = 100,
    opts = {
      transparent = true,
      mode = 'dark',
    },
  },
  ]]
  { 'folke/tokyonight.nvim' },
  { 'joshdick/onedark.vim' },
  { 'tanvirtin/monokai.nvim' },
  { 'lunarvim/darkplus.nvim' },
}

return Plugins
