local gears = require("gears")
local awful = require("awful")


local function _add_key_to_table(table, modkeys, key, action, release_action)
    return gears.table.join(table,
        awful.key(modkeys, key, action, release_action)
    )
end

return function(keys)
    local table = {}
    for i = 1, #keys do
        if keys[i].modkeys == nil then
            keys[i].modkeys = {}
        end
        table = _add_key_to_table(table, keys[i].modkeys, keys[i].key, keys[i].action, keys[i].release_action)
    end
    return table
end
