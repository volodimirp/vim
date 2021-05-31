local M = {}

function M.config()
  require('telescope').setup {
    defaults = {
      prompt_prefix = '🔭 ',
      prompt_position = 'top',
      selection_caret = " ",
      sorting_strategy = 'ascending',
      results_width = 0.6,
      file_ignore_patterns = { '%.tags', '%tags', 'tags' },
      file_sorter = require('telescope.sorters').get_fzy_sorter,
      generic_sorter = require('telescope.sorters').get_generic_fuzzy_sorter,
      file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
      grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
      qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
      color_devicons = true,
      set_env = { ['COLORTERM'] = 'truecolor' },
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      }
    }
  }

  require('telescope').load_extension('fzy_native')
  require('telescope').load_extension('ultisnips')
  require('telescope').load_extension('project')
end

return M
