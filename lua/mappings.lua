require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Truzen
map("n", "<leader>ta", "TZAtaraxis", { desc = "Truzen Ataraxis" })
map("n", "<leader>tm", "TZMinimalist", { desc = "Truzen Minimal" })
map("n", "<leader>tf", "TZFocus", { desc = "Truzen Focus" })

-- React Extract
local react_extract = require "react-extract"

map("v", "<leader>re", function()
  react_extract.extract_to_new_file()
end
, { desc = "Extract React Component (New File)" })
map("v", "<leader>rc", function()
  react_extract.extract_to_current_file()
end
, { desc = "Extract React Component (Current File)" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
