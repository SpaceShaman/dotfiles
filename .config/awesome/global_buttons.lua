local awful = require("awful")
local get_buttons_table = require("utils.get_buttons_table")

local MODKEY = "Mod4"

local global_buttons = {
    {
        key = 3,
        action = function() mymainmenu:toggle() end
    },
    {
        key = 4,
        action = awful.tag.viewnext
    },
    {
        key = 5,
        action = awful.tag.viewprev
    }
}

return get_buttons_table(global_buttons)
