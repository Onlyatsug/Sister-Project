require("conf")
require("Objects.player")

-- Managers
require("Managers.CameraManager")
require("Managers.InputManager")

function love.load()

end

function love.update(dt)
    Input:update(dt)
    Player:update(dt)
    Camera:update(dt)
    fps = love.timer.getFPS()
end

function love.draw()
    Camera:set()
    Player:draw()
    Camera:draw()
    Camera:unset()
    love.graphics.print("Hello World!", 20, 20)
    love.graphics.print(fps, WINDOW_WIDTH - 40, 20)
end