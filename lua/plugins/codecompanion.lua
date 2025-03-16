--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@diagnostic disable-next-line: unused-local
local function generate_slash_commands()
  local commands = {}
  for _, command in ipairs { "buffer", "file", "help", "symbols" } do
    commands[command] = {
      opts = {
        provider = "fzf_lua",
      },
    }
  end
  return commands
end

---@type LazySpec
return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
      { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
    },
    opts = {
      strategies = {
        chat = {
          adapter = "anthropic",
          roles = {
            llm = "CodeCompanion",
            user = "Me",
          },
          slash_commands = generate_slash_commands(),
          keymaps = {
            close = {
              modes = {
                n = "q",
              },
              index = 3,
              callback = "keymaps.close",
              description = "Close Chat",
            },
            stop = {
              modes = {
                n = "<C-c",
              },
              index = 4,
              callback = "keymaps.stop",
              description = "Stop Request",
            },
          },
        },
      },
      inline = {
        adapter = "anthropic",
      },
    },
    keys = {
      {
        "<leader>ac",
        "<cmd>CodeCompanionActions<cr>",
        mode = { "n", "v" },
        noremap = true,
        silent = true,
        desc = "CodeCompanion actions",
      },
      {
        "<leader>aa",
        "<cmd>CodeCompanionChat Toggle<cr>",
        mode = { "n", "v" },
        noremap = true,
        silent = true,
        desc = "CodeCompanion chat",
      },
      {
        "<leader>ad",
        "<cmd>CodeCompanionChat Add<cr>",
        mode = "v",
        noremap = true,
        silent = true,
        desc = "CodeCompanion add to chat",
      },
    },
  },
  {
    "saghen/blink.compat",
    -- use the latest release, via version = '*', if you also use the latest release for blink.cmp
    version = "*",
    -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
    lazy = true,
    -- make sure to set opts so that lazy.nvim calls blink.compat's setup
    opts = {},
  },
  {
    "saghen/blink.cmp",
    dependencies = { "olimorris/codecompanion.nvim", "saghen/blink.compat" },
    event = "InsertEnter",
    opts = {
      enabled = function() return vim.bo.buftype ~= "prompt" and vim.b.completion ~= false end,
      completion = {
        accept = {
          auto_brackets = {
            kind_resolution = {
              blocked_filetypes = { "typescriptreact", "javascriptreact", "vue", "codecompanion" },
            },
          },
        },
      },
      sources = {
        providers = {
          codecompanion = {
            name = "CodeCompanion",
            module = "codecompanion.providers.completion.blink",
            enabled = true,
          },
        },
      },
    },
    {
      "ravitemer/mcphub.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
      },
      -- cmd = "MCPHub", -- lazily start the hub when `MCPHub` is called
      build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
      config = function()
        require("mcphub").setup {
          -- Required options
          port = 3000, -- Port for MCP Hub server
          config = vim.fn.expand "~/.config/nvim/mcpservers.json", -- Absolute path to config file

          -- Optional options
          on_ready = function(hub)
            -- Called when hub is ready
          end,
          on_error = function(err)
            -- Called on errors
          end,
          shutdown_delay = 0, -- Wait 0ms before shutting down server after last client exits
          log = {
            level = vim.log.levels.WARN,
            to_file = false,
            file_path = nil,
            prefix = "MCPHub",
          },
        }
      end,
      strategies = {
        chat = {
          tools = {
            ["mcp"] = {
              -- calling it in a function would prevent mcphub from being loaded before it's needed
              callback = function() return require "mcphub.extensions.codecompanion" end,
              description = "Call tools and resources from the MCP Servers",
              opts = {
                requires_approval = true,
              },
            },
          },
        },
      },
    },
  },
}
