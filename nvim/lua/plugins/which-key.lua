return {
  {
    "folke/which-key.nvim",
    opts_extend = { "spec" },
    opts = {
      preset = "classic",
      default = {},
      spec = {
        mode = { "n" },
        { "<leader>t", group = "+terminal" },
        { "<leader>tm", "<cmd>Telescope toggleterm_manager<cr>", desc = "Terminal manager" },
        { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle terminals" },
      },
    },
  },
}
