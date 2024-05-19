require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Folke Zen-mode 
map("n", "<leader>tz", ":ZenMode<CR>", {desc = "Zen mode"})
-- map("n", "<leader>tm", ":TZMinimalist<CR>")
-- map("n", "<leader>tf", ":TZFocus<CR>")
-- --

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
