local Plugin = { 'ray-x/navigator.lua' }

Plugin.name = 'navigator'

Plugin.dependencies = {
  { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
}

function Plugin.init()
  if vim.o.ft == 'clap_input' and vim.o.ft == 'guihua' and vim.o.ft == 'guihua_rust' then
    require 'cmp'.setup.buffer { completion = { enable = false } }
  end
end

Plugin.opts = {
  mason = true,
  lsp = {
    gopls = {
      settings = {
        gopls = { gofumpt = true },
      },
    },
  },
}

return Plugin
