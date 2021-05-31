local M = {}

function M.config()
  local global = require('core.utils.global')
  local home = global.home
  local plugins_count =	vim.fn.len(vim.fn.globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))

  vim.g.dashboard_footer_icon = '🐬 '
  vim.g.dashboard_preview_command = 'cat'
  vim.g.dashboard_preview_pipeline = 'lolcat -F 0.3'
  vim.g.dashboard_preview_file = home .. '/.config/nvim/static/neovim.cat'
  vim.g.dashboard_preview_file_height = 12
  vim.g.dashboard_preview_file_width = 80
  vim.g.dashboard_default_executive = 'telescope'

  vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files find_command=rg,--files'},
    b = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
    c = {description = {'  Load Last Session  '}, command = ":lua require('auto-session').RestoreSession()"},
    d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
    e = {description = {'  Config             '}, command = ':e' .. home ..'/.config/nvim/init.lua'},
    f = {description = {'  Neovim Config Files'}, command = 'Telescope find_files cwd=' .. home ..'/.config/nvim/'
    },
  }
  vim.g.dashboard_custom_footer = {
    '🐬 Nvim loaded ' .. plugins_count .. ' plugins'
  }
end

return M
