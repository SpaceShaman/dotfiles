local gears = require("gears")
local beautiful = require("beautiful")

local function setup_theme()
    -- get actual theme name from ~/.config/theme file
    local theme_path = os.getenv("HOME") .. "/.config/theme"
    local actual_theme_file = io.open(theme_path, "r")
    if actual_theme_file then
        local actual_theme = actual_theme_file:read("*a"):gsub("%s+$", "")
        actual_theme_file:close()
        beautiful.init(gears.filesystem.get_configuration_dir() .. "themes/" .. actual_theme .. ".lua")
    end
end

return setup_theme
