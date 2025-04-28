local util = require("conform.util")
local lint = require("lint")

return {
  {
    "stevearc/conform.nvim",
    opts = {
      event = "BufWritePre",
      formatters_by_ft = {
        ["python"] = { "ruff_format", "ruff_organize_imports" },
        ["sql"] = { "sqlfluff" },
        ["ocaml"] = { "ocamlformat" },
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
        ocamlformat = {
          command = "ocamlformat",
          stdin = true,
          cwd = util.root_file({
            ".ocamlformat",
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
