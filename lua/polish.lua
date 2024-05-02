if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

vim.opt.number = true
vim.opt.mouse = ""
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.undofile = true
vim.opt.undolevels = 1500 -- how many times the user can undo
vim.opt.undoreload = 10000
vim.opt.background = "dark"
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.cinoptions = "g0:0t0c2C1(0f0l1"
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.foldenable = false

-- sets vim.g.mapleader
vim.g.mapleader = " "
-- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
vim.g.autoformat_enabled = true
-- enable completion at start
vim.g.cmp_enabled = true
-- enable autopairs at start
vim.g.autopairs_enabled = true
-- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
vim.g.diagnostics_mode = 3

-- Neovide specific setup
vim.opt.guifont = "Berkeley Mono Nerd Font:h18:#e-subpixelantialias"
vim.g.neovide_remember_window_size = true
vim.g.neovide_theme = "auto"
-- neovide_cursor_vfx_mode = "railgun"
-- neovide_cursor_vfx_mode = "torpedo"
vim.g.neovide_cursor_vfx_mode = "pixiedust"
