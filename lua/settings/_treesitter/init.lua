local M = {}

function M.config()
  require('nvim-treesitter.configs').setup {
    -- ensure_installed = 'maintained',
    ensure_installed = {
      'ruby', 'javascript', 'html', 'css', 'lua', 'query',
      'jsonc', 'typescript', 'dockerfile', 'graphql', 'scss', 'yaml'
    },
    highlight = {
      enable = true
    },
    -- indent = {enable = {'javascriptreact'}},
    indent = {
      enable = true
    },
    autotag = {
      enable = true
    },
    rainbow = {
      enable = true,
      extended_mode = true
    },
    matchup = {
      enable = true
    }
  }
end

return M
