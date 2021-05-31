local M = {}

function M.config()
  require('format').setup {
    ["*"] = {{cmd = {"sed -i 's/[ \t]*$//'"}}},
    lua = {
      {
        cmd = {
          function(file)
            return string.format(
              "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb %s",
              file
            )
          end
        }
      }
    },
    javascript = {
      {
        cmd = {
          function(file)
            return string.format("prettier --stdin-filepath %s", file)
          end
        }
      }
    },
    typescript = {
      {
        cmd = {
          function(file)
            return string.format("prettier --stdin-filepath %s", file)
          end
        }
      }
    },
    ruby = {
      {
        cmd = {
          function(file)
            return string.format("rufo %s", file)
          end
        }
      }
    },
    -- vue = {
    --     {
    --         cmd = {
    --             function(file)
    --                 return string.format("vue-beautify %s", file)
    --             end
    --         }
    --     }
    -- },
    html = {
      {
        cmd = {
          function(file)
            return string.format("prettier --stdin-filepath %s", file)
          end
        }
      }
    },
    css = {
      {
        cmd = {
          function(file)
            return string.format("prettier --stdin-filepath %s", file)
          end
        }
      }
    },
    json = {
      {
        cmd = {
          function(file)
            return string.format("prettier --stdin-filepath %s", file)
          end
        }
      }
    },
    yaml = {
      {
        cmd = {
          function(file)
            return string.format("prettier --stdin-filepath %s", file)
          end
        }
      }
    }
  }
  
  -- vim.cmd('autocmd BufWritePost *.lua FormatWrite')
  vim.cmd('autocmd BufWritePost * FormatWrite')
end

return M
