local Plugin = { 'nvim-lualine/lualine.nvim' }

Plugin.name = 'lualine'

Plugin.event = 'VeryLazy'

-- See :help lualine.txt
Plugin.opts = {
  options = {
    theme = 'Tomorrow',
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = {
      statusline = { 'NvimTree' }
    },
    globalstatus = true,
    refresh = {
      statusline = 100,
    },
  },
  --[[
  options = {
    theme = "auto",
    icons_enabled = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
    globalstatus = true,
    refresh = {
      statusline = 100,
    },
  },
  sections = require("visual_studio_code").get_lualine_sections(),
  ]]
}

function Plugin.init()
  vim.opt.showmode = false
end

return Plugin
