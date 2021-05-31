local M = {}

function M.config()
  local options = {
    view = 'default',
    numbers = 'ordinal',
    number_style = 'subscript',
    mappings = false,
    indicator_icon = '▎',
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '<',
    right_trunc_marker = '>',
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = false,
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    -- sort_by = 'directory',
    offsets = {{
      filetype = 'NvimTree',
      text = 'File Explorer',
      text_align = 'center'
    }},
  }

  require('bufferline').setup{
    options = options
  }
end

return M
