local M = {}

function M.config()
  local colors = {
    bg = '#282c34',
    fg = '#abb2bf',
    yellow = '#e0af68',
    cyan = '#56b6c2',
    darkblue = '#081633',
    green = '#98c379',
    orange = '#d19a66',
    violet = '#a9a1e1',
    magenta = '#c678dd',
    blue = '#61afef',
    red = '#e86671'
  }

  local g = vim.g

  g.ale_enabled = false
  g.ale_echo_msg_format = '%s --%linter%'
  g.ale_disable_lsp = 1
  g.ale_linters_ignore = {cpp = {'clangtidy'}}
  g.ale_cache_executable_check_failures = 1
  g.ale_maximum_file_size = 1024 * 1024

  g.ale_set_signs = 1
  g.ale_sign_error = ' '
  g.ale_sign_warning = ' '

  vim.api.nvim_command(string.format(
                           "autocmd Colorscheme * highlight SpellBad guifg=NONE cterm=undercurl guisp='%s'",
                           colors.red))
  vim.api.nvim_command(string.format(
                           "autocmd Colorscheme * highlight SpellCap guifg=NONE cterm=undercurl guisp='%s'",
                           colors.yellow))

  require('nvim-ale-diagnostic')

  vim.g.vimrubocop_keymap = 0
  vim.g.vimrubocop_config = '.rubocop.yml'

  --[[ vim.lsp.handlers["textDocument/publishDiagnostics"] =
      vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
          virtual_text = false,
          underline = false,
          signs = true,
          update_in_insert = false
      }) ]]
end

return M
