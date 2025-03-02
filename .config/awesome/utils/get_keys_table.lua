local gears = require("gears")
local awful = require("awful")


local function _add_key_to_table(table, modkeys, key, action)
    return gears.table.join(table,
        awful.key(modkeys, key, action)
    )
end

return function(keys)
    local table = {}
    for i = 1, #keys do
        if keys[i].modkeys == nil then
            keys[i].modkeys = {}
        end
        table = _add_key_to_table(table, keys[i].modkeys, keys[i].key, keys[i].action)
    end
    return table
end
