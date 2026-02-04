local awful = require 'awful'

return function(direction, c)
  local screen_left = 'DVI-I-2-2'
  local screen_right = 'DVI-I-1-1'
  local screen_bottom = 'eDP-1'

  -- Load from config file
  local f = io.open(os.getenv 'HOME' .. '/.config/screen.conf', 'r')
  if f then
    local content = f:read '*all'
    f:close()
    screen_right = content:match 'SCREEN_PRIMARY="([^"]+)"' or screen_right
    screen_left = content:match 'SCREEN_LEFT="([^"]+)"' or screen_left
  end

  local current_screen = awful.screen.focused()
  for k, v in pairs(current_screen.outputs) do
    if direction == 'left' then
      if k == screen_right or k == screen_bottom then
        c:move_to_screen(screen_left)
      end
    elseif direction == 'right' then
      if k == screen_left or k == screen_bottom then
        c:move_to_screen(screen_right)
      end
    elseif direction == 'up' then
      if k == screen_bottom then
        c:move_to_screen(screen_right)
      end
    elseif direction == 'down' then
      if k == screen_right or k == screen_left then
        c:move_to_screen(screen_bottom)
      end
    end
  end
end
