require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.number = true
set.relativenumber = true
set.wrap = false

local api = vim.api

function RemoveBg()
  api.nvim_set_hl(0, "Normal", { bg = "none" })
  api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

RemoveBg()
