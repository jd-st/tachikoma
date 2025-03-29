-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- Python
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"

-- Ocaml setup
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ocaml", "ocaml.interface", "ocaml.source", "ocaml.menhir", "ocaml.ocamllex", "reason" },
  callback = function()
    vim.opt.tabstop = 2
    --vim.cmd("set tabstop=2")
  end,
})
vim.opt.rtp:prepend("/Users/jmsdnns/.opam/sandbox/share/ocp-indent/vim")
local opamshare = vim.fn.system("opam config var share"):gsub("\n$", "")
vim.opt.rtp:append(opamshare .. "/merlin/vim")
