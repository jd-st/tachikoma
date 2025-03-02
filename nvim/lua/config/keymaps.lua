-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<c-/>", "gcc", { remap = true, desc = "Toggle comment for line" })
vim.keymap.set("v", "<c-/>", "gc", { remap = true, desc = "Toggle comment for selection" })
