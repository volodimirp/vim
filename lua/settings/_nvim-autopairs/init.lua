local M = {}

function M.config()
  require('nvim-autopairs').setup({ break_line_filetype = nil })
end

return M
