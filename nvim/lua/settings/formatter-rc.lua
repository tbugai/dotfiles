local formatter = require("formatter")
formatter.setup(
  {
    filetype = {
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      },
      ruby = {
        -- rubocop
        function()
          return {
            exe = "rubocop", -- might prepend `bundle exec `
            args = {"--auto-correct", "--stdin", "%:p", "2>/dev/null", "|", "awk 'f; /^====================$/{f=1}'"},
            stdin = true
          }
        end
      },
      go = {
        function()
          return {
            exe = "gofmt",
            stdin = true
          }
        end
      }
    }
  }
)

vim.cmd [[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.go,*.rb,*.lua FormatWrite
  augroup END
]]
