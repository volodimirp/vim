local M = {}

function M.config()
  require('compe').setup {
    enabled = true,
    debug = false,
    min_length = 1,
    -- preselect = 'disable',
    preselect = 'enable',
    allow_prefix_unmatch = false,
    documentation = true,
    source = {
      path = { kind = '   (Path)' },
      buffer = { kind = '   (Buffer)' },
      calc = false,
      vsnip = { kind = '   (Snippet)' },
      nvim_lsp = { kind = '   (LSP)' },
      -- nvim_lua = { kind = '   (LSP-LUA)' },
      nvim_lua = false,
      spell = false,
      tags = false,
      snippets_nvim = false,
      treesitter = false,
      tabnine = { kind = ' ', priority = 200, max_reslts = 6 },
      omni = false
    }
  }

  local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end

  local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
  end

  _G.tab_complete = function()
    if vim.fn['vsnip#available'](1) == 1 then
      return t '<Plug>(vsnip-expand-or-jump)'
    elseif check_back_space() then
      return t '<Tab>'
    else
      return t '<Tab>'
    end
    --[[ if vim.fn.pumvisible() == 1 then
      return t '<C-n>'
    elseif vim.fn['vsnip#available'](1) == 1 then
      return t '<Plug>(vsnip-expand-or-jump)'
    elseif check_back_space() then
      return t '<Tab>'
    else
      return vim.fn['compe#complete']()
    end ]]
  end

  _G.s_tab_complete = function()
    if vim.fn['vsnip#jumpable'](-1) == 1 then
      return t '<Plug>(vsnip-jump-prev)'
    else
      return t '<S-Tab>'
    end
    --[[ if vim.fn.pumvisible() == 1 then
      return t '<C-p>'
    elseif vim.fn['vsnip#jumpable'](-1) == 1 then
      return t '<Plug>(vsnip-jump-prev)'
    else
      return t '<S-Tab>'
    end ]]
  end

  vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
  vim.api.nvim_set_keymap('s', '<Tab>', 'v:lua.tab_complete()', { expr = true })
  vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
  vim.api.nvim_set_keymap('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })

  -- vim.api.nvim_set_keymap("i", "<S-CR>", "compe#complete()", { noremap = true, silent = true, expr = true })
  -- vim.api.nvim_set_keymap("i", "<CR>", "compe#complete()", { noremap = true, silent = true, expr = true })
  -- vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm({ 'keys': '<Plug>(vsnip-expand)', 'mode': '' })", { noremap = true, silent = true, expr = true })
  -- inoremap <silent><expr><CR>      compe#confirm({ 'keys': lexima#expand('<LT>CR>', 'i'), 'replace': v:true })

  -- vim.api.nvim_set_keymap('i', '<CR>', "compe#confirm('<CR>')", { noremap = true, silent = true, expr = true })

  --[[ local remap = vim.api.nvim_set_keymap
  local npairs = require('nvim-autopairs')
  _G.MUtils = {}

  vim.g.completion_confirm_key = ''
  MUtils.completion_confirm = function()
    if vim.fn.pumvisible() ~= 0  then
      if vim.fn.complete_info()['selected'] ~= -1 then
        vim.fn['compe#confirm']('<cr>')
        return npairs.esc('')
      else
        vim.fn.nvim_select_popupmenu_item(0, false, false, {})
        vim.fn['compe#confirm']('<cr>')
        return npairs.esc('<c-n>')
      end
    else
      return npairs.check_break_line_char()
    end
  end

  remap('i', '<CR>', 'v:lua.MUtils.completion_confirm()', { expr = true , noremap = true }) ]]

  require('nvim-autopairs.completion.compe').setup({
    map_cr = true, --  map <CR> on insert mode
    map_complete = true -- it will auto insert `(` after select function or method item
  })
end

return M
