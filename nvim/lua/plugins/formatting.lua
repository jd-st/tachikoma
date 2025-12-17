local util = require("conform.util")
local lint = require("lint")

return {
  {
    "stevearc/conform.nvim",
    opts = {
      event = "BufWritePre",
      formatters_by_ft = {
        sql = { "sqlfluff" },
        typescript = { "eslint" },
        javascript = { "eslint" },
        javascriptreact = { "eslint" },
        typescriptreact = { "eslint" },
        json = { "eslint" },
        jsonc = { "eslint" },
        yaml = { "eslint" },
        html = { "eslint" },
        python = { "black" },
      },
      formatters = {
        sqlfluff = {
          command = "sqlfluff",
          args = { "fix", "-" },
          stdin = true,
          cwd = util.root_file({
            ".sqlfluff",
          }),
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      lint.linters_by_ft = {
        sql = { "sqlfluff" },
      }
    end,
  },
}
