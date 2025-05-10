local gears = require("gears")
local beautiful = require("beautiful")
local get_actual_theme = require("utils.get_actual_theme")

local function setup_theme()
    local actual_theme = get_actual_theme()
    beautiful.init(gears.filesystem.get_configuration_dir() .. "themes/" .. actual_theme .. ".lua")
end

return setup_theme
