return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- This turns off hints by default, but they're still available
      -- by hitting SPC u h
      inlay_hints = { enabled = false },
      servers = {
        ocamllsp = {
          cmd = { "ocamllsp", "--fallback-read-dot-merlin" },
          filetypes = { "ocaml", "ocaml.interface" },
          root_dir = require("lspconfig.util").root_pattern(".merlin", ".git"),
          settings = {
            ocaml = {},
          },
          env = {
            PATH = vim.fn.expand("$HOME") .. "/.opam/sandbox/bin:" .. vim.env.PATH,
          },
        },
      },
    },
  },
}
