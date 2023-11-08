--
-- help option-list
--
vim.opt.number = true
vim.opt.mouse = ''
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.undolevels = 1500 -- how many times the user can undo
vim.opt.undoreload = 10000
vim.opt.background = 'dark'
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.cinoptions = 'g0:0t0c2C1(0f0l1'
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true

-- Neovide Specific
if vim.g.neovide then
  -- vim.o.guifont = "GoMono Nerd Font:h12:#e-subpixelantialias"
  vim.o.guifont = "FantasqueSansM Nerd Font:h13:#e-subpixelantialias"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_theme = 'auto'

  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
end
