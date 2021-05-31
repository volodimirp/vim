local M = {}

function M.config()
  require('colorizer').setup {
    '*',
    css = { rgb_fn = true },
    scss = { rgb_fn = true },
    sass = { rgb_fn = true },
    vim = { names = true },
    html = { names = false }
  }
end

return M
