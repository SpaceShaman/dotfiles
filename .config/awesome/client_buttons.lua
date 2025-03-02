local awful = require("awful")
local get_buttons_table = require("utils.get_buttons_table")

local MODKEY = "Mod4"

local client_buttons = {
    {
        key = 1,
        action = function(c)
            c:emit_signal("request::activate", "mouse_click", { raise = true })
        end
    },
    {
        modkeys = { MODKEY },
        key = 1,
        action = function(c)
            c:emit_signal("request::activate", "mouse_click", { raise = true })
            awful.mouse.client.move(c)
        end
    },
    {
        modkeys = { MODKEY },
        key = 3,
        action = function(c)
            c:emit_signal("request::activate", "mouse_click", { raise = true })
            awful.mouse.client.resize(c)
        end
    }
}

return get_buttons_table(client_buttons)
