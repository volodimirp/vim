local M = {}

function M.config()
  local global = require 'core.utils.global'
  
  require('auto-session').setup {
    auto_session_root_dir = global.cache_dir..'session'..global.path_sep,
    auto_restore_enabled = false
  }
end

return M
