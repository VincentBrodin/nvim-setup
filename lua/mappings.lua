require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- new terminals
map("n", "<leader>h", function()
	require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map("n", "<leader>v", function()
	require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map("t", "<C-h>", "<C-\\><C-N>", { desc = "Escape terminal" })

-- toggleable
map({ "n", "t" }, "<A-v>", "<cmd>echo 'NO NO'<CR>", {})

map({ "n", "t" }, "<A-h>", "<cmd>echo 'NO NO'<CR>", {})
map("n", "<C-n>", "<cmd>echo 'NO NO'<CR>", {})
