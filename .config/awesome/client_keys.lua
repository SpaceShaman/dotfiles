local awful = require("awful")
local move_to_screen_by_direction = require("utils/move_to_screen_by_direction")
local get_keys_table = require("utils.get_keys_table")

local MODKEY = "Mod4"

local client_keys = {
    {
        modkeys = { MODKEY, },
        key = "q",
        action = function(c) c:kill() end,
    },
    {
        modkeys = { MODKEY, "Control" },
        key = "space",
        action = awful.client.floating.toggle,
    },
    -- Move client to screen
    {
        modkeys = { MODKEY, "Shift" },
        key = "j",
        action = function(c)
            move_to_screen_by_direction("left", c)
        end,
    },
    {
        modkeys = { MODKEY, "Shift" },
        key = ";",
        action = function(c)
            move_to_screen_by_direction("right", c)
        end,
    },
    {
        modkeys = { MODKEY, "Shift" },
        key = "l",
        action = function(c)
            move_to_screen_by_direction("up", c)
        end,
    },
    {
        modkeys = { MODKEY, "Shift" },
        key = "k",
        action = function(c)
            move_to_screen_by_direction("down", c)
        end,
    },
    -- Swap clients
    {
        modkeys = { MODKEY, "Shift" },
        key = "a",
        action = function() awful.client.swap.byidx(1) end,
    },
    {
        modkeys = { MODKEY, "Shift" },
        key = "f",
        action = function() awful.client.swap.byidx(-1) end,
    },
    {
        modkeys = { MODKEY, },
        key = "Tab",
        action = function()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end,
    },
    {
        modkeys = { MODKEY, "Shift" },
        key = "m",
        action = function(c)
            c.maximized = false
            c.maximized_vertical = false
            c.maximized_horizontal = false
            c:raise()
        end,
    },
}

return get_keys_table(client_keys)
