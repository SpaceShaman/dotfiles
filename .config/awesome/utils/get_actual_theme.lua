local get_actual_theme = function()
    -- get actual theme name from ~/.config/theme file
    local theme_path = os.getenv("HOME") .. "/.config/theme"
    local actual_theme_file = io.open(theme_path, "r")
    if actual_theme_file then
        local actual_theme = actual_theme_file:read("*a"):gsub("%s+$", "")
        actual_theme_file:close()
        return actual_theme
    end
end

return get_actual_theme
