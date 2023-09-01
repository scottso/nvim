local Plugin = { 'nvim-treesitter/nvim-treesitter' }

Plugin.dependencies = {
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  -- { 'nvim-treesitter/nvim-treesitter-refactor' },
}

-- See :help nvim-treesitter-modules
Plugin.opts = {
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = true },
  -- :help nvim-treesitter-textobjects-modules
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
    highlight_current_scope = { enable = false },
    smart_rename = {
      enable = true,
      -- Assign keymaps to false to disable them, e.g. `smart_rename = false`.
      keymaps = {
        smart_rename = 'grn',
      },
    },
    navigation = {
      enable = true,
      -- Assign keymaps to false to disable them, e.g. `goto_definition = false`.
      keymaps = {
        goto_definition = 'gnd',
        list_definitions = 'gnD',
        list_definitions_toc = 'gO',
        goto_next_usage = '<a-*>',
        goto_previous_usage = '<a-#>',
      },
    },
  },
  ensure_installed = {
    'lua',
    'vim',
    'vimdoc',
    'json',
    'yaml',
    'go',
    'gomod',
    'gosum',
    'dockerfile',
    'bash',
    'python',
  },
}

function Plugin.config(name, opts)
  require('nvim-treesitter.configs').setup(opts)
end

return Plugin
