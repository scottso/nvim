-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

if vim.g.neovide then
  -- Neovide specific setup
  -- vim.opt.guifont = "Berkeley Mono Nerd Font:h18:#e-subpixelantialias"
  -- vim.opt.guifont = "FantasqueSansM Nerd Font:h18:#e-subpixelantialias"
  vim.opt.guifont = "MonoLisa Uncursive,Symbols Nerd Font Mono:h16:#e-subpixelantialias"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_theme = "auto"
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_opacity = 225.0
  vim.g.neovide_cursor_vfx_particle_density = 50.0
end

--[[

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

]]
--
