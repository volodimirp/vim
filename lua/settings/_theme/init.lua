-- lua require('material.functions').toggle_style()
-- vim.g.material_style = 'palenight'
-- vim.g.material_italic_comments = true

-- require('material').set()
-- require('lualine').setup {
--   options = {
--     -- ... your lualine config
--     theme = 'neon'
--     -- ... your lualine config
--   }
-- }
local M = {}

function M.config()
  -- if vim.fn.has("termguicolors") == 1 then
  -- end
  vim.go.t_8f = "[[38;2;%lu;%lu;%lum"
  vim.go.t_8b = "[[48;2;%lu;%lu;%lum"
  vim.opt.termguicolors = true
  
  -- vim.o.termguicolors = true
  -- vim.g.neon_style = 'doom'
  --vim.g.neon_italic_keyword = true
  --vim.g.neon_italic_function = true
  
  -- vim.g.tokyonight_style = "storm"
  -- vim.g.tokyonight_italic_functions = true
  -- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

  -- My favorite colors (palenight, OceanicNext, hybrid, github, mac_classic, desert, onedark)
  vim.cmd[[ colorscheme OceanicNext ]]
end

return M
