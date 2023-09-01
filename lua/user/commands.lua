local group = vim.api.nvim_create_augroup('user_cmds', {clear = true})

vim.api.nvim_create_user_command('ReloadConfig', 'source $MYVIMRC', {})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight on yank',
  group = group,
  callback = function()
    vim.highlight.on_yank({higroup = 'Visual', timeout = 200})
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {'help', 'man'},
  group = group,
  command = 'nnoremap <buffer> q <cmd>quit<cr>'
})

--[[
vim.api.nvim_create_autocmd('FileType', {
    group = group
    command = 'autocmd BufWritePre <buffer> :%s/\s\+$//e'
})

vim.api.nvim_create_autocmd('BufWritePre', {
    group = group
    command = 'retab'
})
]]

--
--
--
vim.cmd [[
if has("autocmd")
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

  " When saving strip extraneous whitespace
  autocmd FileType * autocmd BufWritePre <buffer> :%s/\s\+$//e
  autocmd BufWritePre * :retab

  " augroup make_autocmd
  "  autocmd Filetype make vim.opt.noexpandtab ts=4 sts=4 sw=4
  " augroup END
endif
]]

--
-- User Scripts
--

-- Empty require cache so we can reload configs
local load = function(mod)
    package.loaded[mod] = nil
    require(mod)
end

require('user.keymaps')
require('user.plugins')
