return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = true
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
	config = function()
		local function is_neotree_open()
			for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
				if vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(win), "ft") == "neo-tree" then
					return require("bufferline.api").set_offset(30, "NeoTree")
				end
			end
			return require("bufferline.api").set_offset(0)
		end

		vim.api.nvim_create_autocmd({ "BufWinEnter", "BufWipeout" }, {
			pattern = "*",
			callback = function()
				is_neotree_open()
			end,
		})
	end,
}
