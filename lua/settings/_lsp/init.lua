local M = {}

function M.config()
  local api = vim.api
  local lspconfig = require('lspconfig')
  local lspinstall = require('lspinstall')

  local saga = require('lspsaga')

  saga.init_lsp_saga({
    code_action_icon = '💡'
  })

  function _G.reload_lsp()
    vim.lsp.stop_client(vim.lsp.get_active_clients())
    vim.cmd [[edit]]
  end

  function _G.open_lsp_log()
    local path = vim.lsp.get_log_path()
    vim.cmd("edit " .. path)
  end

  vim.lsp.protocol.CompletionItemKind = {
    "   (Text) ",
    "   (Method)",
    "   (Function)",
    "   (Constructor)",
    " ﴲ  (Field)",
    "[] (Variable)",
    "   (Class)",
    " ﰮ  (Interface)",
    "   (Module)",
    " 襁 (Property)",
    "   (Unit)",
    "   (Value)",
    " 練 (Enum)",
    "   (Keyword)",
    "   (Snippet)",
    "   (Color)",
    "   (File)",
    "   (Reference)",
    "   (Folder)",
    "   (EnumMember)",
    " ﲀ  (Constant)",
    " ﳤ  (Struct)",
    "   (Event)",
    "   (Operator)",
    "   (TypeParameter)"
  }

  -- Diagnostics symbols for display in the sign column.
  vim.cmd('sign define LspDiagnosticsSignError text=')
  vim.cmd('sign define LspDiagnosticsSignWarning text=')
  vim.cmd('sign define LspDiagnosticsSignInformation text=')
  vim.cmd('sign define LspDiagnosticsSignHint text=')

  vim.cmd('command! -nargs=0 LspLog call v:lua.open_lsp_log()')
  vim.cmd('command! -nargs=0 LspRestart call v:lua.reload_lsp()')

  vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      -- Enable underline, use default values
      underline = true,
      -- Enable virtual text, override spacing to 4
      virtual_text = true,
      signs = {
        enable = true,
        priority = 20
      },
      -- Disable a feature
      update_in_insert = false,
  })

  local enhance_attach = function(client, bufnr)
    api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
  end

  local function make_config()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
      }
    }

    return {
      capabilities = capabilities,
      on_attach = enhance_attach
    }
  end

  -- Configure lua language server for neovim development
  local lua_settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        enable = true,
        globals = {
          'vim',
          'packer_plugins'
        }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    }
  }

  local function setup_servers()
    lspinstall.setup()

    local servers = lspinstall.installed_servers()

    for _, server in pairs(servers) do
      local config = make_config()

      if server == 'lua' then
        config.settings = lua_settings
      end

      lspconfig[server].setup(config)
    end
  end

  setup_servers()

  lspinstall.post_install_hook = function ()
    setup_servers() -- reload installed servers
    vim.cmd('bufdo e') -- this triggers the FileType autocmd that starts the server
  end

  -- UI just like `:LspInfo` to show which capabilities each attached server has
  vim.api.nvim_command("command! LspCapabilities lua require('settings._lsp.lsp-capabilities')()")
end

return M
