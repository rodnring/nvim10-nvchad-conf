require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Truzen
map("n", "<leader>ta", "truzen ataraxis", { desc = "TZAtaraxis" })
map("n", "<leader>tm", "truzen minimal", { desc = "TZMinimalist" })
map("n", "<leader>tf", "truzen focus", { desc = "TZFocus" })

-- React Extract
local react_extract = require "react-extract"
local to_new_file = function()
  react_extract.extract_to_new_file()
end

local to_current_file = function()
  react_extract.extract_to_current_file()
end

map("v", "<leader>re", to_new_file(), { desc = "Extract React Component (New File)" })
map("v", "<leader>rc", to_current_file(), { desc = "Extract React Component (Current File)" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
