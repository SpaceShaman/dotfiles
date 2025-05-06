local beautiful = require("beautiful")

local function change_keyboard_layer_highlight(layer)
    local color = beautiful.layer_highlight
    if layer == 0 then
        color = beautiful.layer_highlight_normal
    elseif layer == 1 then
        color = beautiful.green
    elseif layer == 2 then
        color = beautiful.red
    end
    beautiful.border_focus = color
    -- update the border color only for the focused client
    local c = client.focus
    if c then
        c.border_color = color
    end
end

return change_keyboard_layer_highlight
