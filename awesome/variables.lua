local awful = require("awful")
local utils = require("utils")

terminal = "xfce4-terminal"
browser1 = "chromium"
browser2 = "firefox"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor
file1 = "thunar"
file2 = terminal .. " -e " .. "ranger"
music = terminal .. " -e ncmpcpp"

thermal_zone = 1

lockscreen = "betterlockscreen -l dimblur"

awful.layout.layouts = {
	awful.layout.suit.tile,
	awful.layout.suit.tile.left,
	awful.layout.suit.tile.bottom,
	awful.layout.suit.corner.nw,
	utils.centerwork,
	awful.layout.suit.floating,
}

awful.util.tagnames = {
	{
		{ name = "1" },
		{ name = "2" },
		{ name = "3" },
		{ name = "4" },
		{ name = "5" },
		{ name = "6" },
		{ name = "7" },
		{ name = "8" },
		{ name = "9" },
		{ name = "10" },
	},
	{
		{ name = "1", sel = true },
		{ name = "2" },
		{ name = "3" },
		{ name = "4" },
		{ name = "5" },
		{ name = "6" },
		{ name = "7" },
		{ name = "8" },
		{ name = "9" },
		{ name = "10" },
	},
}
