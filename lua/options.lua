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
set.shell = "powershell.exe"

local api = vim.api

function RemoveBg()
	api.nvim_set_hl(0, "Normal", { bg = "none" })
	api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

RemoveBg()

require("nvim-tree").setup {
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	renderer = {
		highlight_git = "all",
		highlight_opened_files = "all",
		highlight_modified = "all",
		highlight_hidden = "all",
		indent_markers = {
			enable = true,
		},
		root_folder_label = false,
		icons = {
			show = {
				git = true,
			},
		},
		add_trailing = true,
		indent_width = 4,
	},
	sort = {
		folders_first = true,
	},
	view = {
		number = true,
		relativenumber = true,
	},
}
