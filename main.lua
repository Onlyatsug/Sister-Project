require("conf")
require("Objects.player")
require("Managers.InputManager")

function love.load()

end

function love.update(dt)
    Input:update(dt)
    Player:update(dt)
    fps = love.timer.getFPS()
end

function love.draw()
    Player:draw() 
    love.graphics.print("Hello World!", 20, 20)
    love.graphics.print(fps, WINDOW_WIDTH - 40, 20)
end