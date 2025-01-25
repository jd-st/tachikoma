return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        ocamllsp = {
          cmd = { "ocamllsp", "--fallback-read-dot-merlin" },
          filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" },
          root_dir = require("lspconfig.util").root_pattern(
            "*.opam",
            ".merlin",
            "dune-project",
            "dune-workspace",
            "esy.json"
          ),
          settings = {
            ocaml = {},
          },
        },
      },
    },
  },
}
