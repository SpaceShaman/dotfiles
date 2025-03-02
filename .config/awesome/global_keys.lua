local awful = require("awful")
local brightness_widget = require("widgets.brightness-widget.brightness")
local get_keys_table = require("utils.get_keys_table")
local bind_key_numbers_to_tags = require("utils.bind_key_numbers_to_tags")

local MODKEY = "Mod4"
local ALTKEY = "Mod1"
local TERMINAL = "x-terminal-emulator"

local global_keys = {
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
        key = "w",
        action = awful.tag.viewnext,
    },
    -- client
    {
        modkeys = { MODKEY },
        key = "d",
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
        key = "Right",
        action = function() awful.screen.focus_bydirection("right") end,
    },
    {
        modkeys = { MODKEY },
        key = "Left",
        action = function() awful.screen.focus_bydirection("left") end,
    },
    {
        modkeys = { MODKEY },
        key = "Up",
        action = function() awful.screen.focus_bydirection("up") end,
    },
    {
        modkeys = { MODKEY },
        key = "Down",
        action = function() awful.screen.focus_bydirection("down") end,
    },
    -- layout
    {
        modkeys = { MODKEY, "Control" },
        key = "Right",
        action = function() awful.tag.incmwfact(0.05) end,
    },
    {
        modkeys = { MODKEY, "Control" },
        key = "Left",
        action = function() awful.tag.incmwfact(-0.05) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = "Right",
        action = function() awful.tag.incncol(1, nil, true) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = "Left",
        action = function() awful.tag.incncol(-1, nil, true) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = "Up",
        action = function() awful.tag.incnmaster(1, nil, true) end,
    },
    {
        modkeys = { MODKEY, ALTKEY },
        key = "Down",
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
        key = "f",
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
    },
    -- numpad
    {
        key = "KP_End",
        action = function()
            awful.spawn("firefox")
        end,
    },
    {
        key = "KP_Down",
        action = function()
            awful.spawn("code")
        end,
    },
    {
        key = "KP_Next",
        action = function()
            awful.spawn("obsidian")
        end,
    },
    {
        key = "KP_Left",
        action = function()
            awful.spawn("spotify")
        end,
    },
    {
        key = "KP_Begin",
        action = function()
            awful.spawn(
                "/home/ton618/Applications/beeper-3.110.1x86_64_fa7f4ddd355e446c77c6e1b93f8a47ae.AppImage")
        end,
    },
    {
        key = "KP_Home",
        action = function()
            awful.spawn("thunderbird")
        end,
    },
    {
        key = "KP_Up",
        action = function()
            awful.spawn("teams-for-linux")
        end,
    },
    {
        key = "KP_Prior",
        action = function()
            awful.spawn("code /home/ton618/Dev/quadra/core")
        end,
    }
}

return bind_key_numbers_to_tags(get_keys_table(global_keys), MODKEY)
