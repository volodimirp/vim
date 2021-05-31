-- vim.g.nvim_tree_icons = {
--   default = '',
--   symlink = '',
--   git = {
--    unstaged = "✚",
--    staged = "✚",
--    unmerged = "≠",
--    renamed = "≫",
--    untracked = "★",
--   }
-- }

local M = {}

function M.config()
  function _G.move_or_open()
    if #vim.api.nvim_list_wins() == 1 then
      vim.cmd("vnew | wincmd h | vert resize 30 | wincmd l")
    else
      vim.cmd("wincmd l")
    end
  end

  require('nvim-tree.events').on_nvim_tree_ready(
    function()
      vim.cmd("NvimTreeRefresh")
    end
  )

  vim.g.nvim_tree_width = 45
  vim.g.nvim_tree_ignore = { '.git', 'node_modules', 'dist', 'tags.lock', '.tags', 'tags.temp' }
  vim.g.nvim_tree_auto_open = 0
  vim.g.nvim_tree_auto_close = 0
  vim.g.nvim_tree_disable_netrw = 0
  vim.g.nvim_tree_hijack_netrw = 1
  vim.g.nvim_tree_follow = 1
  vim.g.nvim_tree_tab_open = 0
  vim.g.nvim_tree_indent_markers = 1
  vim.g.nvim_tree_lint_lsp = 1
  vim.g.nvim_tree_gitignore = 1
  vim.g.nvim_tree_git_hl = 1
  vim.g.nvim_tree_auto_ignore_ft = { 'dashboard' }
  vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1
  }
  vim.g.nvim_tree_group_empty = 1
  vim.g.nvim_tree_lsp_diagnostics = 1

  vim.g.nvim_tree_icons = {
    default = '',
    git= {
      staged = "✓",
      unmerged = "",
      renamed = "➜",
      untracked = "★",
      unstaged = "",
      deleted = "",
      ignored = "◌",
    },
    folder = {
      default = "",
      open = "",
      empty = "",
      empty_open = "",
      symlink = "",
    }
  }
end

return M
