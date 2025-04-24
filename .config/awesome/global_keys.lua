local awful = require("awful")
local beautiful = require("beautiful")
local brightness_widget = require("widgets.brightness-widget.brightness")
local get_keys_table = require("utils.get_keys_table")
local bind_key_numbers_to_tags = require("utils.bind_key_numbers_to_tags")
local change_keyboard_layer_highlight = require("utils.change_keyboard_layer_highlight")

local MODKEY = "Mod4"
local ALTKEY = "Mod1"
local TERMINAL = "x-terminal-emulator"

local global_keys = {
    -- layer
    {
        key = "0xff27",
        action = function()
            change_keyboard_layer_highlight(0)
        end
    },
    {
        key = "0xff22",
        action = function()
            change_keyboard_layer_highlight(1)
        end
    },
    {
        key = "0xff31",
        action = function()
            change_keyboard_layer_highlight(2)
        end
    },
    -- awesome
    {
        modkeys = { MODKEY },
        key = "m",
        action = function() mymainmenu:show() end,
    },
    {
        modkeys = { MODKEY },
        key = "Escape",
        action = function()
            for s in screen do
                s.mywibox.visible = not s.mywibox.visible
            end
        end,
    },
    {
        modkeys = { MODKEY, "Control" },
        key = "r",
        action = awesome.restart,
    },
    {
        modkeys = { MODKEY, "Shift" },
        key = "q",
        action = awesome.quit,
    },
    -- tag
    {
        modkeys = { MODKEY },
        key = "s",
        action = awful.tag.viewprev,
    },
    {
        modkeys = { MODKEY },
        key = "d",
        action = awful.tag.viewnext,
    },
    -- client
    {
        modkeys = { MODKEY },
        key = "f",
        action = function()
            awful.client.focus.byidx(1)
        end,
    },
    {
        modkeys = { MODKEY },
        key = "a",
        action = function()
            awful.client.focus.byidx(-1)
        end,
    },
    -- screen
    {
        modkeys = { MODKEY },
        key = ";",
        action = function() awful.screen.focus_bydirection("right") end,
    },
    {
        modkeys = { MODKEY },
        key = "j",
        action = function() awful.screen.focus_bydirection("left") end,
    },
    {
        modkeys = { MODKEY },
        key = "l",
        action = function() awful.screen.focus_bydirection("up") end,
    },
    {
        modkeys = { MODKEY },
        key = "k",
        action = function() awful.screen.focus_bydirection("down") end,
    },
    -- layout
    {
        modkeys = { MODKEY, "Control" },
        key = ";",
        action = function() awful.tag.incmwfact(0.05) end,
    },
    {
        modkeys = { MODKEY, "Control" },
        key = "j",
        action = function() awful.tag.incmwfact(-0.05) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = ";",
        action = function() awful.tag.incncol(1, nil, true) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = "j",
        action = function() awful.tag.incncol(-1, nil, true) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = "l",
        action = function() awful.tag.incnmaster(1, nil, true) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = "k",
        action = function() awful.tag.incnmaster(-1, nil, true) end,
    },
    {
        modkeys = { MODKEY },
        key = "space",
        action = function() awful.layout.inc(1) end,
    },
    {
        modkeys = { MODKEY, "Shift" },
        key = "space",
        action = function() awful.layout.inc(-1) end,
    },
    {
        modkeys = { MODKEY },
        key = "t",
        action = function()
            awful.spawn("bash /home/ton618/.scripts/theme.sh")
        end,
    },
    -- launch
    {
        modkeys = { MODKEY },
        key = "Return",
        action = function() awful.spawn(TERMINAL) end,
    },
    {
        modkeys = { MODKEY },
        key = "r",
        action = function() awful.spawn("rofi -show drun") end,
    },
    -- applicaons
    {
        modkeys = { MODKEY },
        key = "b",
        action = function()
            awful.spawn("firefox")
        end,
    },
    {
        modkeys = { MODKEY },
        key = "c",
        action = function()
            awful.spawn("code")
        end,
    },
    {
        modkeys = { MODKEY },
        key = "o",
        action = function()
            awful.spawn("obsidian")
        end,
    },
    -- brightns",
    {
        key = "XF86MonBrightnessUp",
        action = function()
            brightness_widget:inc()
        end,
    },
    {
        key = "XF86MonBrightnessDown",
        action = function()
            brightness_widget:dec()
        end,
    },
    -- media
    {
        key = "XF86AudioRaiseVolume",
        action = function()
            awful.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%")
        end,
    },
    {
        key = "XF86AudioLowerVolume",
        action = function()
            awful.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%")
        end,
    },
    {
        key = "XF86AudioMute",
        action = function()
            awful.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle")
        end,
    },
    {
        key = "XF86AudioPlay",
        action = function()
            awful.spawn("playerctl play-pause")
        end,
    },
    {
        key = "XF86AudioNext",
        action = function()
            awful.spawn("playerctl next")
        end,
    },
    {
        key = "XF86AudioPrev",
        action = function()
            awful.spawn("playerctl previous")
        end,
    },
    {
        key = "XF86AudioStop",
        action = function()
            awful.spawn("playerctl stop")
        end,
    },
    -- system
    {
        key = "Print",
        action = function()
            awful.spawn("bash /home/ton618/.scripts/screenshot.sh")
        end,
    },
    {
        modkeys = { "Shift" },
        key = "Print",
        action = function()
            awful.spawn("bash /home/ton618/.scripts/screenshot.sh --full")
        end,
    }
}

return bind_key_numbers_to_tags(get_keys_table(global_keys), MODKEY)
