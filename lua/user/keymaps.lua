--[[
-- '': The equivalent of (nore)map in VimL, i.e. the mapping applies in visual, normal, select, and operator-pending modes.
-- n: Normal mode
-- v: Visual mode
-- i: Insert mode
--]]
local silentnoremap = { noremap = true, silent = true }
local silent = { silent = true }
local noremap = { noremap = true }

-- Space as leader key
vim.g.mapleader = ' '

-- Shortcuts
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>h', '^')
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>l', 'g_')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
vim.keymap.set({ 'n', 'x' }, '<leader>y', '"+y') -- copy
vim.keymap.set({ 'n', 'x' }, '<leader>p', '"+p') -- paste

-- Delete text
vim.keymap.set({ 'n', 'x' }, 'x', '"_x')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Intuitive increment and decrement
vim.keymap.set('n', '+', '<c-a>', silentnoremap)
vim.keymap.set('n', '-', '<c-x>', silentnoremap)

-- Conveniently enter command mode
-- Don't use silent=true as this removes the command line.
-- vim.keymap.set('n', ';', ':', noremap)

--  Don't use Ex mode, use Q for formatting
vim.keymap.set('', 'Q', 'gq', silentnoremap)

--  make tab in visual mode indent code
vim.keymap.set('v', '<tab>', '>gv', silentnoremap)
vim.keymap.set('v', '<s-tab>', '<gv', silentnoremap)

vim.keymap.set('n', '<C-l>n', ':NullLsInfo<CR>', noremap)
vim.keymap.set('n', '<C-l>f', ':lua vim.lsp.buf.format()<CR>', noremap)
