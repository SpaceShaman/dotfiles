local beautiful    = require("beautiful")
local theme_assets = require("beautiful.theme_assets")

local function change_client_color(c, color)
    c.border_color = color
    c.border_focus = color
end

local function change_keyboard_layer_highlight(layer)
    local color = beautiful.layer_highlight_normal
    if layer == 0 then
        color = beautiful.layer_highlight_normal
    elseif layer == 1 then
        color = beautiful.green
    elseif layer == 2 then
        color = beautiful.red
    end
    change_client_color(beautiful, color)
    -- update the border color only for the focused client
    local c = client.focus
    if c then
        change_client_color(c, color)
    end
end

return change_keyboard_layer_highlight
