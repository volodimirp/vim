local M = {}

function M.config()
  local wk = require('which-key')
  local presets = require('which-key.plugins.presets')

  wk.setup({
    hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', 'call', 'lua', '^:', '^ ' },
    show_help = true,
    triggers = {'<space>'},
    plugins = {
      marks = false,
      registers = false,
      spelling = false,
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = true,
        nav = true,
        z = false,
        g = false
      }
    }
  })

  local space = {
    s = {
      name = '+search',
      g = { '<cmd>Telescope live_grep<cr>', 'Grep' },
      b = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'Buffer' },
      s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Goto Symbol' },
      r = { "viw<cmd>lua require('spectre').open_visual()<cr>", 'Replace (Spectre)' },
      f = { "<cmd>lua require('spectre').open_file_search()<cr>", 'Replace in current file (Spectre)' }
    },
    l = {
      name = '+LSP',
      a = { '<cmd>lua vim.lsp.buf.code_action()<cr>', 'Code Action' },
      d = { '<cmd>Telescope lsp_document_diagnostics<cr>', 'Document Diagnostics' },
      w = { '<cmd>Telescope lsp_workspace_diagnostics<cr>', 'Workspace Diagnostics' },
      f = { '<cmd>lua vim.lsp.buf.formatting()<cr>', 'Format' },
      i = { '<cmd>LspInfo<cr>', 'Info' },
      j = { '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', 'Next Diagnostic' },
      k = { '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', 'Prev Diagnostic' },
      q = { '<cmd>Telescope quickfix<cr>', 'Quickfix' },
      r = { '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename' },
      s = { '<cmd>SymbolsOutline<cr>', 'Document Symbols' },
      S = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'Workspace Symbols' },
    },
    f = {
      name = '+file',
      t = { '<cmd>NvimTreeToggle<cr>', 'NvimTree' },
      f = { '<cmd>Telescope find_files<cr>', 'Find File' },
      r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
      n = { '<cmd>enew<cr>', 'New File' }
    },
    p = {
      name = '+project',
      p = { '<cmd>Telescope project<cr>', 'Open Project'},
      b = { '<cmd>Telescope file_browser cwd=~/Works<cr>', 'Browse ~/Works' }
    },
    x = {
      name = '+errors',
      x = { '<cmd>TroubleToggle<cr>', 'Trouble' },
      l = { '<cmd>lopen<cr>', 'Open Location List' },
      q = { '<cmd>copen<cr>', 'Open Quickfix List' }
    },
    z = { [[<cmd>ZenMode<cr>]], 'Zen Mode' },
  }

  for i = 0, 10 do
    space[tostring(i)] = 'which_key_ignore'
  end

  wk.register(space, { prefix = '<space>' })
end

return M
