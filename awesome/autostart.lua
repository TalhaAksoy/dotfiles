local awful = require("awful")
programs = {
    "nm-applet",
    "flameshot",
    "variety",
    "udiskie",
    "nitrogen --restore",
}

for i, program in ipairs(programs) do
    awful.spawn.with_shell("pgrep -u $USER -x " .. program .. " > /dev/null || (" .. program .. " &)")
end
