return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      autoformat = true,
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "strict", -- off, basic or strict
              },
              pyright = {
                --disableOrganizeImports = true,
              },
            },
          },
        },
        ruff = {
          cmd_env = { RUFF_TRACE = "messages" },
          settings = {
            logLevel = "debug",
          },
          keys = {
            {
              "<leader>co",
              LazyVim.lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
        eslint = {
          settings = {
            useFlatConfig = true,
            format = { enable = true },
            options = {
              overrideConfig = {
                rules = {
                  ["@typescript-eslint/no-base-to-string"] = "off",
                  ["@typescript-eslint/no-floating-promises"] = "off",
                  ["@typescript-eslint/no-misused-promises"] = "off",
                  ["@typescript-eslint/no-deprecated"] = "off",
                },
              },
            },
          },
        },
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                ["./lib/config.schema.json"] = "specs/*.stainless.yml",
              },
            },
          },
        },
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                  { "cn\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                },
              },
            },
          },
        },
      },
    },
  },
}
